CREATE TABLE IF NOT EXISTS twitter (
  interaction_id VARCHAR(64) PRIMARY KEY,
  interaction_type VARCHAR(64) NOT NULL,
  created_at DATETIME NOT NULL,
  author_username VARCHAR(64) DEFAULT NULL,
  author_language VARCHAR(64) DEFAULT NULL,
  source VARCHAR(64) DEFAULT NULL,
  interaction_link VARCHAR(255) DEFAULT NULL,
  followers_count INT DEFAULT NULL,
  user_description TEXT DEFAULT NULL,
  user_timezone VARCHAR(64) DEFAULT NULL,
  user_location VARCHAR(64) DEFAULT NULL,
  twitter_place_country VARCHAR(64) DEFAULT NULL,
  verified INT DEFAULT NULL,
  twitter_id VARCHAR(64) DEFAULT NULL,
  geo_latitude DOUBLE DEFAULT NULL,
  geo_longitude DOUBLE DEFAULT NULL,
  content TEXT DEFAULT NULL,
  twitter_lang VARCHAR(64) DEFAULT NULL,
  is_retweet INTEGER DEFAULT NULL,
  twitter_retweeted_id VARCHAR(64) DEFAULT NULL,
  retweeted_author_screen_name VARCHAR(64) DEFAULT NULL,
  retweet_count INT DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX twitter_interaction_type_idx ON twitter (interaction_type);
CREATE INDEX twitter_created_at_idx ON twitter (created_at);


CREATE TABLE IF NOT EXISTS links (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  url VARCHAR(255) DEFAULT NULL,
  title VARCHAR(255) DEFAULT NULL,
  domain VARCHAR(255) DEFAULT NULL,
  normalized_url VARCHAR(255) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX links_interaction_id_idx ON links (interaction_id);
CREATE INDEX links_interaction_type_idx ON links (interaction_type);
CREATE INDEX links_created_at_idx ON links (created_at);


CREATE TABLE IF NOT EXISTS links_meta (
  interaction_id VARCHAR(64) NOT NULL,
  interaction_type VARCHAR(50) NOT NULL,
  created_at DATETIME DEFAULT NULL,
  charset VARCHAR(50) DEFAULT NULL,
  content_type VARCHAR(50) DEFAULT NULL,
  description VARCHAR(255) DEFAULT NULL,
  lang VARCHAR(50) DEFAULT NULL
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;
CREATE INDEX links_meta_interaction_id_idx ON links_meta (interaction_id);
CREATE INDEX links_meta_interaction_type_idx ON links_meta (interaction_type);
CREATE INDEX links_meta_created_at_idx ON links_meta (created_at);


CREATE TABLE IF NOT EXISTS tag (
	interaction_id VARCHAR(64) NOT NULL,
	interaction_type VARCHAR(64) NOT NULL,
	created_at DATETIME NOT NULL,
	namespace VARCHAR(255),
	score FLOAT,
	label VARCHAR(255)
)
COLLATE='utf8_general_ci'
ENGINE=InnoDB;
CREATE INDEX tag_interaction_id_idx ON tag (interaction_id);
CREATE INDEX tag_interaction_type_idx ON tag (interaction_type);
CREATE INDEX tag_created_at_idx ON tag (created_at);
