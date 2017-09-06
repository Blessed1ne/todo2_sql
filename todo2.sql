Brians-MacBook-Pro:Desktop briankibagendi$ psql todolistdb
psql (9.6.5)
Type "help" for help.

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Dog','Walk the dog','5','2017-04-08');
INSERT 0 1
todolistdb=# SELECT * FROM todoes;
ERROR:  relation "todoes" does not exist
LINE 1: SELECT * FROM todoes;
                      ^
todolistdb=# SELECT * FROM todos;
 todoid |  title   |     details      | priority |     created_at      | completed_at
--------+----------+------------------+----------+---------------------+--------------
      3 | Food     | Grocery shop     |        2 | 2017-04-08 07:00:00 |
      4 | Hospital | Annual checkup   |        3 | 2017-07-07 08:00:00 |
      5 | Pick up  | Grab from school |        4 | 2017-08-08 06:30:00 |
      6 | Dinner   | Cook dinner      |        5 | 2017-08-08 05:25:00 |
      7 | Dog      | Walk the dog     |        5 | 2017-04-08 00:00:00 |
(5 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at,completed_at) VALUES('Exercise','Go to the gym','8','2017-04-08','current_timestamp WHERE todoid = 8);
todolistdb'# SELECT * FROM todos;
todolistdb'# SELECT * FROM todos;
todolistdb'# ';
todolistdb(# INSERT INTO todos(title,details,priority,created_at,completed_at) VALUES('Exercise','Go to the gym','8','2017-04-08','2017-04-08');
todolistdb(# SELECT * FROM todos;
todolistdb(# );
ERROR:  syntax error at or near ";"
LINE 4: ';
         ^
todolistdb=# SELECT * FROM todos;
 todoid |  title   |     details      | priority |     created_at      | completed_at
--------+----------+------------------+----------+---------------------+--------------
      3 | Food     | Grocery shop     |        2 | 2017-04-08 07:00:00 |
      4 | Hospital | Annual checkup   |        3 | 2017-07-07 08:00:00 |
      5 | Pick up  | Grab from school |        4 | 2017-08-08 06:30:00 |
      6 | Dinner   | Cook dinner      |        5 | 2017-08-08 05:25:00 |
      7 | Dog      | Walk the dog     |        5 | 2017-04-08 00:00:00 |
(5 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at,completed_at) VALUES('Exercise','Go to the gym','8','2017-04-08','current_timestamp WHERE todoid = 8');
ERROR:  date/time value "current" is no longer supported
LINE 1: ...ALUES('Exercise','Go to the gym','8','2017-04-08','current_t...
                                                             ^
todolistdb=# INSERT INTO todos(title,details,priority,created_at,completed_at) VALUES('Exercise','Go to the gym','8','2017-04-08','2017-04-08');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |  title   |     details      | priority |     created_at      |    completed_at
--------+----------+------------------+----------+---------------------+---------------------
      3 | Food     | Grocery shop     |        2 | 2017-04-08 07:00:00 |
      4 | Hospital | Annual checkup   |        3 | 2017-07-07 08:00:00 |
      5 | Pick up  | Grab from school |        4 | 2017-08-08 06:30:00 |
      6 | Dinner   | Cook dinner      |        5 | 2017-08-08 05:25:00 |
      7 | Dog      | Walk the dog     |        5 | 2017-04-08 00:00:00 |
      8 | Exercise | Go to the gym    |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
(6 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at,completed_at) VALUES('Yoga','Do daily yoga practice','9','2017-05-09 06:00:00','2017-05-09 06:30:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |  title   |        details         | priority |     created_at      |    completed_at
--------+----------+------------------------+----------+---------------------+---------------------
      3 | Food     | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up  | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner   | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog      | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga     | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
(7 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at,) VALUES('Meditate','Do daily meditation','10','2017-06-10 07:00:00');
ERROR:  syntax error at or near ")"
LINE 1: ...SERT INTO todos(title,details,priority,created_at,) VALUES('...
                                                             ^
todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Meditate','Do daily meditation','10','2017-06-10 07:00:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |  title   |        details         | priority |     created_at      |    completed_at
--------+----------+------------------------+----------+---------------------+---------------------
      3 | Food     | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up  | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner   | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog      | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga     | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
(8 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Therapy','Go to therapist','11','2017-07-11 08:00:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |  title   |        details         | priority |     created_at      |    completed_at
--------+----------+------------------------+----------+---------------------+---------------------
      3 | Food     | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up  | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner   | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog      | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga     | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy  | Go to therapist        |       11 | 2017-07-11 08:00:00 |
(9 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Basketball','Go to practice','12','2017-07-11 09:00:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
(10 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Guitar','guitar practice','13','2017-07-11 09:30:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
(11 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at,current_timestamp) VALUES('French','frech class','13','2017-07-11 09:30:00');
ERROR:  syntax error at or near "current_timestamp"
LINE 1: ...SERT INTO todos(title,details,priority,created_at,current_ti...
                                                             ^
todolistdb=# INSERT INTO todos(title,details,priority,created_at,completed_at) VALUES('French','frech class','13','2017-07-11 09:30:00','2017-07-11 09:30:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class            |       13 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
(12 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at,completed_at) VALUES('Fantasy','fantasy football draft','13','2017-08-12 10:30:00','2017-08-12 14:30:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class            |       13 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     15 | Fantasy    | fantasy football draft |       13 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
(13 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Date','Date night with wife','14','2017-08-12 09:30:00');
INSERT 0 1
todolistdb=# SELECT * FROM todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class            |       13 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     15 | Fantasy    | fantasy football draft |       13 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     16 | Date       | Date night with wife   |       14 | 2017-08-12 09:30:00 |
(14 rows)

todolistdb=# UPDATE todolistdb SET priority = 14 WHERE todoid = 14;
ERROR:  relation "todolistdb" does not exist
LINE 1: UPDATE todolistdb SET priority = 14 WHERE todoid = 14;
               ^
todolistdb=# UPDATE todos SET priority = 14 WHERE todoid = 14;
UPDATE 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     15 | Fantasy    | fantasy football draft |       13 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     16 | Date       | Date night with wife   |       14 | 2017-08-12 09:30:00 |
     14 | French     | frech class            |       14 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
(14 rows)

todolistdb=# UPDATE todos SET priority = 14 WHERE todoid = 15;
UPDATE 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     16 | Date       | Date night with wife   |       14 | 2017-08-12 09:30:00 |
     14 | French     | frech class            |       14 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     15 | Fantasy    | fantasy football draft |       14 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
(14 rows)

todolistdb=# UPDATE todos SET priority = 15 WHERE todoid = 14;
UPDATE 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     16 | Date       | Date night with wife   |       14 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft |       14 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     14 | French     | frech class            |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
(14 rows)

todolistdb=# UPDATE todos SET priority = 15 WHERE todoid = 15;
UPDATE 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     16 | Date       | Date night with wife   |       14 | 2017-08-12 09:30:00 |
     14 | French     | frech class            |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     15 | Fantasy    | fantasy football draft |       15 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
(14 rows)

todolistdb=# UPDATE todos SET priority = 16 WHERE todoid = 16;
UPDATE 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class            |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     15 | Fantasy    | fantasy football draft |       15 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     16 | Date       | Date night with wife   |       16 | 2017-08-12 09:30:00 |
(14 rows)

todolistdb=# UPDATE todos SET priority = 16 WHERE todoid = 15;
UPDATE 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class            |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife   |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft |       16 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
(14 rows)

todolistdb=# UPDATE todos SET priority = 17 WHERE todoid = 15;
UPDATE 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class            |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife   |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
(14 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('School','Economics class','18','2017-09-12 09:30:00');
INSERT 0 1
todolistdb=# select * from todos;
 todoid |   title    |        details         | priority |     created_at      |    completed_at
--------+------------+------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop           |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup         |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school       |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner            |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog           |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym          |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation    |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist        |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice         |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice        |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class            |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife   |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class        |       18 | 2017-09-12 09:30:00 |
(15 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Meeting','Business Meeting with client','19','2017-09-12 10:30:00');
INSERT 0 1
todolistdb=# select * from todos;
 todoid |   title    |           details            | priority |     created_at      |    completed_at
--------+------------+------------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym                |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice       |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class                  |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft       |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
(16 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Baby','Find baby sitter','20','2017-10-12 10:30:00');
INSERT 0 1
todolistdb=# select * from todos;
 todoid |   title    |           details            | priority |     created_at      |    completed_at
--------+------------+------------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym                |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice       |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class                  |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft       |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
     19 | Baby       | Find baby sitter             |       20 | 2017-10-12 10:30:00 |
(17 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Money','Count my millions','21','2017-10-12 11:30:00');
INSERT 0 1
todolistdb=# select * from todos;
 todoid |   title    |           details            | priority |     created_at      |    completed_at
--------+------------+------------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym                |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice       |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class                  |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft       |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
     19 | Baby       | Find baby sitter             |       20 | 2017-10-12 10:30:00 |
     20 | Money      | Count my millions            |       21 | 2017-10-12 11:30:00 |
(18 rows)

todolistdb=# INSERT INTO todos(title,details,priority,created_at) VALUES('Lawyer','Meet with Lawyer','22','2017-10-12 12:30:00');
INSERT 0 1
todolistdb=# select * from todos;
 todoid |   title    |           details            | priority |     created_at      |    completed_at
--------+------------+------------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym                |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice       |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class                  |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft       |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
     19 | Baby       | Find baby sitter             |       20 | 2017-10-12 10:30:00 |
     20 | Money      | Count my millions            |       21 | 2017-10-12 11:30:00 |
     21 | Lawyer     | Meet with Lawyer             |       22 | 2017-10-12 12:30:00 |
(19 rows)

todolistdb=# SELECT id,title,priority,completed_at FROM todos WHERE priority = 3 and completed_at is null;
ERROR:  column "id" does not exist
LINE 1: SELECT id,title,priority,completed_at FROM todos WHERE prior...
               ^
todolistdb=# SELECT todoid,title,priority,completed_at FROM todos WHERE priority = 3 and completed_at is null;
 todoid |  title   | priority | completed_at
--------+----------+----------+--------------
      4 | Hospital |        3 |
(1 row)

todolistdb=# SELECT * FROM todos WHERE complete_at IS NULL ORDER BY priority;
ERROR:  column "complete_at" does not exist
LINE 1: SELECT * FROM todos WHERE complete_at IS NULL ORDER BY prior...
                                  ^
HINT:  Perhaps you meant to reference the column "todos.completed_at".
todolistdb=# SELECT * FROM todos WHERE completed_at IS NULL ORDER BY priority;
 todoid |   title    |           details            | priority |     created_at      | completed_at
--------+------------+------------------------------+----------+---------------------+--------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
     19 | Baby       | Find baby sitter             |       20 | 2017-10-12 10:30:00 |
     20 | Money      | Count my millions            |       21 | 2017-10-12 11:30:00 |
     21 | Lawyer     | Meet with Lawyer             |       22 | 2017-10-12 12:30:00 |
(15 rows)

todolistdb=# SELECT * FROM todos ORDER BY priority, created_at;
 todoid |   title    |           details            | priority |     created_at      |    completed_at
--------+------------+------------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      8 | Exercise   | Go to the gym                |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice       |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class                  |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft       |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
     19 | Baby       | Find baby sitter             |       20 | 2017-10-12 10:30:00 |
     20 | Money      | Count my millions            |       21 | 2017-10-12 11:30:00 |
     21 | Lawyer     | Meet with Lawyer             |       22 | 2017-10-12 12:30:00 |
(19 rows)

todolistdb=# SELECT * FROM todos WHERE created_at BETWEEN '2017-08-06' AND '2017-09-06' AND completed_at IS NULL ORDER BY priority;
 todoid |  title  |       details        | priority |     created_at      | completed_at
--------+---------+----------------------+----------+---------------------+--------------
      5 | Pick up | Grab from school     |        4 | 2017-08-08 06:30:00 |
      6 | Dinner  | Cook dinner          |        5 | 2017-08-08 05:25:00 |
     16 | Date    | Date night with wife |       16 | 2017-08-12 09:30:00 |
(3 rows)

todolistdb=# SELECT * FROM todos ORDER BY priority;
 todoid |   title    |           details            | priority |     created_at      |    completed_at
--------+------------+------------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym                |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice       |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class                  |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft       |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
     19 | Baby       | Find baby sitter             |       20 | 2017-10-12 10:30:00 |
     20 | Money      | Count my millions            |       21 | 2017-10-12 11:30:00 |
     21 | Lawyer     | Meet with Lawyer             |       22 | 2017-10-12 12:30:00 |
(19 rows)

todolistdb=# SELECT * FROM todos WHERE completed_at IS NULL order by priority, created_at limit 1;
 todoid | title |   details    | priority |     created_at      | completed_at
--------+-------+--------------+----------+---------------------+--------------
      3 | Food  | Grocery shop |        2 | 2017-04-08 07:00:00 |
(1 row)

todolistdb=# SELECT * FROM todos;
 todoid |   title    |           details            | priority |     created_at      |    completed_at
--------+------------+------------------------------+----------+---------------------+---------------------
      3 | Food       | Grocery shop                 |        2 | 2017-04-08 07:00:00 |
      4 | Hospital   | Annual checkup               |        3 | 2017-07-07 08:00:00 |
      5 | Pick up    | Grab from school             |        4 | 2017-08-08 06:30:00 |
      6 | Dinner     | Cook dinner                  |        5 | 2017-08-08 05:25:00 |
      7 | Dog        | Walk the dog                 |        5 | 2017-04-08 00:00:00 |
      8 | Exercise   | Go to the gym                |        8 | 2017-04-08 00:00:00 | 2017-04-08 00:00:00
      9 | Yoga       | Do daily yoga practice       |        9 | 2017-05-09 06:00:00 | 2017-05-09 06:30:00
     10 | Meditate   | Do daily meditation          |       10 | 2017-06-10 07:00:00 |
     11 | Therapy    | Go to therapist              |       11 | 2017-07-11 08:00:00 |
     12 | Basketball | Go to practice               |       12 | 2017-07-11 09:00:00 |
     13 | Guitar     | guitar practice              |       13 | 2017-07-11 09:30:00 |
     14 | French     | frech class                  |       15 | 2017-07-11 09:30:00 | 2017-07-11 09:30:00
     16 | Date       | Date night with wife         |       16 | 2017-08-12 09:30:00 |
     15 | Fantasy    | fantasy football draft       |       17 | 2017-08-12 10:30:00 | 2017-08-12 14:30:00
     17 | School     | Economics class              |       18 | 2017-09-12 09:30:00 |
     18 | Meeting    | Business Meeting with client |       19 | 2017-09-12 10:30:00 |
     19 | Baby       | Find baby sitter             |       20 | 2017-10-12 10:30:00 |
     20 | Money      | Count my millions            |       21 | 2017-10-12 11:30:00 |
     21 | Lawyer     | Meet with Lawyer             |       22 | 2017-10-12 12:30:00 |
(19 rows)

todolistdb=#
