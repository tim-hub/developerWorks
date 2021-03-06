CREATE TABLE tournament_participant(
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL
);
CREATE INDEX on tournament_participant(YEAR, TEAM_NAME);

-- TODO: RI BETWEEN TEAM NAMES AND tournament_participant.TEAM_NAME
CREATE TABLE tournament_result(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  GAME_DATE DATE NOT NULL,
  WINNING_TEAM_NAME VARCHAR(64) NOT NULL,
  WINNING_SCORE INTEGER NOT NULL,
  LOSING_TEAM_NAME VARCHAR(64) NOT NULL,
  LOSING_SCORE INTEGER NOT NULL
);

CREATE TABLE won_lost_percentage(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_WINS INTEGER NOT NULL,
  NUM_LOSSES INTEGER NOT NULL,
  WIN_PERCENTAGE DECIMAL(7,5) NOT NULL
);
CREATE INDEX on won_lost_percentage(YEAR, TEAM_NAME);

CREATE TABLE scoring_offense(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_POINTS INTEGER NOT NULL,
  AVG_POINTS_PER_GAME DECIMAL (7,5) NOT NULL
);
CREATE INDEX on scoring_offense(YEAR, TEAM_NAME);

CREATE TABLE scoring_defense(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_OPPONENT_POINTS INTEGER NOT NULL,
  AVG_OPPONENT_POINTS_PER_GAME DECIMAL (7,5) NOT NULL
);
CREATE INDEX on scoring_defense(YEAR, TEAM_NAME);

CREATE TABLE scoring_margin(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_POINTS INTEGER NOT NULL,
  NUM_OPPONENT_POINTS INTEGER NOT NULL,
  SCORING_MARGIN_PER_GAME DECIMAL (7,5) NOT NULL,
  SCORING_MARGIN_SEASON INTEGER NOT NULL
);
CREATE INDEX on scoring_margin(YEAR, TEAM_NAME);

CREATE TABLE field_goal_percentage(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_FG_MADE INTEGER NOT NULL,
  NUM_FG_PER_GAME DECIMAL (7,5) NOT NULL,
  NUM_FG_ATTEMPTS INTEGER NOT NULL,
  NUM_FG_ATTEMPTS_PER_GAME DECIMAL (7,5) NOT NULL,
  FG_PERCENTAGE DECIMAL (7,5) NOT NULL
);
CREATE INDEX on field_goal_percentage(YEAR, TEAM_NAME);

CREATE TABLE field_goal_percentage_defense(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_OPP_FG_MADE INTEGER NOT NULL,
  NUM_OPP_FG_ATTEMPTS INTEGER NOT NULL,
  NUM_OPP_FG_PER_GAME DECIMAL (7,5) NOT NULL,
  NUM_OPP_FG_ATTEMPTS_PER_GAME DECIMAL (7,5) NOT NULL,
  OPP_FG_PERCENTAGE DECIMAL (7,5) NOT NULL
);
CREATE INDEX on field_goal_percentage_defense(YEAR, TEAM_NAME);

CREATE TABLE three_point_field_goals_per_game(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_3P_MADE INTEGER NOT NULL,
  NUM_3P_PER_GAME DECIMAL (7,5) NOT NULL
);
CREATE INDEX on three_point_field_goals_per_game(YEAR, TEAM_NAME);

CREATE TABLE three_point_percentage(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_3P_MADE INTEGER NOT NULL,
  NUM_3P_ATTEMPTS INTEGER NOT NULL,
  NUM_3P_PER_GAME DECIMAL (7,5) NOT NULL,
  NUM_3P_ATTEMPTS_PER_GAME DECIMAL (7,5) NOT NULL,
  T3P_PERCENTAGE DECIMAL (7,5) NOT NULL
);
CREATE INDEX on three_point_percentage(YEAR, TEAM_NAME);

CREATE TABLE three_point_percentage_defense(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_OPP_3P_MADE INTEGER NOT NULL,
  NUM_OPP_3P_ATTEMPTS INTEGER NOT NULL,
  NUM_OPP_3P_PER_GAME DECIMAL (7,5) NOT NULL,
  NUM_OPP_3P_ATTEMPTS_PER_GAME DECIMAL (7,5) NOT NULL,
  OPP_3P_PERCENTAGE DECIMAL (7,5) NOT NULL
);
CREATE INDEX on three_point_percentage_defense(YEAR, TEAM_NAME);

CREATE TABLE free_throw_percentage(
--  ID INTEGER PRIMARY KEY NOT NULL AUTO_INCREMENT,
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_FT_MADE INTEGER NOT NULL,
  NUM_FT_ATTEMPTS INTEGER NOT NULL,
  NUM_FT_PER_GAME DECIMAL (7,5) NOT NULL,
  NUM_FT_ATTEMPTS_PER_GAME DECIMAL (7,5) NOT NULL,
  FT_PERCENTAGE DECIMAL (7,5) NOT NULL
);
CREATE INDEX on free_throw_percentage(YEAR, TEAM_NAME);

CREATE TABLE rebound_margin(
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_REBOUNDS INTEGER NOT NULL, 
  REBOUNDS_PER_GAME DECIMAL(7,5), 
  OPP_NUM_REBOUNDS INTEGER NOT NULL, 
  OPP_REBOUNDS_PER_GAME DECIMAL(7,5), 
  REBOUND_MARGIN DECIMAL (7,5) NOT NULL
);
CREATE INDEX on rebound_margin(YEAR, TEAM_NAME);

CREATE TABLE assists_per_game(
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_ASSISTS INTEGER NOT NULL,
  ASSISTS_PER_GAME DECIMAL (7,5) NOT NULL
);
CREATE INDEX on assists_per_game(YEAR, TEAM_NAME);

CREATE TABLE assist_turnover_ratio(
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_ASSISTS INTEGER NOT NULL,
  NUM_TURNOVERS INTEGER NOT NULL,
  ATO_RATIO DECIMAL (7,5) NOT NULL
);
CREATE INDEX on assist_turnover_ratio(YEAR, TEAM_NAME);

CREATE TABLE blocked_shots_per_game (
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_BLOCKS INTEGER NOT NULL,
  BLOCKS_PER_GAME DECIMAL (7,5) NOT NULL
);
CREATE INDEX on blocked_shots_per_game(YEAR, TEAM_NAME);

CREATE TABLE steals_per_game (
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_STEALS INTEGER NOT NULL,
  STEALS_PER_GAME DECIMAL (7,5) NOT NULL
);
CREATE INDEX on steals_per_game(YEAR, TEAM_NAME);

CREATE TABLE turnovers_per_game (
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_TURNOVERS INTEGER NOT NULL,
  TURNOVERS_PER_GAME DECIMAL (7,5) NOT NULL
);
CREATE INDEX on turnovers_per_game(YEAR, TEAM_NAME);

CREATE TABLE turnover_margin(
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_TURNOVERS INTEGER NOT NULL, 
  TURNOVERS_PER_GAME DECIMAL(7,5), 
  OPP_NUM_TURNOVERS INTEGER NOT NULL, 
  OPP_TURNOVERS_PER_GAME DECIMAL(7,5), 
  TURNOVER_MARGIN DECIMAL (7,5) NOT NULL
);
CREATE INDEX on turnover_margin(YEAR, TEAM_NAME);

CREATE TABLE personal_fouls_per_game (
  ID SERIAL PRIMARY KEY,
  YEAR INTEGER NOT NULL,
  TEAM_NAME VARCHAR(64) NOT NULL,
  NUM_GAMES INTEGER NOT NULL,
  NUM_FOULS INTEGER NOT NULL,
  FOULS_PER_GAME DECIMAL (7,5) NOT NULL,
  NUM_DQ INTEGER NOT NULL
);
CREATE INDEX on personal_fouls_per_game(YEAR, TEAM_NAME);

