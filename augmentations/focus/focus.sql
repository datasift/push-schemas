CREATE TABLE focus (
  interaction_id VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  content_levels_level1 VARCHAR(64) DEFAULT NULL,
  content_levels_level2 VARCHAR(64) DEFAULT NULL,
  content_levels_level3 VARCHAR(64) DEFAULT NULL,
  content_levels_last VARCHAR(64) DEFAULT NULL,
  title_levels_level1 VARCHAR(64) DEFAULT NULL,
  title_levels_level2 VARCHAR(64) DEFAULT NULL,
  title_levels_level3 VARCHAR(64) DEFAULT NULL,
  title_levels_last VARCHAR(64) DEFAULT NULL,
  parent_levels_level1 VARCHAR(64) DEFAULT NULL,
  parent_levels_level2 VARCHAR(64) DEFAULT NULL,
  parent_levels_level3 VARCHAR(64) DEFAULT NULL,
  parent_levels_last VARCHAR(64) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX focus_interaction_id_idx ON focus (interaction_id);
CREATE INDEX focus_created_at_idx ON focus (created_at);
