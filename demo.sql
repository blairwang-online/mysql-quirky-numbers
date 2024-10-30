-- Setup data --

DROP TABLE IF EXISTS quirky_numbers_demo;

CREATE TABLE quirky_numbers_demo (
  entry_id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  some_amount_dub DOUBLE DEFAULT NULL,
  some_amount_dec DECIMAL(10,2) DEFAULT NULL,
  PRIMARY KEY (entry_id)
);

INSERT INTO quirky_numbers_demo (some_amount_dub, some_amount_dec)
VALUES
	(-1.5, -1.5),
	(-0.5, -0.5),
	(0.5, 0.5),
	(1.5, 1.5),
	(2.5, 2.5),
	(0.1, 0.1),
	(0.2, 0.2),
	(0.3, 0.3),
	(0.4, 0.4),
	(0.5, 0.5);



-- Run query --

SELECT
	entry_id,
	some_amount_dub,
	some_amount_dec,
	round(some_amount_dub, 0) AS round_dub,
	round(some_amount_dec, 0) AS round_dec,
	some_amount_dub + 0.2 as adds_dub,
	some_amount_dec + 0.2 as adds_dec
FROM quirky_numbers_demo;
