DROP TABLE IF EXISTS `program`;

CREATE TABLE IF NOT EXISTS `program` (
  `id`         SMALLINT     NOT NULL,
  `name`       VARCHAR(48)  NOT NULL,
  `department` VARCHAR(128) NOT NULL,

  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

INSERT INTO `program`
(id, name, department)
VALUES
(1, 'Acoustical Engineering and Music Program', @maae),
(2, 'Aerospace Engineering', @maae),
(3, 'Audio Engineering', @ece),
(4, 'Autonomous Mobile Robotics Group', @maae),
(5, 'Biomedical Engineering', @ceb),
(6, 'Computer and Electronic Engineering Technology', @ece),
(7, 'Computer Engineering', @ece),
(8, 'Master of Arts in Architecture', @arch),
(9, 'Masters Program in Computing Sciences', @cs),
(10, 'Robotics Engineering', @ece);
