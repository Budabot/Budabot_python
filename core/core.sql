CREATE TABLE IF NOT EXISTS command_config (command VARCHAR(50) NOT NULL, sub_command VARCHAR(50) NOT NULL, access_level VARCHAR(50) NOT NULL, channel VARCHAR(50) NOT NULL, module VARCHAR(50) NOT NULL, enabled TINYINT NOT NULL, verified TINYINT NOT NULL);
CREATE TABLE IF NOT EXISTS event_config (event_type VARCHAR(50) NOT NULL, event_sub_type VARCHAR(50) NOT NULL, handler VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, module VARCHAR(50) NOT NULL, enabled TINYINT NOT NULL, verified TINYINT NOT NULL);
CREATE TABLE IF NOT EXISTS timer_event (event_type VARCHAR(50) NOT NULL, event_sub_type VARCHAR(50) NOT NULL, handler VARCHAR(255) NOT NULL, next_run INT NOT NULL);
CREATE TABLE IF NOT EXISTS setting (name VARCHAR(50) NOT NULL, value VARCHAR(255) NOT NULL, description VARCHAR(255) NOT NULL, module VARCHAR(50) NOT NULL, verified TINYINT NOT NULL);
CREATE TABLE IF NOT EXISTS command_alias (alias VARCHAR(50) NOT NULL, command VARCHAR(1024) NOT NULL, enabled TINYINT NOT NULL);
CREATE TABLE IF NOT EXISTS command_usage (command VARCHAR(255) NOT NULL, handler VARCHAR(255) NOT NULL, char_id INT NOT NULL, channel VARCHAR(20) NOT NULL, created_at INT NOT NULL);
CREATE TABLE IF NOT EXISTS ban_list (char_id INT NOT NULL, sender_char_id INT NOT NULL, created_at INT NOT NULL, finished_at INT NOT NULL, reason VARCHAR(255) NOT NULL, ended_early TINYINT NOT NULL);