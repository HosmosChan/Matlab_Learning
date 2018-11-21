function [ conn ] = connectSQL( dbName,userName,password,dbUrl )
%CONNECTSQL 连接数据库
% dbName为数据库库名(如bbs),userName为用户名(如root),password为用户名密码(如123456),dbUrl为该库地址(如jdbc:mysql://localhost:3306/bbs)
conn = database(dbName,userName,password,'com.mysql.jdbc.Driver',dbUrl);

end