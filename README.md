# World Populations v0.0.0 (2020-05-22)
In this project, [SQLite](https://www.sqlite.org/index.html) queries are used to analyze data and answer questions (see files `queries1.sql` and `queries2.sql`) related to world populations.

There two SQLite databases: `world_populations_I.sqlite` (for `queries1.sql`) and `world_populations_II.sqlite` (for `queries2.sql`), the schemas of which are shown below:

### _world_populations_I_
Table `Population_Years`
**Column** | **Type** | **Notes**
-----------|----------|---------------
country    | STRING   |
population | NUMBER   | (in millions)
year       | NUMBER   |
<br/>

### _world_populations_II_
Table `Countries`

**Column** | **Type** | **Notes**
-----------|----------|-------------
id         | INTEGER  | Primary Key
name       | TEXT     |
continent  | TEXT     | 

Table `Population_Years`
**Column** | **Type** | **Notes**
-----------|----------|---------------
id         | INTEGER  | Primary Key
population | NUMBER   | (in millions)
year       | NUMBER   |
country_id | INTEGER  | Foreign Key

<br/><br/><br/><br/><br/><br/><br/><br/><br/>
_* Project idea, databases adopted from Codecademy_
 
&copy; 2020 Daniel Xiang
