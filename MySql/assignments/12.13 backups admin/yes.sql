select @@secure_file_priv;

show variables like 'datadir%';

select * from student into outfile "d:\\database_backup\\backup.txt";

load data in file "d:\\database_backup\\backup.txt" into table student;