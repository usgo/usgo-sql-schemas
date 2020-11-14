## Short Description

Schema's for the USGO Databases

## AGAGD Schemas

| Description                 | File(s) |
| --------------------------- | ------- |
| AGAGD master schema with zero dates removed | schema.sql |

## AGAGD Legacy Schemas
| Description                 | File(s) |
| --------------------------- | ------- |
| AGAGD schema create statements | legacy/usgo-agagd-scheme-20200913.sql |
| AGAGD schema with zero dates removed | legacy/usgo-agagd-scheme-no-zero-dates-20200913.sql |

## AGAGD Updates

| Description | Files(s) | Updated on schema.sql | Updated on Prodution | Updated on Test |
| ----------- | -------- | ------------------------ | -------------------- | --------------- |
| AGAGD update for the ratings table | 20201009_update_ratings_table.sql | 2020-10-09 | 2020-10-27 | 2020-10-12 |
| AGAGD update for the members_view | 20201025_replace_member_view.sql | 2020-10-25 | 2020-11-14 | 2020-11-14 |

## Method 
### Provided by Anna Wiggins via Slack

1) When we need to do a schema change, write a sql file that produces the changes we want. 
2) Put that in an updates directory, prefixed with the date. e.g. `20201005-drop-all-tables.sql`
3) Spin up a test database with the current `schema.sql` loaded in, and run the update file against it.
4) Dump that database schema back into `schema.sql`.

## Notes
* Current master `schema.sql` is based off `legacy/usgo-agagd-scheme-no-zero-dates-20200913.sql`. The prod will continue to use zero dates which will be removed later.
