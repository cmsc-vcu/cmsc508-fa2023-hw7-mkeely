# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS peopleroles;
DROP TABLE if exists peopleskills; 
DROP TABLE if exists people;
DROP TABLE if exists skills;
DROP TABLE if exists roles; 
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!

drop table if exists skills; 
create table skills (
    id int NOT NULL,
    name varchar(255) NOT NULL, 
    description varchar(255) NOT NULL DEFAULT '(default description)',
    tag varchar(255) NOT NULL, 
    url varchar(255),  
    time_commitment varchar(255), 
    primary key(id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (id, name, description, tag, url, time_commitment) VALUES 
(1, 'Sewing Doll Clothing', 'Mastering the art of creating intricate doll clothing with various fabrics and styles.', 'Crafting', 'https://example.com/sewingdollclothing', 'Medium'),
(2, 'Building Furniture', 'Creating functional and aesthetically pleasing furniture pieces with a focus on craftsmanship.', 'Woodworking', 'https://example.com/buildingfurniture', 'High'), 
(3, 'Fixing Cars', 'Diagnosing and repairing automotive issues, from basic maintenance to complex repairs.', 'Automotive', 'https://example.com/fixingcars', 'High'), 
(4, 'Coding With Python', 'Developing software applications and solving problems using the Python programming language.', 'Programming', 'https://example.com/pythoncoding', 'High'), 
(5, 'Competitive Eating', 'Participating in eating competitions, showcasing impressive eating speed and capacity.', 'Sports', 'https://example.com/competitiveeating', 'Low'), 
(6, 'Speed Walking', 'Engaging in brisk walking at a pace higher than the average walking speed for fitness and competition.', 'Fitness', 'https://example.com/speedwalking', 'Medium'),
(7, 'Bread Baking', 'Mastering the art of creating various types of delicious bread from scratch.', 'Baking', 'https://example.com/breadbaking', 'Medium'),
(8, 'Underwater Basket Weaving', 'Weaving baskets while submerged underwater, combining traditional crafting with a unique twist.', 'Crafting', 'https://example.com/underwaterbasketweaving', 'High');

SELECT * from skills; 



# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

drop table if exists people; 
CREATE TABLE people (
    people_id int NOT NULL,
    people_first_name varchar(256),
    people_last_name varchar(256) NOT NULL,
    email varchar(256),
    linkedin_url varchar(256), 
    headshot_url varchar(256),
    discord_handle varchar(256),
    brief_bio varchar(256), 
    date_joined varchar(256) NOT NULL DEFAULT (current_date), 
    PRIMARY KEY (people_id)
);

SELECT * from people 

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.



INSERT INTO people (people_id, people_last_name, people_first_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) VALUES 
(1, 'Person 1', 'Ann', 'ann.vo@example.com', 'https://www.linkedin.com/in/annvo', 'https://example.com/annvo.jpg', 'ann.vo#1234', 'Experienced software engineer with a passion for technology. Skilled in Sewing Doll Clothing, Fixing Cars, and Speed Walking.', '2020-07-13'),
(2, 'Person 2', 'Louisa', 'louisa.garcia@example.com', 'https://www.linkedin.com/in/louisagarcia', 'https://example.com/louisagarcia.jpg', 'louisa.garcia#5678', 'Marketing specialist with a focus on digital media. Skilled in Fixing Cars, Coding With Python, and Competitive Eating.', '2020-08-24'),
(3, 'Person 3', 'Aarav', 'aarav.chowdhury@example.com', 'https://www.linkedin.com/in/aaravchowdhury', 'https://example.com/aaravchowdhury.jpg', 'aarav.chowdhury#9101', 'Passionate graphic designer with a keen eye for detail. Skilled in Sewing Doll Clothing and Competitive Eating.', '2015-04-06'),
(4, 'Person 4', 'Robbie', 'robbie.cohen@example.com', 'https://www.linkedin.com/in/robbiecohen', 'https://example.com/robbiecohen.jpg', 'robbie.cohen#1122', 'No specific skills mentioned.', '2022-12-04'),
(5, 'Person 5', 'Andrew', 'andrew.kim@example.com', 'https://www.linkedin.com/in/andrewkim', 'https://example.com/andrewkim.jpg', 'andrew.kim#3344', 'Financial analyst with expertise in data analysis. Skilled in Fixing Cars and Speed Walking.', '2023-02-25'),
(6, 'Person 6', 'Naomi', 'naomi.brothers@example.com', 'https://www.linkedin.com/in/naomibrothers', 'https://example.com/naomibrothers.jpg', 'naomi.brothers#5566', 'Educator and researcher in the field of computer science. Skilled in Building Furniture, Fixing Cars, and Coding With Python.', '2018-03-07'),
(7, 'Person 7', 'Quang', 'quang.nguyen@example.com', 'https://www.linkedin.com/in/quangnguyen', 'https://example.com/quangnguyen.jpg', 'quang.nguyen#7890', 'Creative chef with a flair for exotic cuisine. Skilled in Fixing Cars, Coding With Python, and Competitive Eating.', '2016-06-15'),
(8, 'Person 8', 'Maria', 'maria.lopez@example.com', 'https://www.linkedin.com/in/marialopez', 'https://example.com/marialopez.jpg', 'maria.lopez#1122', 'Innovative architect specializing in sustainable design. Skilled in Sewing Doll Clothing, Fixing Cars, Coding With Python, and Competitive Eating.', '2021-04-29'),
(9, 'Person 9', 'Raj', 'raj.patel@example.com', 'https://www.linkedin.com/in/rajpatel', 'https://example.com/rajpatel.jpg', 'raj.patel#3344', 'Passionate photographer capturing moments worldwide. Skilled in Building Furniture, Fixing Cars, and Competitive Eating.', '2023-08-02'),
(10, 'Person 10', 'Lynne', 'lynne.wang@example.com', 'https://www.linkedin.com/in/lynnewang', 'https://example.com/lynnewang.jpg', 'lynne.wang#5566', 'Tech enthusiast exploring the intersection of art and technology. Skilled in Sewing Doll Clothing, Coding With Python, and Competitive Eating.', '2021-09-30');


SELECT * from people 


-- Assuming you have a linking table named person_skills with columns person_id and skill_id
-- You can adjust the table and column names based on your actual database schema.

SELECT * from people

# Section 6
# Create peopleskills(id, skills_id, people_id, date_acquired)
# None of the fields can ba NULL. ID can be auto_increment.

drop table if exists peopleskills; 
create table peopleskills (
    id int auto_increment NOT NULL, 
    skills_id int NOT NULL, 
    people_id int NOT NULL, 
    date_acquired date default (current_date) NOT NULL, 
    primary key (id), 
    foreign key (skills_id) references skills (id) on delete cascade, 
    foreign key (people_id) references people (people_id) on delete cascade, 
    unique (skills_id, people_id)

); 

SELECT * from peopleskills

# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.


INSERT INTO peopleskills (people_id, skills_id, date_acquired) VALUES 
(1, 1, '2020-07-13'),
(1, 3, '2021-01-15'),
(1, 6, '2022-05-20'),

(2, 3, '2020-08-24'),
(2, 4, '2021-02-10'),
(2, 5, '2022-09-05'),

(3, 1, '2015-04-06'),
(3, 5, '2017-10-22'),

(5, 3, '2023-02-25'),
(5, 6, '2023-03-15'),

(6, 2, '2018-03-07'),
(6, 3, '2019-06-01'),
(6, 4, '2020-02-18'),

(7, 3, '2016-06-15'),
(7, 5, '2017-09-30'),
(7, 6, '2018-12-12'),

(8, 1, '2021-04-29'),
(8, 3, '2022-02-14'),
(8, 5, '2022-11-08'),
(8, 6, '2023-01-25'),

(9, 2, '2023-08-02'),
(9, 5, '2023-08-15'),
(9, 6, '2023-09-05'),

(10, 1, '2021-09-30'),
(10, 4, '2022-04-10'),
(10, 5, '2022-10-25');

SELECT * from peopleskills; 
select count(*) from peopleskills; 


/* shows us how many people have each different skill (for example 2 people can build furniture) 
SELECT 
    name,
    count(*)
from 
    peopleskills a
    inner join people b on (a.people_id=b.people_id)
    inner join skills c on (a.skills_id=c.id)
group by 
    name 
;*/



# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles

drop table if exists roles; 
CREATE TABLE roles (
    role_id int NOT NULL, 
    role_name varchar(256), 
    sort_priority int,
    primary key (role_id)
);



# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)

INSERT INTO roles (role_id, role_name, sort_priority) VALUES 
(1, 'Designer', 10), 
(2, 'Developer', 20), 
(3, 'Recruit', 30), 
(4, 'Team Lead', 40), 
(5, 'Boss', 50),
(6, 'Mentor', 60); 

SELECT * from roles 


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment 

drop table if exists peopleroles; 
CREATE TABLE peopleroles (
    id int AUTO_INCREMENT NOT NULL,
    people_id int NOT NULL,
    role_id int NOT NULL,
    date_assigned date default (current_date) NOT NULL,
    primary key(id),
    FOREIGN KEY (people_id) REFERENCES people(people_id) on delete cascade,
    FOREIGN KEY (role_id) REFERENCES roles(role_id) on delete cascade
);

SELECT * from peopleroles



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer


-- Assuming you have a roles table with role_id and role_name
-- Adjust the table and column names based on your actual database schema.

INSERT INTO peopleroles (people_id, role_id, date_assigned) VALUES 
(1, 2, '2020-07-13'),  -- Person 1 is a Developer
(2, 5, '2020-08-24'),  -- Person 2 is a Boss
(2, 6, '2020-08-24'),  -- Person 2 is a Mentor
(3, 2, '2015-04-06'),  -- Person 3 is a Developer
(3, 4, '2015-04-06'),  -- Person 3 is a Team Lead
(4, 3, '2022-12-04'),  -- Person 4 is a Recruit
(5, 3, '2023-02-25'),  -- Person 5 is a Recruit
(6, 2, '2018-03-07'),  -- Person 6 is a Developer
(6, 1, '2018-03-07'),  -- Person 6 is a Designer
(7, 1, '2016-06-15'),  -- Person 7 is a Designer
(8, 1, '2021-04-29'),  -- Person 8 is a Designer
(8, 4, '2021-04-29'),  -- Person 8 is a Team Lead
(9, 2, '2023-08-02'),  -- Person 9 is a Developer
(10, 2, '2021-09-30'), -- Person 10 is a Developer
(10, 1, '2021-09-30'); -- Person 10 is a Designer




SELECT * from peopleroles
