use lingo;

CREATE TABLE IF NOT EXISTS `lingo`.`codegroup` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delNy` INT NULL,
  `useNy` INT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `lingo`.`code` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delNy` INT NULL,
  `useNy` INT NULL,
  `name` VARCHAR(45) NULL,
  `codegroup_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`, `codegroup_seq`),
  INDEX `fk_code_codegroup_idx` (`codegroup_seq` ASC) VISIBLE,
  CONSTRAINT `fk_code_codegroup`
    FOREIGN KEY (`codegroup_seq`)
    REFERENCES `lingo`.`codegroup` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `lingo`.`member` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delNy` INT NULL,
  `id` VARCHAR(45) NULL,
  `name` VARCHAR(45) NULL,
  `email` VARCHAR(45) NULL,
  `password` VARCHAR(45) NULL,
  `signupDate` DATETIME NULL,
  `lastLoginDate` DATETIME NULL,
  `address` VARCHAR(100) NULL,
  `addressDetail` VARCHAR(45) NULL,
  `rank` INT NULL,
  `badge` INT NULL,
  `gender` INT NULL,
  `membercol` VARCHAR(45) NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `lingo`.`learning` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delNy` INT NULL,
  `title` VARCHAR(45) NULL,
  `tags` VARCHAR(45) NULL,
  `question` VARCHAR(1000) NULL,
  `answer` VARCHAR(1000) NULL,
  `member_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_learning_member1_idx` (`member_seq` ASC) VISIBLE,
  CONSTRAINT `fk_learning_member1`
    FOREIGN KEY (`member_seq`)
    REFERENCES `lingo`.`member` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `lingo`.`chatting` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delNy` INT NULL,
  `title` VARCHAR(45) NULL,
  `contents` VARCHAR(45) NULL,
  `headCount` INT NULL,
  `like` INT NULL,
  `chattingDate` DATETIME NULL,
  `member_seq` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `lingo`.`quiz` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delNy` INT NULL,
  `answerNy` INT NULL,
  `title` VARCHAR(45) NULL,
  `tags` VARCHAR(45) NULL,
  `question` VARCHAR(1000) NULL,
  `member_seq` INT NULL,
  PRIMARY KEY (`seq`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `lingo`.`answer` (
  `seq` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `delNy` INT NULL,
  `answerNy` INT NULL,
  `answer` VARCHAR(1000) NULL,answer
  `quiz_seq` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`seq`),
  INDEX `fk_answer_quiz1_idx` (`quiz_seq` ASC) VISIBLE,
  CONSTRAINT `fk_answer_quiz1`
    FOREIGN KEY (`quiz_seq`)
    REFERENCES `lingo`.`quiz` (`seq`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;