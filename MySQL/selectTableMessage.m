function [ selectMessage ] = selectTableMessage( conn,tableName,varargin )
%SELECTTABLEMESSAGE 查询数据库(单表精确查找,传值varargin为数组格式或单值)
% conn为连接数据库后获取的数据库,tableName为表名,varargin为搜索表包含的元素字段
% 返回查找内容selectMessage(cursor坐标点类型)
if(isnan(varargin{1}))
table = exec(conn,['select * from ',tableName]);
else
    message = ['select * from ',tableName,' where ',varargin{1}];
    if(nargin>3)
        for i = 1:(nargin-3)
            messages = [message,' and ',varargin{i+1}];
        end
    end
    table = exec(conn,messages);
end
selectMessage = fetch(table);
end