function [ ] = waitBar( time )
%WAITBAR 延时器
% 延迟时间 time ms

h=waitbar(0,'Loading...');
n=1;
for i=1:time;
    waitbar(i/time)
    n=n+i;
end
close(h)

end

