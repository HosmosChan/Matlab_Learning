%{
learningClassSQL.m
%}
conn = connectSQL(dbName,userName,password,dbUrl);
tableName = 'tableName';
users = exec(conn,['select * from ',tableName]);
users = fetch(users);
sql = users.Data;