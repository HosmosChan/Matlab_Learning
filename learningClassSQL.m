%{
learningClassSQL.m
%}
conn = connectSQL(dbName,userName,password,dbUrl);
tableName = 'tableName';
key = {'password = "529f7e4923b35483585f81f1b126d4b0"';'sex = 1'};
users = selectTableMessage(conn,tableName,key{1},key{2});
sql = users.Data;