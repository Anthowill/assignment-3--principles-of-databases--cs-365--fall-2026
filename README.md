# Fall 2026 Principles of Databases — Assignment 3

* **Read these instructions repeatedly until you understand, then begin your project. If something is not clear, ask.**

## ❖・Before You Begin・❖

1. Log in to GitHub.
2. Fork this repo(sitory). See [this video](http://code-warrior.github.io/tutorials/git/github/forking-and-cloning-at-the-github-web-site/) on how to carry out this step and step `3`.
3. Clone your fork, using either the web site or the GitHub Desktop client.
4. Checkout your personalized branch, the one with your name and GitHub handle.

---

## ❖・Introduction・❖

CETA’s faculty is spread across multiple buildings and departments on campus, with each faculty member being assigned a unique phone extension. A subset of faculty members directs various departmental programs, and various ranks are associated with the faculty as a whole.

This repository contains a foundational database, consisting of four entity sets, that represents CETA’s faculty contact info:

* `faculty`
* `phone`
* `room`
* `program`

An explanation of each entity set appears in the **File List** section below. As the database stands, no single entity set relies on another: A faculty member is not assigned a phone, but should have one assigned (a cardinality of `1:1`); a faculty member is not assigned an office, but should have one. (What’s the cardinality of this relationship? Would the cardinality of an adjunct office differ to that of a full-time faculty member’s?) And, a program, like the Masters in Computer Science, must have a director who is a faculty member, but not all faculty members are program directors.

Your task, discussed in detail below, is to complete the database.

---

## ❖・File List・❖

None of the `.gitignore` files or the `README.md` file is discussed below, for obvious reasons.

### <a href="database/setup.sql">`database/setup.sql`</a>

This file creates the database we’re working with, `ceta_faculty`, then `SOURCE`s the partials used to stand up the database (See the **Standing Up the Database** section below)

### <a href="database/_01--session_variables.sql">`database/_01--session_variables.sql`</a>

Session variables that are useful for standing up the existing database’s table structure

### <a href="database/_02--faculty.sql">`database/_02--faculty.sql`</a>

The `faculty` entity set representing CETA’s current faculty, as of fall 2026

### <a href="database/_03--phone.sql">`database/_03--phone.sql`</a>

The `phone` entity set of active and inactive phone extensions

### <a href="database/_04--room.sql">`database/_04--room.sql`</a>

The `room` entity set representing various labs, studios, classrooms, and offices spread throughout a subset of UHart buildings associated with CETA

### <a href="database/_05--program.sql">`database/_05--program.sql`</a>

The `program` entity set of special programs run by CETA faculty

---

## ❖・Standing Up the Database・❖

### 1. Start the MySQL Server

Recall that the MySQL server needs to be running before doing any work with MySQL.

#### macOS

Launch `Settings`, then navigate to the tail of the page. MySQL should appear at the end.

#### Windows

If you installed MySQL as a service, then you’ll be able to run `net start XX`, replacing `XX` with your version of MySQL. Locate your MySQL version by doing the following:

1. Launch the `run` prompt by typing the `start/Windows` key + `R`
2. Enter `services.msc`
3. Look for MySQL and note the version number.

##### PowerShell

Launch PowerShell as an admin, then start the service: `net start MYSQLXX`

To stop it, `net stop MYSQLXX`

##### Cygwin

In Cygwin, you’ll need to add the following to your `.bashrc` file:

```sh
PATH=$PATH/cygdrive/c/Windows/System32/
```

This assumes you have `net.exe` in `System32`. Verify by running `gcm net` in PowerShell.

### 2. Open up your command line interface, or CLI (PowerShell, Cygwin, Terminal, etc)

### 3. Navigate to this repository’s `database` folder

### 4. Log in to MySQL

#### MySQL 8.x

```sh
mysql -u root -p
```

#### MySQL 9.6.x

```sh
mysql --commands -u root -p
```

### 5. Source the Setup File

```sql
SOURCE setup.sql
```

---

## ❖・Rules・❖

* The new relationships should be included in their own `.sql` files, following the structure of this repository.
* The new relationships must be included in the `database` folder. **Do not work in any other folder**
* `setup.sql` should load the new `.sql` files. Thus, running `setup.sql` should stand up the entire database, including your new relationships

* Do not alter `ceta-faculty-phone-office-list--page-01.png` or `ceta-faculty-phone-office-list--page-02.png`.

---

## ❖・What You Need To Do・❖

It’s common in industry to have an Excel — or worse, a paper document — of data that needs to be converted into a database. For this project, you will need to consult the included `ceta-faculty-phone-office-list--page-01.png` and `ceta-faculty-phone-office-list--page-02.png` documents. As previously mentioned, the `faculty`, `phone`, `room`, and `program` aspects of these documents have been implemented here, but the relations are missing. Read on.

### 1. Complete the Schema

* Implement a relation between `faculty` and `phone`. Follow the convention found in this project to add your relation via a `.sql` file to the `database` folder
* Implement a relation between `faculty` and `room`. Follow the convention found in this project to add your relation via a `.sql` file to the `database` folder
* Implement a relation between `faculty` and `program`. Follow the convention found in this project to add your relation via a `.sql` file to the `database` folder
* Add indexes to each table, using `EXPLAIN` to help inform you about which column, or columns, perform best on the index
* Apply foreign keys with cascades where logical to ensure the database is as robust as possible

### 2. Implement E/R Diagram

Implement an E/R diagram of the entire database — complete with cardinality and your new relations — and add it to this repo. _The file **must** be named `er-diagram` with a `.png`, `.jpg`, `.jpeg`, `.pdf`, or `.heic` extension._ **_It must not be larger than 1MB_**

### 3. Commands to Implement

For the following, you need to author MySQL commands to address the numbered questions. Include your answers in the included `database/commands.sql` file. **Your commands can only be included in that file.**

1️⃣ Get the unique names of all faculty members and the departments to which they belong, ordered by department. Format the 56 rows in the result as follows, sans vertical ellipsis.

```sql
+-------------------------+---------------------------------------------------+
| Name                    | Department                                        |
+-------------------------+---------------------------------------------------+
| Alan Hadad              | A & S — Math                                      |
| Dan Horowitz            | Architecture                                      |
                          ●
                          ●
                          ●
| Rudy Al Ahmar           | Mechanical, Aerospace, and Acoustical Engineering |
| Suhash Ghosh            | Mechanical, Aerospace, and Acoustical Engineering |
+-------------------------+---------------------------------------------------+
```

2️⃣ Get the names, department, and office locations of all Computing Sciences faculty Members, display by name. Format the result as follows.

```sql
+--------------------+--------------------+----------+
| Name               | Department         | Location |
+--------------------+--------------------+----------+
| Abu Tayeen         | Computing Sciences | D 333    |
| Ahmed Bensaoud     | Computing Sciences | UT 304D  |
| Andrew Jung        | Computing Sciences | D 217    |
| Carolyn Pe Rosiene | Computing Sciences | D 335    |
| Ingrid Russell     | Computing Sciences | D 343    |
| Mingjun Li         | Computing Sciences | UT 302G  |
| Olusola Agboola    | Computing Sciences | D 310A   |
| Roy Vanegas        | Computing Sciences | D 310B   |
+--------------------+--------------------+----------+
```

3️⃣ Get the names, department, office building and location, and extension of all Computing Sciences faculty members, again, listed by name. The result must match the following.

```sql
+--------------------+--------------------+----------+-----------+
| Name               | Department         | Location | Extension |
+--------------------+--------------------+----------+-----------+
| Abu Tayeen         | Computing Sciences | D 333    |      4104 |
| Ahmed Bensaoud     | Computing Sciences | UT 304D  |      5481 |
| Andrew Jung        | Computing Sciences | D 217    |      4917 |
| Carolyn Pe Rosiene | Computing Sciences | D 335    |      4699 |
| Ingrid Russell     | Computing Sciences | D 343    |      4191 |
| Mingjun Li         | Computing Sciences | UT 302G  |      5420 |
| Olusola Agboola    | Computing Sciences | D 310A   |      4502 |
| Roy Vanegas        | Computing Sciences | D 310B   |      5925 |
+--------------------+--------------------+----------+-----------+
```

4️⃣ Get the distinct names, departments, office building and room, and extension of faculty members whose offices are on the second floor of the United Technologies building. The resulting set consisting of 22 rows must be displayed as follows, sans vertical ellipsis.

```sql
+-------------------------+---------------------------------------------------+----------+-----------+
| Name                    | Department                                        | Location | Extension |
+-------------------------+---------------------------------------------------+----------+-----------+
| Somaye Seddighikhavidak | Architecture                                      | UT 220   |      4614 |
| David Pines             | Civil, Environmental, and Biomedical Engineering  | UT 231   |      4560 |
                          ●
                          ●
                          ●
| Jing Yang               | Mechanical, Aerospace, and Acoustical Engineering | UT 240   |      4044 |
| Akin Tatoglu            | Mechanical, Aerospace, and Acoustical Engineering | UT 243   |      4591 |
+-------------------------+---------------------------------------------------+----------+-----------+
```

5️⃣ Display the distinct full names of faculty members who run special programs. Include in the resulting set the department to which the program belongs. The 10-row resulting set must look exactly like the following:

```sql
+----------------------+---------------+----------------------------------------------------------------------------------------------+
| Faculty              | ...directs... | Program (Department)                                                                         |
+----------------------+---------------+----------------------------------------------------------------------------------------------+
| Christopher Jasinski |               | Acoustical Engineering and Music Program (Mechanical, Aerospace, and Acoustical Engineering) |
| Paul Slaboch         |               | Aerospace Engineering (Mechanical, Aerospace, and Acoustical Engineering)                    |
| Michael deAlmeida    |               | Audio Engineering (Electrical and Computer Engineering)                                      |
| Akin Tatoglu         |               | Autonomous Mobile Robotics Group (Mechanical, Aerospace, and Acoustical Engineering)         |
| Takafumi Asaki       |               | Biomedical Engineering (Civil, Environmental, and Biomedical Engineering)                    |
| Xin Shen             |               | Computer and Electronic Engineering Technology (Electrical and Computer Engineering)         |
| Saeid Moslehpour     |               | Computer Engineering (Electrical and Computer Engineering)                                   |
| Dan Horowitz         |               | Master of Arts in Architecture (Architecture)                                                |
| Abu Tayeen           |               | Masters Program in Computing Sciences (Computing Sciences)                                   |
| Kiwon Sohn           |               | Robotics Engineering (Electrical and Computer Engineering)                                   |
+----------------------+---------------+----------------------------------------------------------------------------------------------+
```

6️⃣ Show the full names of faculty members who are assistant professors, associate professors, or professors, displayed by rank. The 48-row set must look like the following, sans ellipsis:

```sql
+-------------------------+---------------------+
| Faculty                 | Rank                |
+-------------------------+---------------------+
| Solaleh Miar            | Assistant Professor |
| Rudy Al Ahmar           | Assistant Professor |
                          ●
                          ●
                          ●
| Yang Yang               | Professor           |
| Akram Abu-aisheh        | Professor           |
+-------------------------+---------------------+
```

---

7️⃣ Professor Agboola has separated from the University. His office used to be in D 310A. Professor Li, who used to sit in UT 302G, has recently moved into Professor Agboola’s old office. Update the database to reflect Professor Li’s move. Also, Professor Li’s extension has stayed the same, so make sure to deactivate the extension assigned to Professor Agboola.

**Note**: Include in `commands.sql` all the commands required to carry out this update. Also, ensure the `is_active` column shows `TRUE` or `FALSE`, not `1` or `0`.

**Before**

```sql
+--------------------+--------------------+----------+-----------+
| Name               | Department         | Location | Extension |
+--------------------+--------------------+----------+-----------+
| Abu Tayeen         | Computing Sciences | D 333    |      4104 |
| Ahmed Bensaoud     | Computing Sciences | UT 304D  |      5481 |
| Andrew Jung        | Computing Sciences | D 217    |      4917 |
| Carolyn Pe Rosiene | Computing Sciences | D 335    |      4699 |
| Ingrid Russell     | Computing Sciences | D 343    |      4191 |
| Mingjun Li         | Computing Sciences | UT 302G  |      5420 |
| Olusola Agboola    | Computing Sciences | D 310A   |      4502 |
| Roy Vanegas        | Computing Sciences | D 310B   |      5925 |
+--------------------+--------------------+----------+-----------+

+-----------+-----------+
| extension | is_active |
+-----------+-----------+
|      4502 | TRUE      |
+-----------+-----------+
```

**After**

```sql
+--------------------+--------------------+----------+-----------+
| Name               | Department         | Location | Extension |
+--------------------+--------------------+----------+-----------+
| Abu Tayeen         | Computing Sciences | D 333    |      4104 |
| Ahmed Bensaoud     | Computing Sciences | UT 304D  |      5481 |
| Andrew Jung        | Computing Sciences | D 217    |      4917 |
| Carolyn Pe Rosiene | Computing Sciences | D 335    |      4699 |
| Ingrid Russell     | Computing Sciences | D 343    |      4191 |
| Mingjun Li         | Computing Sciences | D 310A   |      5420 |
| Roy Vanegas        | Computing Sciences | D 310B   |      5925 |
+--------------------+--------------------+----------+-----------+

+-----------+-----------+
| extension | is_active |
+-----------+-----------+
|      4502 | FALSE     |
+-----------+-----------+
```

---

## ❖・Grading・❖

| Item                                                                             | Points |
|----------------------------------------------------------------------------------|:------:|
| Assignment directions followed correctly                                         |  `10`  |
| Schema completed per directions                                                  |  `30`  |
| Code is neat and professional, according to scaffold formatting and EditorConfig |  `10`  |
| E/R diagram is logical, readable, and implemented in this assignment             |  `10`  |
| Command 1 works, is optimal, and renders its result per directions               |  `5`   |
| Command 2 works, is optimal, and renders its result per directions               |  `5`   |
| Command 3 works, is optimal, and renders its result per directions               |  `5`   |
| Command 4 works, is optimal, and renders its result per directions               |  `5`   |
| Command 5 works, is optimal, and renders its result per directions               |  `5`   |
| Command 6 works, is optimal, and renders its result per directions               |  `5`   |
| Command 7 works, is optimal, and renders its result per directions               |  `10`  |

---

## ❖・Due・❖

Monday, 30 November 2026, at 2:00 PM. ***Note*: Per the syllabus, NO late submissions will be accepted**

---

## ❖・Submission・❖

You will need to issue a pull request back into the original repo, the one from which your fork was created for this project. See the **Issuing Pull Requests** section of [this site](http://code-warrior.github.io/tutorials/git/github/index.html) for help on how to submit your assignment.

**Note**: This assignment may **only** be submitted via GitHub. **No other form of submission will be accepted**.
