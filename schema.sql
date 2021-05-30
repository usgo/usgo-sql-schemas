CREATE TABLE `authteam` (
    `id` INT(4) NOT NULL AUTO_INCREMENT,
    `teamname` VARCHAR(25) NOT NULL DEFAULT '',
    `teamlead` VARCHAR(25) NOT NULL DEFAULT '',
    `status` VARCHAR(10) NOT NULL DEFAULT '',
    PRIMARY KEY (`id`),
    KEY `teamname` (`teamname` , `teamlead`)
)  ENGINE=MYISAM AUTO_INCREMENT=10 DEFAULT CHARSET=LATIN1;

CREATE TABLE `authuser` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `uname` VARCHAR(25) NOT NULL DEFAULT '',
    `passwd` VARCHAR(32) NOT NULL DEFAULT '',
    `team` VARCHAR(25) NOT NULL DEFAULT '',
    `level` INT(4) NOT NULL DEFAULT '0',
    `status` VARCHAR(10) NOT NULL DEFAULT '',
    `lastlogin` DATETIME DEFAULT NULL,
    `logincount` INT(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
)  ENGINE=MYISAM AUTO_INCREMENT=18 DEFAULT CHARSET=LATIN1;

CREATE TABLE `biography` (
    `Pin_Player` INT(8) NOT NULL DEFAULT '0',
    `Bio_Type` CHAR(1) NOT NULL DEFAULT '' COMMENT 'H=Html; T=txt',
    `Biography` MEDIUMTEXT,
    `photopath` CHAR(255) DEFAULT '',
    `Elab_Date` DATETIME NOT NULL,
    PRIMARY KEY (`Pin_Player`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `changelog` (
    `log_id` INT(11) NOT NULL AUTO_INCREMENT,
    `log_date` DATETIME NOT NULL,
    `model` VARCHAR(255) NOT NULL,
    `record` VARCHAR(255) NOT NULL,
    `record_id` VARCHAR(255) NOT NULL,
    `user` VARCHAR(255) DEFAULT NULL,
    `user_id` INT(11) DEFAULT NULL,
    `summary` VARCHAR(255) DEFAULT NULL,
    `changes` BLOB,
    PRIMARY KEY (`log_id`),
    KEY `log_date` (`log_date`),
    KEY `model` (`model` , `record_id` , `log_date`)
)  ENGINE=MYISAM AUTO_INCREMENT=533393 DEFAULT CHARSET=LATIN1;

CREATE TABLE `chapter` (
    `Chapter_Code` CHAR(4)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL,
    `Chapter_Descr` VARCHAR(50)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL,
    PRIMARY KEY (`Chapter_Code`),
    KEY `Ind_Country` (`Chapter_Descr`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `chapters` (
    `member_id` INT(11) NOT NULL,
    `name` VARCHAR(255) DEFAULT NULL,
    `legacy_status` CHAR(1) DEFAULT NULL,
    `code` CHAR(4) DEFAULT NULL,
    `contact` VARCHAR(255) DEFAULT NULL,
    `rep_id` INT(11) DEFAULT NULL,
    `rep_id2` INT(11) DEFAULT NULL,
    `rep_id3` INT(11) DEFAULT NULL,
    `url` VARCHAR(255) DEFAULT NULL,
    `meeting_city` VARCHAR(255) DEFAULT NULL,
    `contact_html` TEXT,
    `contact_text` TEXT,
    `meeting_text` TEXT,
    `size` VARCHAR(255) DEFAULT NULL,
    `events` TEXT,
    `comments` TEXT,
    `fees` VARCHAR(255) DEFAULT NULL,
    `display` SMALLINT(1) NOT NULL DEFAULT '1',
    `faculty_advisor` VARCHAR(50) DEFAULT NULL,
    `faculty_advisor_email` VARCHAR(75) DEFAULT NULL,
    PRIMARY KEY (`member_id`),
    KEY `code` (`code`),
    KEY `name` (`name`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `comments_authors` (
    `Id` VARCHAR(12) NOT NULL DEFAULT '',
    `Last_Name` VARCHAR(50) NOT NULL DEFAULT '',
    `First_Name` VARCHAR(50) NOT NULL DEFAULT '',
    `Country` CHAR(3) NOT NULL DEFAULT '',
    `PIN` INT(8) NOT NULL DEFAULT '0',
    PRIMARY KEY (`Id`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `country` (
    `Country_Code` CHAR(2)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Country_Descr` VARCHAR(50)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Country_Flag` VARCHAR(4)CHARACTER SET LATIN1 COLLATE LATIN1_BIN DEFAULT NULL,
    PRIMARY KEY (`Country_Code`),
    KEY `Ind_Country` (`Country_Descr`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `games` (
    `Game_ID` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `Tournament_Code` VARCHAR(20)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '0',
    `Game_Date` DATE NOT NULL,
    `Round` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0',
    `Pin_Player_1` INT(8) UNSIGNED NOT NULL DEFAULT '0',
    `Color_1` CHAR(1)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '_',
    `Rank_1` CHAR(3)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Pin_Player_2` INT(8) UNSIGNED NOT NULL DEFAULT '0',
    `Color_2` CHAR(1)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '_',
    `Rank_2` CHAR(3)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Handicap` TINYINT(2) UNSIGNED NOT NULL DEFAULT '0',
    `Komi` TINYINT(2) NOT NULL DEFAULT '0',
    `Result` CHAR(1)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '_',
    `Sgf_Code` VARCHAR(26)CHARACTER SET LATIN1 COLLATE LATIN1_BIN DEFAULT NULL,
    `Online` TINYINT(1) DEFAULT '0',
    `Exclude` TINYINT(1) DEFAULT '0',
    `Rated` TINYINT(1) DEFAULT '0',
    `Elab_Date` DATE NOT NULL,
    UNIQUE KEY `Game_ID` (`Game_ID`)
)  ENGINE=MYISAM AUTO_INCREMENT=1263816 DEFAULT CHARSET=LATIN1;

CREATE TABLE `members` (
    `member_id` INT(11) NOT NULL AUTO_INCREMENT,
    `legacy_updated` DATE DEFAULT NULL,
    `legacy_web_updated` DATE DEFAULT NULL,
    `legacy_new` SMALLINT(6) NOT NULL DEFAULT '0',
    `legacy_id` INT(11) DEFAULT NULL,
    `legacy_citizen_of` VARCHAR(100) DEFAULT NULL,
    `legacy_source` VARCHAR(5) DEFAULT NULL,
    `full_name` VARCHAR(255) DEFAULT NULL,
    `given_names` VARCHAR(255) DEFAULT NULL,
    `family_name` VARCHAR(255) DEFAULT NULL,
    `renewal_due` DATE DEFAULT NULL,
    `join_date` DATE DEFAULT NULL,
    `dob` DATE DEFAULT NULL,
    `status` ENUM('accepted', 'archived', 'pending') DEFAULT NULL,
    `type` VARCHAR(255) DEFAULT NULL,
    `tags` VARCHAR(255) DEFAULT NULL,
    `address1` VARCHAR(255) DEFAULT NULL,
    `address2` VARCHAR(255) DEFAULT NULL,
    `city` VARCHAR(255) DEFAULT NULL,
    `state` VARCHAR(255) DEFAULT NULL,
    `zip` VARCHAR(255) DEFAULT NULL,
    `region` VARCHAR(255) DEFAULT NULL,
    `country` VARCHAR(255) NOT NULL DEFAULT 'USA',
    `phone` VARCHAR(255) DEFAULT NULL,
    `phone2` VARCHAR(255) DEFAULT NULL,
    `cell` VARCHAR(255) DEFAULT NULL,
    `email` VARCHAR(255) DEFAULT NULL,
    `email2` VARCHAR(255) DEFAULT NULL,
    `chapter` VARCHAR(100) DEFAULT NULL,
    `chapter_id` INT(11) DEFAULT NULL,
    `occupation` VARCHAR(100) DEFAULT NULL,
    `citizen` SMALLINT(6) NOT NULL DEFAULT '0',
    `password_plaintext` VARCHAR(255) DEFAULT NULL,
    `secret_q` VARCHAR(255) DEFAULT NULL,
    `secret_a` VARCHAR(255) DEFAULT NULL,
    `last_login` DATETIME DEFAULT NULL,
    `reset_token` VARCHAR(255) DEFAULT NULL,
    `reset_token_expires` DATETIME DEFAULT NULL,
    `password` VARCHAR(255) DEFAULT NULL,
    `notes` TEXT,
    `dues_last_paid` DATETIME DEFAULT NULL,
    `last_changed` DATETIME DEFAULT NULL,
    `gender` VARCHAR(255) DEFAULT NULL,
    `citizen_type` VARCHAR(255) DEFAULT NULL,
    `non_citizen_country` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`member_id`),
    KEY `type` (`type`),
    KEY `status` (`status`),
    KEY `region` (`region`),
    FULLTEXT KEY `tags` ( `tags` ),
    FULLTEXT KEY `full_name` ( `full_name` )
)  ENGINE=MYISAM AUTO_INCREMENT=25299 DEFAULT CHARSET=LATIN1;

CREATE TABLE `membership` (
    `MType` VARCHAR(8)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Membership_Type` CHAR(35)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    PRIMARY KEY (`MType`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `members_payments` (
    `payment_id` INT(11) NOT NULL AUTO_INCREMENT,
    `member_id` INT(11) NOT NULL,
    `years` INT(11) DEFAULT NULL,
    `amount` DECIMAL(7 , 2 ) DEFAULT NULL,
    `legacy_payment_type` VARCHAR(30) DEFAULT NULL,
    `payment_method` VARCHAR(50) DEFAULT NULL,
    `payment_date` DATETIME DEFAULT NULL,
    `note` TEXT,
    `via` VARCHAR(30) DEFAULT NULL,
    `processed_by` INT(11) DEFAULT NULL,
    `txn_id` VARCHAR(255) DEFAULT NULL,
    `type` VARCHAR(255) DEFAULT NULL,
    `promo` VARCHAR(255) DEFAULT NULL,
    `payment_type` VARCHAR(50) DEFAULT NULL,
    `legacy_payment_method` VARCHAR(30) DEFAULT NULL,
    PRIMARY KEY (`payment_id`),
    KEY `member_id` (`member_id`)
)  ENGINE=MYISAM AUTO_INCREMENT=371888 DEFAULT CHARSET=LATIN1;

CREATE TABLE `members_regions` (
    `region_id` INT(11) NOT NULL AUTO_INCREMENT,
    `region` VARCHAR(255) DEFAULT NULL,
    `states` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`region_id`)
)  ENGINE=MYISAM AUTO_INCREMENT=10 DEFAULT CHARSET=LATIN1;

CREATE TABLE `members_tags` (
    `tag` VARCHAR(255) NOT NULL,
    `description` TEXT,
    PRIMARY KEY (`tag`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `notifications` (
    `notification_id` INT(11) NOT NULL AUTO_INCREMENT,
    `sender` VARCHAR(255) DEFAULT NULL,
    `recipients` TEXT,
    `recipient_count` INT(11) DEFAULT NULL,
    `subject` VARCHAR(255) DEFAULT NULL,
    `body` TEXT,
    `attachments` TEXT,
    `html` SMALLINT(6) NOT NULL DEFAULT '0',
    `sent` DATETIME DEFAULT NULL,
    `success` SMALLINT(6) NOT NULL DEFAULT '0',
    PRIMARY KEY (`notification_id`),
    KEY `sent` (`sent`)
)  ENGINE=MYISAM AUTO_INCREMENT=77793 DEFAULT CHARSET=LATIN1;

CREATE TABLE `page_links` (
    `page_type` VARCHAR(10) NOT NULL DEFAULT '',
    `page_key` VARCHAR(10) NOT NULL DEFAULT '',
    `pos` INT(11) NOT NULL DEFAULT '0',
    `link` VARCHAR(100) NOT NULL DEFAULT '',
    `comments` TEXT NOT NULL,
    `image` BLOB NOT NULL,
    PRIMARY KEY (`page_type` , `page_key` , `pos`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `pending_payments` (
    `member_id` INT(11) NOT NULL,
    `type` VARCHAR(255) DEFAULT NULL,
    `years` INT(11) DEFAULT NULL,
    `amount` DECIMAL(7 , 2 ) DEFAULT NULL,
    `promo` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`member_id`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `pin_changes` (
    `Old_Pin_Player` INT(8) NOT NULL DEFAULT '0',
    `New_Pin_Player` INT(8) NOT NULL DEFAULT '0',
    PRIMARY KEY (`Old_Pin_Player`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `players` (
    `Pin_Player` INT(8) UNSIGNED NOT NULL,
    `EGDID` INT(8) UNSIGNED NOT NULL DEFAULT '0',
    `Last_Name` VARCHAR(30)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Name` VARCHAR(30)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Country_Code` CHAR(2)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '--',
    `State_Code` CHAR(2)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '--',
    `Club` CHAR(4)CHARACTER SET LATIN1 COLLATE LATIN1_BIN DEFAULT 'none',
    `Last_Rank` CHAR(3)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `Rating` FLOAT(7 , 5 ) DEFAULT NULL,
    `Sigma` FLOAT(6 , 5 ) DEFAULT NULL,
    `Tot_Tournaments` INT(4) UNSIGNED DEFAULT '0',
    `Tot_Games` INT(5) UNSIGNED DEFAULT '0',
    `Last_Appearance` VARCHAR(20)CHARACTER SET LATIN1 COLLATE LATIN1_BIN DEFAULT 'null_tournament',
    `Elab_Date` DATE NOT NULL,
    `MType` VARCHAR(8)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `MExp` DATE NOT NULL DEFAULT '1900-01-01',
    PRIMARY KEY (`Pin_Player`),
    KEY `Ind_Players` (`Country_Code` , `Club` , `Last_Name` , `Name`),
    KEY `Reverse_Ind` (`Last_Name` , `Name` , `Pin_Player`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `player_variations` (
    `Pin_Player` INT(8) UNSIGNED NOT NULL DEFAULT '0',
    `Field` VARCHAR(30)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL,
    `Old` VARCHAR(30)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL,
    `New` VARCHAR(30)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `promotions` (
    `promo` VARCHAR(255) DEFAULT NULL,
    `description` VARCHAR(255) DEFAULT NULL,
    `generated_by` INT(11) DEFAULT NULL,
    `used` SMALLINT(6) NOT NULL DEFAULT '0',
    `generated_for` INT(11) DEFAULT NULL
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `quick_queries` (
    `query_id` INT(11) NOT NULL AUTO_INCREMENT,
    `query_name` VARCHAR(255) DEFAULT NULL,
    `query` VARCHAR(255) DEFAULT NULL,
    `member_group` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`query_id`)
)  ENGINE=MYISAM AUTO_INCREMENT=36 DEFAULT CHARSET=LATIN1;

CREATE TABLE `ratings` (
    `Pin_Player` INT(8) UNSIGNED DEFAULT NULL,
    `Rating` FLOAT(7 , 5 ) DEFAULT NULL,
    `Sigma` FLOAT(6 , 5 ) DEFAULT NULL,
    `Elab_Date` DATE DEFAULT NULL,
    `Tournament_Code` VARCHAR(65) DEFAULT NULL,
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `settings` (
    `name` VARCHAR(255) NOT NULL,
    `val` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`name`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `sgf` (
    `Comments_Author` VARCHAR(20) DEFAULT NULL,
    `Sgf_Code` VARCHAR(26) NOT NULL DEFAULT '0',
    `Sgf_File` BLOB NOT NULL,
    `Elab_Date` DATETIME NOT NULL,
    UNIQUE KEY `Tournament_Code` (`Sgf_Code`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `state` (
    `State_Code` CHAR(2)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `State_Name` CHAR(35)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    PRIMARY KEY (`State_Code`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `status` (
    `Status_ID` INT(11) NOT NULL AUTO_INCREMENT,
    `Message` VARCHAR(80) DEFAULT NULL,
    PRIMARY KEY (`Status_ID`)
)  ENGINE=MYISAM AUTO_INCREMENT=5 DEFAULT CHARSET=LATIN1;

CREATE TABLE `sys_reg` (
    `Flag_Update` INT(1) NOT NULL DEFAULT '0' COMMENT 'Se 0 fÃ  proseguire .. se 1 avvisa di upgrade in corso ',
    `Warning_Message` VARCHAR(255) NOT NULL DEFAULT '',
    `Update_date` VARCHAR(20) NOT NULL
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `test` (
    `id` INT(11) DEFAULT NULL,
    `entrydate` DATE DEFAULT NULL
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `tournaments` (
    `Tournament_Code` VARCHAR(20)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '0',
    `Tournament_Descr` VARCHAR(80)CHARACTER SET LATIN1 COLLATE LATIN1_BIN DEFAULT '',
    `Tournament_Date` DATE NOT NULL,
    `City` VARCHAR(30)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '',
    `State_Code` CHAR(2) DEFAULT NULL,
    `Country_Code` CHAR(2)CHARACTER SET LATIN1 COLLATE LATIN1_BIN NOT NULL DEFAULT '--',
    `Rounds` SMALLINT(2) NOT NULL DEFAULT '0',
    `Total_Players` SMALLINT(3) UNSIGNED DEFAULT '0',
    `Wallist` TEXT CHARACTER SET LATIN1 COLLATE LATIN1_BIN,
    `Elab_Date` DATE NOT NULL,
    `status` INT(11) DEFAULT NULL,
    UNIQUE KEY `Tournament_Code` (`Tournament_Code`),
    KEY `FK_status` (`status`)
)  ENGINE=MYISAM DEFAULT CHARSET=LATIN1;

CREATE TABLE `users` (
    `user_id` INT(11) NOT NULL AUTO_INCREMENT,
    `email` VARCHAR(255) DEFAULT NULL,
    `password` VARCHAR(255) DEFAULT NULL,
    `full_name` VARCHAR(255) DEFAULT NULL,
    `admin` SMALLINT(6) NOT NULL DEFAULT '0',
    `disabled` SMALLINT(6) NOT NULL DEFAULT '0',
    `last_login` DATETIME DEFAULT NULL,
    `reset_token` VARCHAR(255) DEFAULT NULL,
    `reset_token_expires` DATETIME DEFAULT NULL,
    `preferences` TEXT,
    `readonly` SMALLINT(6) NOT NULL DEFAULT '0',
    `api_key` VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (`user_id`),
    KEY `api_key` (`api_key`)
)  ENGINE=MYISAM AUTO_INCREMENT=343 DEFAULT CHARSET=LATIN1;

CREATE VIEW `members_payments_view` AS
    SELECT 
        `p`.`payment_id` AS `payment_id`,
        `p`.`member_id` AS `member_id`,
        `p`.`years` AS `years`,
        `p`.`amount` AS `amount`,
        `p`.`legacy_payment_type` AS `legacy_payment_type`,
        `p`.`payment_method` AS `payment_method`,
        `p`.`payment_date` AS `payment_date`,
        `p`.`note` AS `note`,
        `p`.`via` AS `via`,
        `p`.`processed_by` AS `processed_by`,
        `p`.`txn_id` AS `txn_id`,
        `p`.`type` AS `type`,
        `p`.`promo` AS `promo`,
        `p`.`payment_type` AS `payment_type`,
        `p`.`legacy_payment_method` AS `legacy_payment_method`,
        `m`.`full_name` AS `full_name`
    FROM
        (`members_payments` `p`
        LEFT JOIN `members` `m` ON ((`p`.`member_id` = `m`.`member_id`)));

CREATE VIEW `members_view` AS
    SELECT 
        `m`.`member_id` AS `member_id`,
        `m`.`legacy_updated` AS `legacy_updated`,
        `m`.`legacy_web_updated` AS `legacy_web_updated`,
        `m`.`legacy_new` AS `legacy_new`,
        `m`.`legacy_id` AS `legacy_id`,
        `m`.`legacy_citizen_of` AS `legacy_citizen_of`,
        `m`.`legacy_source` AS `legacy_source`,
        `m`.`full_name` AS `full_name`,
        `m`.`given_names` AS `given_names`,
        `m`.`family_name` AS `family_name`,
        `m`.`renewal_due` AS `renewal_due`,
        `m`.`join_date` AS `join_date`,
        `m`.`dob` AS `dob`,
        `m`.`status` AS `status`,
        `m`.`type` AS `type`,
        `m`.`tags` AS `tags`,
        `m`.`address1` AS `address1`,
        `m`.`address2` AS `address2`,
        `m`.`city` AS `city`,
        `m`.`state` AS `state`,
        `m`.`zip` AS `zip`,
        `m`.`region` AS `region`,
        `m`.`country` AS `country`,
        `m`.`phone` AS `phone`,
        `m`.`phone2` AS `phone2`,
        `m`.`cell` AS `cell`,
        `m`.`email` AS `email`,
        `m`.`email2` AS `email2`,
        `m`.`chapter` AS `chapter`,
        `m`.`chapter_id` AS `chapter_id`,
        `m`.`occupation` AS `occupation`,
        `m`.`citizen` AS `citizen`,
        `m`.`password_plaintext` AS `password_plaintext`,
        `m`.`secret_q` AS `secret_q`,
        `m`.`secret_a` AS `secret_a`,
        `m`.`last_login` AS `last_login`,
        `m`.`reset_token` AS `reset_token`,
        `m`.`reset_token_expires` AS `reset_token_expires`,
        `m`.`password` AS `password`,
        `m`.`notes` AS `notes`,
        `m`.`dues_last_paid` AS `dues_last_paid`,
        `m`.`last_changed` AS `last_changed`,
        `m`.`gender` AS `gender`,
        `m`.`citizen_type` AS `citizen_type`,
        `m`.`non_citizen_country` AS `non_citizen_country`,
        `c`.`display` AS `display`,
        `c`.`size` AS `size`,
        `c`.`contact` AS `contact`,
        `c`.`contact_text` AS `contact_text`,
        `c`.`meeting_text` AS `meeting_text`,
        `c`.`url` AS `url`,
        `c`.`rep_id` AS `rep_id`,
        `c`.`rep_id2` AS `rep_id2`,
        `c`.`rep_id3` AS `rep_id3`,
        `p`.`Rating` AS `rating`,
        `p`.`Sigma` AS `sigma`,
        `p`.`Tot_Tournaments` AS `tournaments`,
        `p`.`Tot_Games` AS `games`,
        `p`.`Elab_Date` AS `rating_updated`,
        `t`.`Tournament_Descr` AS `last_tourney`,
        `t`.`Tournament_Date` AS `last_tourney_date`,
        IF(`m`.`dob`,
            ((DATE_FORMAT(NOW(), '%Y') - DATE_FORMAT(`m`.`dob`, '%Y')) - (DATE_FORMAT(NOW(), '00-%m-%d') < DATE_FORMAT(`m`.`dob`, '00-%m-%d'))),
            -(1)) AS `age`
    FROM
        (((`members` `m`
        LEFT JOIN `chapters` `c` ON ((`m`.`member_id` = `c`.`member_id`)))
        LEFT JOIN `players` `p` ON ((`m`.`member_id` = `p`.`Pin_Player`)))
        LEFT JOIN `tournaments` `t` ON ((`p`.`Last_Appearance` = `t`.`Tournament_Code`)));

CREATE VIEW `most_rated_games_view` AS
    SELECT 
        `p`.`pin` AS `pin`,
        CONCAT(`players`.`Name`,
                ' ',
                `players`.`Last_Name`) AS `Name`,
        `p`.`Game_Count` AS `Game_Count`
    FROM
        (((SELECT 
            `x`.`pin` AS `pin`,
                (`x`.`count1` + `y`.`count2`) AS `Game_Count`
        FROM
            (((SELECT 
            `games`.`Pin_Player_1` AS `pin`,
                COUNT(`games`.`Game_ID`) AS `count1`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Exclude` = 0)
                AND (`games`.`Online` = 0))
        GROUP BY `games`.`Pin_Player_1`)) `x`
        JOIN (SELECT 
            `games`.`Pin_Player_2` AS `pin`,
                COUNT(`games`.`Game_ID`) AS `count2`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Exclude` = 0)
                AND (`games`.`Online` = 0))
        GROUP BY `games`.`Pin_Player_2`) `y` ON ((`y`.`pin` = `x`.`pin`)))
        ORDER BY `Game_Count` DESC , `x`.`pin`
        LIMIT 10)) `p`
        JOIN `players` ON ((`p`.`pin` = `players`.`Pin_Player`)));

CREATE VIEW `most_tournaments_view` AS
    SELECT 
        `p`.`pin` AS `pin`,
        CONCAT(`players`.`Name`,
                ' ',
                `players`.`Last_Name`) AS `Name`,
        `p`.`Tournament_Count` AS `Tournament_Count`
    FROM
        (((SELECT 
            `y`.`pin` AS `pin`,
                COUNT(`y`.`tournament_code`) AS `Tournament_Count`
        FROM
            (SELECT 
            `games`.`Pin_Player_1` AS `pin`,
                `games`.`Tournament_Code` AS `tournament_code`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Online` = 0)
                AND (`games`.`Exclude` = 0)) UNION SELECT 
            `games`.`Pin_Player_2` AS `pin`,
                `games`.`Tournament_Code` AS `tournament_code`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Online` = 0)
                AND (`games`.`Exclude` = 0))) `y`
        GROUP BY `y`.`pin`
        ORDER BY `Tournament_Count` DESC , `y`.`pin`
        LIMIT 10)) `p`
        JOIN `players` ON ((`p`.`pin` = `players`.`Pin_Player`)));

CREATE VIEW `top_dan_view` AS
    SELECT 
        `m`.`member_id` AS `member_id`,
        `m`.`full_name` AS `full_name`,
        FORMAT(`p`.`Rating`, 2) AS `rating`
    FROM
        ((((SELECT 
            `x`.`pin` AS `pin`, COUNT(0) AS `game_count`
        FROM
            (SELECT 
            `games`.`Pin_Player_1` AS `pin`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Exclude` = 0)
                AND (`games`.`Online` = 0)) UNION ALL SELECT 
            `games`.`Pin_Player_2` AS `pin`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Exclude` = 0)
                AND (`games`.`Online` = 0))) `x`
        GROUP BY `x`.`pin`)) `a`
        JOIN `members` `m` ON ((`a`.`pin` = `m`.`member_id`)))
        JOIN `players` `p` ON ((`p`.`Pin_Player` = `a`.`pin`)))
    WHERE
        ((`a`.`game_count` > 10)
            AND (`p`.`Rating` > 0))
    ORDER BY `p`.`Rating` DESC
    LIMIT 10;

CREATE VIEW `top_kyu_view` AS
    SELECT 
        `m`.`member_id` AS `member_id`,
        `m`.`full_name` AS `full_name`,
        FORMAT(`p`.`Rating`, 2) AS `rating`
    FROM
        ((((SELECT 
            `x`.`pin` AS `pin`, COUNT(0) AS `game_count`
        FROM
            (SELECT 
            `games`.`Pin_Player_1` AS `pin`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Exclude` = 0)
                AND (`games`.`Online` = 0)) UNION ALL SELECT 
            `games`.`Pin_Player_2` AS `pin`
        FROM
            `games`
        WHERE
            ((`games`.`Game_Date` > (NOW() - INTERVAL 1 YEAR))
                AND (`games`.`Exclude` = 0)
                AND (`games`.`Online` = 0))) `x`
        GROUP BY `x`.`pin`)) `a`
        JOIN `members` `m` ON ((`a`.`pin` = `m`.`member_id`)))
        JOIN `players` `p` ON ((`p`.`Pin_Player` = `a`.`pin`)))
    WHERE
        ((`a`.`game_count` > 10)
            AND (`p`.`Rating` < 0))
    ORDER BY `p`.`Rating` DESC
    LIMIT 10;
