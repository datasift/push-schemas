CREATE TABLE wikipedia (
  interaction_id VARCHAR(64) PRIMARY KEY,
  created_at TIMESTAMP DEFAULT NULL,
  author_contributions TEXT NULL,
  author_link TEXT NULL,
  author_talk TEXT NULL,
  author_username VARCHAR(64) NULL,
  body TEXT NULL,
  wikipedia_id VARCHAR(64) NULL,
  pageid TEXT NULL,
  parentid TEXT NULL,
  previousid TEXT NULL,
  ns INTEGER NULL,
  namespace TEXT NULL,
  newlen INTEGER NULL,
  oldlen INTEGER NULL,
  title TEXT NULL,
  subtype TEXT NULL,
  diff_from TEXT NULL,
  diff_to TEXT NULL,
  htmldiff TEXT NULL
);
CREATE INDEX wikipedia_created_at_idx ON wikipedia (created_at);

CREATE TABLE wikipedia_categories (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  category TEXT NULL
);
CREATE INDEX wikipedia_categories_interaction_id_idx ON wikipedia_categories (interaction_id);
CREATE INDEX wikipedia_categories_created_at_idx ON wikipedia_categories (created_at);


CREATE TABLE wikipedia_externallinks (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  link TEXT NULL
);
CREATE INDEX wikipedia_externallinks_interaction_id_idx ON wikipedia_externallinks (interaction_id);
CREATE INDEX wikipedia_externallinks_created_at_idx ON wikipedia_externallinks (created_at);


CREATE TABLE wikipedia_images (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  image TEXT NULL
);
CREATE INDEX wikipedia_images_interaction_id_idx ON wikipedia_images (interaction_id);
CREATE INDEX wikipedia_images_created_at_idx ON wikipedia_images (created_at);


CREATE TABLE wikipedia_diff_added (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  added TEXT NULL
);
CREATE INDEX wikipedia_diff_added_interaction_id_idx ON wikipedia_diff_added (interaction_id);
CREATE INDEX wikipedia_diff_added_created_at_idx ON wikipedia_diff_added (created_at);


CREATE TABLE wikipedia_diff_removed (
  interaction_id VARCHAR(64) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  removed TEXT NULL
);
CREATE INDEX wikipedia_diff_removed_interaction_id_idx ON wikipedia_diff_removed (interaction_id);
CREATE INDEX wikipedia_diff_removed_created_at_idx ON wikipedia_diff_removed (created_at);
