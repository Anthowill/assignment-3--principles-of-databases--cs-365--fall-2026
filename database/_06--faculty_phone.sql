DROP TABLE IF EXISTS `faculty_phone`;

CREATE TABLE IF NOT EXISTS `faculty_phone` (
  `email`     VARCHAR(128) NOT NULL,
  `extension` SMALLINT     NOT NULL,

  PRIMARY KEY (email),

  FOREIGN KEY (email) REFERENCES faculty (email)
    ON DELETE CASCADE
    ON UPDATE CASCADE,

  FOREIGN KEY (extension) REFERENCES phone (extension)
    ON DELETE CASCADE
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `faculty_phone` (email, extension) VALUES (@aisheh, 5479);
INSERT INTO `faculty_phone` (email, extension) VALUES (@agboola, 4502);
INSERT INTO `faculty_phone` (email, extension) VALUES (@ahmar, 4681);
INSERT INTO `faculty_phone` (email, extension) VALUES (@alnajjar, 5005);
INSERT INTO `faculty_phone` (email, extension) VALUES (@asaki, 4185);
INSERT INTO `faculty_phone` (email, extension) VALUES (@assasi, 4931);
INSERT INTO `faculty_phone` (email, extension) VALUES (@bambury, 5953);
INSERT INTO `faculty_phone` (email, extension) VALUES (@bensaoud, 5481);
INSERT INTO `faculty_phone` (email, extension) VALUES (@campana, 4629);
INSERT INTO `faculty_phone` (email, extension) VALUES (@canistraro, 5358);
INSERT INTO `faculty_phone` (email, extension) VALUES (@crosbie, 4755);
INSERT INTO `faculty_phone` (email, extension) VALUES (@danesh, 5074);
INSERT INTO `faculty_phone` (email, extension) VALUES (@davis, 4094);
INSERT INTO `faculty_phone` (email, extension) VALUES (@cetaaudio, 4758);
INSERT INTO `faculty_phone` (email, extension) VALUES (@dealmeida, 4758);
INSERT INTO `faculty_phone` (email, extension) VALUES (@fang, 4845);
INSERT INTO `faculty_phone` (email, extension) VALUES (@ghosh, 5523);
INSERT INTO `faculty_phone` (email, extension) VALUES (@hadad, 4308);
INSERT INTO `faculty_phone` (email, extension) VALUES (@hill, 5086);
INSERT INTO `faculty_phone` (email, extension) VALUES (@jerhil, 4947);
INSERT INTO `faculty_phone` (email, extension) VALUES (@horowitz, 5085);
INSERT INTO `faculty_phone` (email, extension) VALUES (@jasinski, 4323);
INSERT INTO `faculty_phone` (email, extension) VALUES (@jung, 4917);
INSERT INTO `faculty_phone` (email, extension) VALUES (@keshawarz, 4032);
INSERT INTO `faculty_phone` (email, extension) VALUES (@dongbin, 5808);
INSERT INTO `faculty_phone` (email, extension) VALUES (@mingjun, 5420);
INSERT INTO `faculty_phone` (email, extension) VALUES (@qisi, 4859);
INSERT INTO `faculty_phone` (email, extension) VALUES (@mahanta, 4866);
INSERT INTO `faculty_phone` (email, extension) VALUES (@mellodge, 5334);
INSERT INTO `faculty_phone` (email, extension) VALUES (@miar, 4224);
INSERT INTO `faculty_phone` (email, extension) VALUES (@milanovic, 4325);
INSERT INTO `faculty_phone` (email, extension) VALUES (@moon, 4763);
INSERT INTO `faculty_phone` (email, extension) VALUES (@moslehpour, 4211);
INSERT INTO `faculty_phone` (email, extension) VALUES (@obst, 4112);
INSERT INTO `faculty_phone` (email, extension) VALUES (@park, 4366);
INSERT INTO `faculty_phone` (email, extension) VALUES (@pines, 4560);
INSERT INTO `faculty_phone` (email, extension) VALUES (@raphael, 4864);
INSERT INTO `faculty_phone` (email, extension) VALUES (@rosiene, 4699);
INSERT INTO `faculty_phone` (email, extension) VALUES (@russell, 4191);
INSERT INTO `faculty_phone` (email, extension) VALUES (@sahay, 4852);
INSERT INTO `faculty_phone` (email, extension) VALUES (@sawruk, 5763);
INSERT INTO `faculty_phone` (email, extension) VALUES (@seddighikhavidak, 4614);
INSERT INTO `faculty_phone` (email, extension) VALUES (@shen, 5563);
INSERT INTO `faculty_phone` (email, extension) VALUES (@shertukde, 4847);
INSERT INTO `faculty_phone` (email, extension) VALUES (@shuman, 5483);
INSERT INTO `faculty_phone` (email, extension) VALUES (@slaboch, 4869);
INSERT INTO `faculty_phone` (email, extension) VALUES (@smith, 4846);
INSERT INTO `faculty_phone` (email, extension) VALUES (@sohn, 4894);
INSERT INTO `faculty_phone` (email, extension) VALUES (@sussmann, 4615);
INSERT INTO `faculty_phone` (email, extension) VALUES (@tatoglu, 4591);
INSERT INTO `faculty_phone` (email, extension) VALUES (@tayeen, 4104);
INSERT INTO `faculty_phone` (email, extension) VALUES (@vanegas, 5925);
INSERT INTO `faculty_phone` (email, extension) VALUES (@wang, 4855);
INSERT INTO `faculty_phone` (email, extension) VALUES (@yang, 4044);
INSERT INTO `faculty_phone` (email, extension) VALUES (@yyang, 4316);
INSERT INTO `faculty_phone` (email, extension) VALUES (@yavuzturk, 5554);
INSERT INTO `faculty_phone` (email, extension) VALUES (@yu, 4752);