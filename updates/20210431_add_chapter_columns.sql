ALTER TABLE `chapters`
ADD COLUMN `rep_id2` INT NULL after 'rep_id',
ADD COLUMN `rep_id3` INT NULL after 'rep_id2',
ADD COLUMN 'Faculty_Advisor' VARCHAR(50) NULL after 'display',
ADD COLUMN 'Faculty_Advisor_Email' VARCHAR(75) NULL after 'Faculty_Advisor';