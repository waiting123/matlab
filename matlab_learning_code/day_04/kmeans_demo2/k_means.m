function [ idx, ctr ] = k_means( data, k, iterations )  
%{  
�������ܣ�  
    ������ʵ��k-means����  
  
����˵����  
    data������������ݣ�û�������Ϣ  
    k����������������Ŀ  
    iterations���������㷨�ĵ����������ɲ�����  
    �㷨ֹͣ��������������һ�����ɣ��ﵽԤ��������������������Ĳ��ٸı���߸ı��С��  
  
�������أ�  
    idx�����ݼ��������  
    ctr���洢k�������е�λ��  
%}  
  
% m��ʾ���ݵĹ�ģ��n��ʾ���ݵ�ά��  
[m, n] = size(data);  
if k > m  
    disp('����Ҫ�������Ŀ�Ѿ��������ݵ���Ŀ���޷����࣡');  
    return;  
end  
  
idx = zeros(m, 1);  
ctr = zeros(k, n);  
  
% nargin�������ж�������������ĺ����������Ϳ�����Բ�ͬ�����ִ�в�ͬ�Ĺ��ܡ�  
if nargin == 2  
    iterations = 0;  
end  
  
% ������һ�εľ�������  
u = zeros(k, n);  
% ������º�ľ�������  
c = zeros(k, n);  
  
% ѡ����ʼ����  
t = 1;  
for i=1:k  
    % ��ʼ���ĵ�ѡȡ��ʽΪ���ӵ�һ�����ݿ�ʼ��ÿ��m/k���ѡȡһ�����ݵ㣬ֱ���õ�k���������  
    u(i, :) = data(t, :);  
    t = t + m/k;  
end  
  
iteration = 1;  
while true  
    % ����ÿ�����ݵ㵽������ĵľ��룬�����ݵ���뵽��֮����������  
    for i=1:m  
        % dis����ÿ�����ݵ㵽k��������ĵľ���  
        dis = zeros(k, 1);  
        for j=1:k  
            % ��������ݿ���������ά�ȵģ��������ʹ��ŷʽ����  
            sum_dis = 0;  
            for t=1:n  
                sum_dis = sum_dis + (u(j, t) - data(i, t))^2;  
            end  
            dis(j) = sqrt(sum_dis);  
        end  
          
        % �ҳ����ݵ���k����������У�������С��һ���������ݵ���뵽��һ����  
        [~, index] = sort(dis);  
        idx(i, 1:2) = data(i, :);  
        idx(i, 3) = index(1);  
    end  
      
    % ÿһ�ξ���֮��Ӧ�����¼����������  
    for i=1:k  
        total_dis = zeros(1, n);  
        num_i = 0;  
          
        for j=1:m  
            if idx(j, 3) == i  
                for t=1:n  
                    total_dis(1, t) = total_dis(1, t) + data(j, t);  
                end  
                num_i = num_i + 1;  
            end  
        end  
        c(i, :) = total_dis(1, :)/num_i;  
    end  
      
    % �㷨����  
    % �����˵������������Ѿ�������iterations�Σ��˳��㷨  
    if iterations ~= 0 && iteration == iterations  
        ctr = c;  
        break;  
    elseif iterations == 0 && norm(c-u) < 0.01  
        ctr = c;  
        break;  
    end  
      
    iteration = iteration + 1; u = c;  
end  
  
end  