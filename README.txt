Hello, I created a blog system which enables users to add posts, delete, and comment on other posts. 
I'm yet to include more features.

How to load it

1. Copy the folder ciblog to htdocs folder
2.Go to application/config/database.php, then uncomment the section labeled, for local database. After doing that,
comment the similar section labeled, for remote database.
3. Go to application/config/config.php, then uncomment the base url on line 27 and comment out line 28
4. On the same file, uncomment the base url on line 107 then comment out the one on line 108
5. Create a database called 'ciblog' and import the tables using the scripts which i've attached
in the file ciblog.sql

I used code ignitter PHP framework 