--lk_countries look up table will be displayed on the select tag
create table lk_countries
{
    id SERIAL PRIMARY KEY,
  	name VARCHAR(20) unique,
  	date_created TIMESTAMP null,
  	date_updated TIMESTAMP null,
  	deleted_ind boolean
    area VARCHAR(30) unique
};

--
-- lk_job_entry_status look up table, will display on the filter via admin page(This is not required).
create table lk_job_entry_statuses
(
	id SERIAL PRIMARY KEY,
  	name VARCHAR(20) unique,
  	date_created TIMESTAMP null,
  	date_filled TIMESTAMP null,
  	deleted_ind boolean
);

CREATE TABLE IF NOT EXISTS lk_job_statuses(
  id      SERIAL  NOT NULL PRIMARY KEY, -- id of job_statuses, it will be used as a foreign key when referencing it on other tables.
  company    VARCHAR(200) NOT NULL, -- name of company
  country_id INTEGER REFERENCES lk_countries (id) not null, -- Country id that references the lk_countries table.
  date_created TIMESTAMP null, -- The date the job was posted.
  date_filled TIMESTAMP null, -- The date the job was filled.
  deleted_ind boolean -- The date the job was soft-deleted, still exists in database.
  position   VARCHAR(200) NOT NULL, -- position company is looking for
);



CREATE TABLE IF NOT EXISTS job_entries(
  companydisplay_name   SERIAL  NOT NULL PRIMARY KEY, -- name of company
  contract_time    VARCHAR(200) NOT NULL, -- full-time, or part-time
  category VARCHAR(50) NOT NULL -- category of industry job is in
  salary_min VARCHAR(40) NOT NULL -- min projected salary
  title VARCHAR(40) NOT NULL -- Job role title
  salary_max --Max Projected Salary
  location -- location of job
);

