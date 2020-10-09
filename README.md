## Short Description

Schema's for the USGO Databases

## AGAGD Schemas

| Description                 | File(s) |
| --------------------------- | ------- |
| AGAGD schema create statements | usgo-agagd-scheme-20200913.sql |
| AGAGD schema with zero dates removed | usgo-agagd-scheme-no-zero-dates-20200913.sql |
| AGAGD master schema with zero dates removed | schema.sql |

## Updates

| Description | Files(s) | Applied to Master Schema | Applied to Prodution | Applied to Test |
| ----------- | -------- | ------------------------ | -------------------- | --------------- |
| AGAGD update for the ratings table | 20201006_update_ratings_table.sql | yes | no | no |

### Last Updated: Oct. 9, 2020

## Method 
### Provided by Anna Wiggins via Slack

1) Dump the current prod schema into a simply named `schema.sql1`. This will become the "canonical" schema file for *dev* work.
2) When we need to do a schema change, write a sql file that produces the changes we want. 
3) Put that in an updates directory, prefixed with the date. e.g. `20201005-drop-all-tables.sql`
4) Spin up a test database with the current `schema.sql` loaded in, and run the update file against it.
5) Dump that database schema back into `schema.sql`.

## Notes
* Current master `schema.sql` is based off `usgo-agagd-scheme-no-zero-dates-20200913.sql`. The prod will continue to use zero dates which will be removed later.
