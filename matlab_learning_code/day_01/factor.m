function f = factor(n)   
         if n<=1
             f = 1;
         else
             f = factor(n-1)*n;  %�ݹ������(n-1)!
         end
end