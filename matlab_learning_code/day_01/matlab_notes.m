% Creation        : 16-May-2017 9:50
% Last Revision : 16-May-2017 9:50
% Author           : Lingyong Li {smilelingyong@163.com}
% File Type        : matlab
% 
% Learning basic acknowledge of matlab, and make some notes.
% -------------------------------------------------------------------------
% Lingyong Li @ 2017

%%  常见通用命令  P28
% clc                     清除命令窗口的显示内容
% clear                  清除Matlab工作空间中保存的变量
% clear + 变量名    清理内存指定变量
% clf                      清除图形窗口  clear figure
% who                   显示当前变量名列表
% whos                  显示变量详细列表
% which+函数名     证实该函数是否在当前路径
% what                  列出当前路径的所有matlab文件
% load                   加载外部文件
% save                  保存文件到外部
% dir                     显示当前工作目录的文件和子目录清单
% cd                     显示或设置当前工作目录
% type                  显示指定m文件的内容
% help 或 doc        获取在线帮助
% lookfor+关键字   这个是matlab中的谷歌，模糊查询
% diary on
% diary off             记录命令行命令+运行结果，并以纯文本方式存储，方便编辑，正式版推荐使用publish
% %#ok                 除去编辑器的警告！！！
% quit 或 exit         关闭/推出MATALB

%%  必须牢记注意事项
% 1. 输入时，标点必须是英文状态下的
% 2. 大多数情况下，matlab对空格不予处理
% 3. 小括号代表运算级别，中括号用于生成矩阵，大括号用于构成单元数组
% 4. 分号;的作用：不显示运算结果，但对图形窗口不起作用。分号也用于区分行
% 5. 逗号,的作用：函数参数分隔符，也用于区分行，显示运算结果，当然不加标点也显示运算结果
% 6. 冒号:多用于数组
% 7. 续行号...不能放在等号后面使用，不能放在变量名中间使用，起作用时默认显蓝色
% 8. 双引号'string'是字符串的标识符
% 9. 感叹号!用于调用操作系统运算
% 10.百分号%是注释号，百分号后面直到行末的语句matlab跳过执行.另外还有一个块注释，即对多行一次注释，会使用到，格式为（注意%{ 和%}都要单独成行）
% %{ 
% %}
% 11.乘号*总是不能省略的，除了表示复数，比如2+3i时可以省略
% 12.除号/或\，它两个的关系是：a除以b表示为a/b，或b\a
% 13.等号=用于赋值
% 14.双等号==表示数学意义上的等号
% 15.主窗口里面，输入时，换行用Shift+Enter
% 16.主窗口里面，运行程序，执行命令用Enter
% 17.矩阵中用圆括号表示下标，单元数组用大括号表示下标
% 18.对变量名的基本要求：区分大小写，不超过63个字符，以字母开头，只能是字母，数字和下划线

% 19.clc即clear command（清屏），
% clf即clear figure（清理图形窗口）
% clear 清理内存所有变量，
% clear+变量名 清理内存指定变量
% edit+函数名 查看或编辑源文件
% who 显示当前变量名列表
% whos 显示变量详细列表
% which+函数名 证实该函数是否在当前路径
% what 列出当前路径的所有matlab文件
% load 加载外部文件
% save 保存文件到外部

% 20.matlab的帮助函数：
% help
% help+函数名或help+函数类名 精确查询
% helpwin 打开帮助窗口
% helpwin+函数名 精确查询
% helpdesk 打开帮助窗口
% doc 打开帮助窗口
% doc+函数名 打开帮助窗口， 精确查询 
% lookfor+关键字 这个是matlab中的谷歌，模糊查询

% 21.有时候程序会陷入死循环，这时把操作切换到运行窗口，按Ctrl+C结束运行

% 22.函数式M文件的文件名，在matlab主窗口下不区分大小写，
% 函数式M文件中，变量都是局部变量
% 脚本式M文件中，变量都是全局变量

% 23.主窗口中，几个有用的快捷键：
% 在命令提示符后，可以用键盘上的上箭头和下箭头调用历史命令行
% Esc 清除当前输入行
% Ctrl+左箭头，光标左移一个单词
% Ctrl+右箭头，光标右移一个单词
% Alt+Backspace 恢复上次删除

% 24.编辑器（Editor）中的几个有用的快捷键：
% Tab或Ctrl+] 增加缩进，对多行有效
% Ctrl+[ 减少缩进，对多行有效
% Ctrl+I 自动缩进，对多行有效
% Ctrl+R 注释，对多行有效
% Ctrl+T 去掉注释，对多行有效
% Ctrl+B 括号配对检测，未配对会有红色波浪线标出
% F12 设置或取消断点
% F5 运行程序

%%   数据及其运算  P36
%% Matlab 预定义的变量 
% ans      最近的计算结果的变量名
% pi         圆周率π
% e          exp
% eps      MATLAB定义的正的极小值=2.2204e-16
% inf        ∞值，无限大
% NaN     非数，0/0、∞/ ∞
% i或j       虚数单元，sqrt(-1)
% 
% 注意：每当MATLAB启动完成，这些变量就被产生；
%       MATLAB中，被0除不会引起程序中断，给出报警的同时用inf或NaN给出结果。
%       用户只能临时覆盖这些预定义变量的值，Clear或重启MATLAB可恢复其值。

%%   数组相关知识  P45
%% 数组的创建
% 创建一维数组变量（行向量）三种方法：
% 1.使用方括号“[ ]”操作符
         a=[1 3 pi 3+5i];  %or a=[1, 3, pi, 3+5i] ,创建数组(行向量)a=[1 3 pi 3+5i] 
         % 输出：a= 1.0000      3.0000      3.1416       3.0000 + 5.0000i
% 2.使用冒号“：”操作符（也等同于创建行向量）
         b=1:10;  % 创建以1~10顺序排列整数为元素的行向量b.！！！注意：这里加（）或者加 [] 都可以得到同样的结果
         % 输出：b=1 2 3 4 5 6 7 8 9 10
         c=1:2:10; 
         % 输出：c=1 3 5 7 9
% 3.利用函数 linespace
        % 函数linspace的基本语法
        % x= linspace(x1, x2, n);
        % 该函数生成一个由n个元素组成的行向量；
        % x1为其第一个元素；
        % x2为其最后一个元素；
        % x1、x2之间元素的间隔=(x2-x1)/(n-1)。
        % 如果忽略参数n，则系统默认生成100个元素的行向量。
        x= linspace(1,2,5);     % 注意！！如果是直接在命令行输入，可以不用打“;”让其直接输出
        % 输出：x=1.0000    1.2500    1.5000    1.7500    2.0000
% 4.利用函数 logspace (不常用)

% 创建列向量的方法：
% 1.使用方括号“[ ]”操作符，使用分号“;”分割行。
        x= [1; 2; 3]
        % 输出：X=1
        %               2
        %               3
% 2.使用冒号“：”操作符
        x= (1:3)'    % “’”表示矩阵的转置，结果同上
        x= [1:3]'
    
% 创建二维数组变量  P51
% 1.使用方括号“[ ]”操作符
        % 使用规则
        % 数组元素必须在“[ ]”内键入；
        % 行与行之间须用分号“;” 间隔，也可以在分行处用回车键间隔；
        % 行内元素用空格“ ”或逗号“,”间隔。
        a2=[1 2 3;4 5 6;7 8 9]; 
        a2=[1,2,3;4,5,6;7,8,9];
        a2=[1:3;4:6;7:9];
        % 结果：a2=
                 % 1  2  3
                 % 4  5  6
                 % 7  8  9
         a=[1 2 3]; b=[2 3 4];  % 由向量构成二维数组
         c=[a;b]
         c=[a b]
% 2.函数创建方法  
% 函数ones(生成全1矩阵)、zeros (生成全0矩阵) 、reshape
% “help elmat”获得基本的矩阵生成和操作函数列表
        ones(3)     % 创建全1的 3*3数组
        ones(3,4)   % 创建全1的 3*4数组
% reshape的使用方法
        a=-4:4     % a= -4 -3 -2 -1 0 1 2 3 4
        b=reshape(a,3,3)    % b=
                            %    -4  -1  2
                            %    -3   0  3
                            %    -2   1  4
         % ！注意：数组元素的排列顺序，从上到下按列排列，先排第一列，然后第二列，… 要求数组的元素总数不变。

%% 数组元素的标识与寻访  P54 其中()圆括号用于访问数组元素
% 1.“全下标（index）”标识
        % 二维数组
        a(2,3); % 表示二维数组a的“第2行第3列”的元素
        a(:,3); % 表示引用所有行的第3个元素，即引用第三列
        %#%！注意“：”表示所有行或列，end表示最后一行或列------------------------

        % 一维数组
        b(2);   % 表示一维数组b的第二个元素

% 2.“单下标”（linear index）标识
        % 即用一个下标来表明元素在数组中的位置
        % ！！！注意：对于二维数组，将每一列连起来（列）！！！,然后从一开始数，其对应编号为其下标引用
        a=zeros(2, 5);
        a(:) = -4:5     % ！！！没看太懂(对每个数组元素赋值)
        %     a =
        %     -4    -2     0     2     4
        %     -3    -1     1     3     5
        % ！！注意:数组的排列顺序是按列先排

% 一维数组元素与子数组的寻访与赋值
        a=linspace(1,10,5)
            % a =
            %     1.0000    3.2500    5.5000    7.7500   10.0000
        a(3)   %寻访a的第3个元素
            % ans =
            %     5.5000
        a([1 2 5])   %寻访a的第1、2、5个元素组成的子数组
            % ans =
            %     1.0000    3.2500   10.0000
        a(1:3)   %寻访前3个元素组成的子数组
            % ans =
            %     1.0000    3.2500    5.5000
        a(3:-1:1)  %由前3个元素 倒序 构成的子数组
            % ans =
            %     5.5000    3.2500    1.0000
        a(3:end)
            % ans =
            %     5.5000    7.7500   10.0000
        a(3:end-1)
            % ans =
            %     5.5000    7.7500
        a([1 2 3 5 5 3 2 1])  
            % ans =
            %     1.0000    3.2500    5.5000   10.0000   10.0000    5.5000    3.2500    1.0000
            % 注意：数组元素可以被任意重复访问，构成长度大于原数组的新数组。
        a(3)=0     % 修改数组a的第3元素值为0
            % a =
            %     1.0000    3.2500    0    7.7500   10.0000
            % 注意：可以修改指定数组元素的值，一次可以修改多个数组元素的值，要修改的数组元素的个数应与送入数组的元素个数相同

% 二维数组元素与子数组的寻访与赋值
        a_2=zeros(2, 4)  % 创建2x4的全0数组
            % a_2 =
            %      0     0     0     0
            %      0     0     0     0
        a_2(:)=1:8
            % a_2 =
            %      1     3     5     7
            %      2     4     6     8      注意：按列排列      
        a_2([2 5 8])  %单下标方式寻访多个元素
            % ans =
            %      2     5     8
         a_2([2 5 8]) = [10 20 30]  %单下标方式修改多个元素
            % a_2 =
            %      1     3    20     7
            %     10     4     6    30
        a_2(:,[2 3])=ones(2)  %双下标方式寻访并修改
            % a_2 =
            %      1      1     1    7
            %      10     1     1    30
        a_2(:,end)  %表示引用最后一列
            % ans =
            %      7
            %     30
        a_2(:,end-1) %表示引用倒数第二列   
            % ans =
            %      1
            %      1
        a_2(:, end:-1:3) %表示引用从最后一列到第3列（倒序）
            % ans =
            %      7     1
            %     30     1
        a_2(end,:)      %表示引用最后一行
            % ans =
            %     10     1     1    30
        a_2(end,[2:4])  %表示引用最后一行中第 2-4个元素
            % ans =
            %      1     1    30
        a_2([4 6])=6:7  %表示将二维数组单下标赋值，对第4-6个元素赋值
            % a_2 =
            %      1     1     1     7
            %     10     6     7    30
        a_2(end,[2:end-1]) %表示引用最后一行，第2-倒数第二个元素
            % ans =
            %      6     7   
        %注意：二维数组可以“单下标”方式或“全下标”方式访问、赋值；
        %“单下标”方式赋值时，等号两边涉及的元素个数必须相等；
        %“全下标”方式赋值时，等号右边数组的大小必须等于原数组中涉及元素构成的子数组的大小。

% size、length函数
        a=ones(4,6)*6   %创建一个4*6的数组，且每个元素均为6
        m=size(a)   %size函数返回变量的大小，即变量数组的行列数
            % m =
            %      4     6
        b = 1:5     %创建一个一维数组
        length(b)   %length函数返回变量数组的最大维数 为5
        c = b'
        length(c)   %维数也为5
    
% 双下标转换为单下标，sub2ind函数
         A = [17 24 1 8; 2 22 7 14; 4 6 13 20];%创建一个二维数组
         % 这里使用了三维数组的寻址方式
         A(:,:,2) = A - 10  %！！将二维数组中的每个元素 -10,用这种方式是为了看到最初的A数组，以及修改后的A，最直接的办法就是 A = A - 10，后面就可以直接引用A(2,1)访问 -8这个元素 
            % A(:,:,1) =
            %     17    24     1     8
            %      2    22     7    14
            %      4     6    13    20
            % A(:,:,2) =
            %      7    14    -9    -2
            %     -8    12    -3     4
            %     -6    -4     3    10     
         A(2,1,2)   %访问第二个数组，中的第二行，第一个元素，-8
            % ans = -8
         sub2ind(size(A),2,1,2)  %使用sub2ind函数将双下标转换为单下标
            % ans = 14
         A(14)
            % ans = -8  其结果与A(2,1,2)一致
        
        
% 单下标转换为双下标，ind2sub函数
        b = zeros(3) %创建一个3*3元素为0的数组变量b
        b(:)=1:9     %对数组元素赋值
            % b =
            %      1     4     7
            %      2     5     8
            %      3     6     9
         index = 4   %设置index为要转换的单下标4，其对应元素正好也为4
         [I,J]=ind2sub(size(b),index)
            % I =       对应其双下标方式的列下标
            %      1
            % J =       对应其单下标方式的列下标
            %      2
         IND = [3 4 5 6] %也可以同时转换多个单下标为双下标
            % I =
            %      3     1     2     3
            % J =
            %      1     2     2     2
        
%% 多维数组  P66
% 在 MATLAB的数据类型中，向量可视为一维数组，矩阵可视为二维数组，对于维数(Dimensions)超过2 的数组均可视为「多维数组」
% 将两个二维（平面）数组叠在一起，就构成三维数组，第三维称为「页」(Page)
% 以维数为 3×4×2 的三维数组为例:
% A(：,：,1)代表第一页的二维数组
% A(：,：,2)代表第二页的二维数组

        A(:, :, 1) = [1 0 2 5; 4 1 8 7; 3 2 6 3];
        A(:, :, 2) = [3 5 4 1; 2 6 2 1; 4 2 3 0]  % 由两个相同大小二维数组创建三维数组
            % A(:,:,1) =
            %      1     0     2     5
            %      4     1     8     7
            %      3     2     6     3
            %
            % A(:,:,2) =
            %      3     5     4     1
            %      2     6     2     1
            %      4     2     3     0
         whos A    %得到变量A的详细信息
            %   Name      Size             Bytes  Class     Attributes
            %   A         3x4x2              192  double  
        
%%  数组的算术运算  P72
% MATLAB数组运算符列表
        % 运算                运算符		 含义说明	
        % 加                      +          相应元素相加    
        % 减                       -		     相应元素相减    
        % 乘                       *		     矩阵乘法
        % 点乘                   .* 	       相应元素相乘
        % 幂                       ^ 		  矩阵幂运算
        % 点幂	  	 	       .^		   相应元素进行幂运算
        % 左除或右除		    \或/	       矩阵左除或右除 
        % 左点除或右点除  .\或./	  A的元素被B的对应元素除 
        
% 加法 “+” ===========================
        a = zeros(2,3)
        a(:)=1:6;
        b=a+2.5
        %  b =
        %       3.5000    5.5000    7.5000
        %       4.5000    6.5000    8.5000
        c=b-a
        % c =
        %       2.5000    2.5000    2.5000
        %       2.5000    2.5000    2.5000

% 画出y=1/(x+1)的函数曲线，x∈[0, 100]
        x=0:100;
        y=1./(x+1);
        plot(x, y);
        legend( 'y=1/(x+1)');   %为图像添加说明
        
 % 生成一个信号：x=sin(2*pi*t)+sin(4*pi*t)
        t = [0:199]./100;      %采样时间点
        % 生成信号
        x = sin(2*pi*t) + sin(4*pi*t);
        plot(t,x);
        legend( 'x = sin(2*pi*t) + sin(4*pi*t)' );

% 点幂 “.^” （即每个元素的幂次）===========
        a=1:6
        % a =
        %      1   2   3   4   5  6     
        b=reshape(a,2,3)
        % b =
        %      1     3     5
        %      2     4     6
        a=a.^2
        % a =
        %      1   4   9   16   25  36
        b=b.^2
        % b =
        %      1     9     25
        %      4     16    36

 %% 关系运算   P79
%  Matlab提供了6种关系运算符： <、>、<=、>=、==、~=（不等于）
% 关系运算符的运算法则：
%       1、当两个标量进行比较时，直接比较两数大小。若关系成立，果为1，否则为0。
%       2、当两个维数相等的矩阵进行比较时，其相应位置的元素按标量关系进行比较，并给出结果，形成一个维数与原来相同的0、1矩阵。
%       3、当一个标量与一个矩阵比较时，该标量与矩阵的各元素进行比较，结果形成一个与矩阵维数相等的0、1矩阵。

% 建立5阶方阵A，判断其元素能否被3整除
        A = [24, 35, 13, 22, 63; 23, 39, 47, 80, 80; ...
            90, 41, 80, 29, 10; 45, 57, 85, 62, 21; 37, 19, 31, 88, 76]
        % A =
        %       24    35    13    22    63
        %       23    39    47    80    80
        %       90    41    80    29    10
        %       45    57    85    62    21
        %       37    19    31    88    76
        P = rem(A,3)==0     %被3除，求余
        % P =
        %      1     0     0     0     1
        %      0     1     0     0     0
        %      1     0     0     0     0
        %      1     1     0     0     1
        %      0     0     0     0     0

 %% 逻辑运算   P81
%    Matlab提供了3种逻辑运算符：&（与）、|（或）、~（非）
% 逻辑运算符的运算法则：
%        1、在逻辑运算中，确认非零元素为真（1），零元素为假（0）。  
%        2、当两个维数相等的矩阵进行比较时，其相应位置的元素按标量关系进行比较，并给出结果，形成一个维数与原来相同的0、1矩阵；
%        3、当一个标量与一个矩阵比较时，该标量与矩阵的各元素进行比较，结果形成一个与矩阵维数相等的0、1矩阵；
%        4、算术运算优先级最高，逻辑运算优先级最低。

% 在[0，3 π]区间，求y = sin x 的值。要求消去负半波，即(π,2π)区间内的函数值置零。
        x = 0:pi/100:3*pi;
        y = sin(x);
        y1 = (y>=0).*y;   %消去负半波
        plot(x,y1)            %画好图

% 建立矩阵A，找出在[10，20]区间的元素的位置。
        A = [4,15,-45,10,6;56,0,17,-45,0];
        find(A>=10 & A<=20)     %找到满足要求的元素位置
        
%% 最大值和最小值   P84
%  1、求向量的最大值和最小值
%        求一个向量X的最大值的函数有两种调用格式，分别是：
%       (1)  y=max(X)：返回向量X的最大值存入y，如果X中包含复数元素，则按模取最大值；
%       (2)  [y,I]=max(X)：返回向量X的最大值存入y，最大值的序号存入I，如果X中包含复数元素，则按模取最大值。
%       求向量X的最小值的函数是min(X)，用法和max(X)完全相同。 
        % 【例7-1】求向量的最大值
        x=[-43,72,9,16,23,47];
        y=max(x)     %求向量x中的最大值
        % y =
        %      72
        [y,l]=max(x)    %求向量x中的最大值及其该元素的位置
        % y =
        %     72
        % l =
        %     2
        
%  2、求矩阵的最大值和最小值
%       求矩阵A的最大值的函数有3种调用格式，分别是：
%       (1) max(A)：返回一个行向量，向量的第i个元素是矩阵A的第i列上的最大值；
%       (2) [Y,U]=max(A)：返回行向量Y和U，Y向量记录A的每列的最大值，U向量记录每列最大值的行号；
%       (3) max(A,[],dim)：dim取1或2。dim取1时，该函数和max(A)完全相同；dim取2时，该函数返回一个列向量，其第i个元素是A矩阵的第i行上的最大值。
%       求最小值的函数是min，其用法和max完全相同。

        %  【例7-2】求矩阵的最大值
        x=[-43,72,9; 16,23,47];
        y=max(x)     %求矩阵x中每列的最大值
        % y =
        %      16  72  47
        [y,l]=max(x) %求矩阵x中每列的最大值及其该元素的位置
        % y =
        %     16  72  47
        % l =
        %      2  1  2
        max(x, [],1)   %求矩阵中每列的最大值
        max(x, [],2)   %求矩阵中每行的最大值

%% 求和与求积  （未细看） P88
        % sum(X)：返回向量X各元素的和。
        % prod(X)：返回向量X各元素的乘积。
        % sum(A)：返回一个行向量，其第i个元素是A的第i列的元素和。
        % prod(A)：返回一个行向量，其第i个元素是A的第i列的元素乘积。
        % sum(A,dim)：当dim为1时，该函数等同于sum(A)；当dim为2时，返回一个列向量，其第i个元素是A的第i行的各元素之和。
        % prod(A,dim)：当dim为1时，该函数等同于prod(A)；当dim为2时，返回一个列向量，其第i个元素是A的第i行的各元素乘积。

%% 平均值mean 与 中值 median （未细看） P89
        % mean(X)：返回向量X的算术平均值。
        % median(X)：返回向量X的中值。
        % mean(A)：返回一个行向量，其第i个元素是A的第i列的算术平均值。
        % median(A)：返回一个行向量，其第i个元素是A的第i列的中值。
        % mean(A,dim)：当dim为1时，该函数等同于mean(A)；当dim为2时，返回一个列向量，其第i个元素是A的第i行的算术平均值。
        % median(A,dim)：当dim为1时，该函数等同于median(A)；当dim为2时，返回一个列向量，其第i个元素是A的第i行的中值。


        
%%     字符串  P90
% 关于字符串
%       MATLAB处理字符(Characters)与字符串(Strings)的相关指令大部分都放在下列目录之中：{MATLAB根目录}\toolbox\matlab\strfun
% 其中的「strfun」就是代表「String Functions」。若要查询与字符和字符串相关的指令，可在 MATLAB 下输入：help strfun 或是 help strings
% 字符（Characters）可以构成一个字符串（Strings），或字符数组(character array)。 一个字符串是被视为一个行向量（row vector）。 
% 字符串中的每一个字符（含空格），以其 ASCII 码的形式存放于行向量中，是该字符串变量的一个元素（element）。 
% Matlab 用「单引号」来界定一个字符串。

% 可以使用方括号“[ ]”直接连接多个字符串变量，得到一个新字符串变量。
    % 【例1】命名字符串变量
            str1 = ' I like MATLAB,';	    % 建立字串变量 str1
            str2 = ' JavaScript, and Perl!';	    % 建立字串变量str2
            str3 = [str1 str2]	        % 直接连接str1及str2，以建立str3
            % str3 =
            %      I like MATLAB, JavaScript, and Perl!
        
% 如要输入的字符串中有单引号，则由两个连续的单引号来表示。
% 若要计算字符串变量的长度（即组成字符串的个数），可用 length 指令。 
    % 【例2】含单引号字符串的输入
            sentence = 'I''ve got a date!';
            length(sentence)	% 计算字字符串sentence的长度

% double 指令: 查看字符串变量的存储內容（即 ASCII 内码） 
% char     指令: 将 ASCII 內码转换为字符串形式 
    % 【例3】 : 字符串与ASCII码的相互转换 （不熟）！
            sentence = 'I''ve got a date!';
            sentenceAscii = double(sentence)   %查看 sentence 的 ASCII 码
            sentence2 = char(sentenceAscii)	     % 将 ASCII 码恢复成字符串形式
        
% 字符串的判断
% class 或 ischar 指令: 可以用来判断一个变量的类型或它是否为字符串变量。
    % 【例4】 : 判断一个变量是否为字符串变量
            chinese = '今日事，今日毕';
            out1 = class(chinese)      % out1 的值是 “char”
            x = chinese+1;
            out2 = ischar(x)	           % out2 的值是 0，代表 x 不是字符串变量

% 一个字符数组变量存储多行字符串
% 1、使用二维字符数组（Two Dimensional Character Arrays）
% 必须先确认每个字符串（即每一行）的长度一样，否则就必须在短字符串结尾补齐空格
% 2、使用char指令存储多字符串
     % 【例5】 : 多行字符串变量
             departments = ['aa ';'bb ';'ccc']        %使用分号隔开，并且每一行的长度要一致才行,这里aa bb 后面都补了一个空格，保证每行长度一致
             departments = char('aa','bb','ccc')    %使用逗号隔开，结果与上面一致
            %     departments =
            %     aa
            %     bb
            %     cc
% ！注意：从二维字符数组访问字符串时，切记要使用 deblank 指令来清除字符串尾部的空格字符 
     % 【例6】 : 使用deblank命令清除字符串尾部空格 （未看太懂）
            departments = char('aa', 'bb', 'ccc');
            dept1 = departments(1,:);	% (1,:)代表第一行的全部元素  "aa "
            dept2 = deblank(dept1);	     % 使用 deblank 指令清除尾部的空格字符   
            len1 = length(dept1)		    % 显示变量 dept1 的长度=3
            len2 = length(dept2)		    % 显示变量 dept2 的长度=2
            
% strcmp 指令: 用于比较字符串的內容的异同 .字符串比不相等返回0,相等返回1
            str1 = 'today';  
            str2 = 'tomorrow';  
            str3 = 'today';  
            out1 = strcmp(str1, str2)	   % 比较字符串 str1 和 str2 
            %  out1 = 0                         %表示字符串 str1 和 str2不同
            out2 = strcmp(str1, str3)	   % 比较字符串 str1 和 str3
            %  out2 = 1                         %表示字符串 str1 和 str2相同

  
            
%%      数组补充知识            
%%  空数组     P99
% 有一维是0的数组即为空数组
% 空数组不占据存储空间
% 最简单的空数组：0 x 0的矩阵
% 复杂的空数组：0 x 5 or 10 x 0
          a=[]; b=ones(0,5); 
% 察看空数组：
          a, b, c    % or  whos a b c
% 空数组并非全0数组

%%   数组维数的减小 （多看几遍）P100
    % 删除数组的某列和行
          a = magic(4), a(:,2)=[] %使用magic函数创建一个4*4的数组，然后删除第二列
    % 删除(2-D、3-D)数组的单个元素
    %使用“全下标”方式，不能删除单个元素（注意！）
          a(1, 2)=[]   %系统会警告信息
    %使用“单下标”可以删除单个元素 （注意！）
          a(2:4)=[]   %这里删除了下标从2—4的元素，然后将数组a变为向量
    % 使用“[]”同样可以减小字符数组的维数

%%    元胞数组（单元数组） P101
%% 基本概念
% 特殊的数据类型，在一个数组中存放各种不同类型的数据
% 每个单元相当于一个“盒子”
% “盒子”可存储各种不同类型的MATLAB数据
% 元胞数组例子
        %  Cell 1,1        Cell 1,2        Cell 1,3
        %  Taiwan        Mainland       [1 2 3 4]
        %  Taibei          Beijing             test
%% 创建方法
%      1、赋值语句
%      2、cell函数

% 1.赋值语句创建元胞数组
%   （1.元胞索引(cell indexing)方式
%         格式：a(1, 2)={… … …}
%   （2.元胞内容索引(content indexing)方式
%        格式：a{1, 2}=[…]  or ‘…’
%   （3.直接用大括号一次把所有元素括起来
            b = {'James Bond', [1 2;3 4;5 6]; pi, ones(5)}
            
% 2. Cell indexing方式创建元胞数组
        a(1,1) = {[1 4 3; 0 5 8; 7 2 9]};
        a(1,2) = {'Anne Smith'};
        a(2,1) = {3+7i};
        a(2,2) = {-pi:pi/10:pi};    %通过查看数组中的值一下就可以明白
        % 其中“{ }” 表示空元胞数组
% 3.Content indexing方式创建元胞数组
        b{1,1} = 'James Bond' ;
        b{1,2} = [1 2;3 4;5 6];
        b{2,1} = pi;
        b{2,2} = zeros(5); 
        
% 4. cell函数创建元胞数组 （注意：这里是自己为了方便看，将其从PPT的后部分插到这前面的部分了！）
        d = cell(2, 3)
        %     d = 
        %          []     []     []
        %          []     []     []
        whos d
        %     Name      Size            Bytes  Class    Attributes
        %     d              2x3                48     cell 
        % 注意：每个cell占有4个字节的空间
        d(1,3) = {1:3};  % or d{1,3} = 1:3;    将数组第1行第3列个元素初始化 
        
%% 显示元胞数组的内容
% celldisp显示元胞数组的全部内容
        a
        % a = 
        %     [3x3 double]             'Anne Smith' 
        %     [3.0000 + 7.0000i]    [1x21 double]
        celldisp(a)  %显示全部内容
        cellplot(a)   %图形方式显示元胞数组的结构

% 使用内容下标索引显示指定元胞的数据
% 格式：var_name{row_index, column_index}
%          或  
%          var_name{:}
        % Example
        a{1, 2}
        %     ans =
        %     Anne Smith
        a{:}          %一次显示a的全部数据
        % ans = 
        %     [3x3  double] 
        %     [3.0000 + 7.0000i]
        %     'Anne Smith'      
        %     [1x21 double]
        
% 读取元胞数组中的内容
%    直接取用元胞数组的整个元胞（单元）
%    取用元胞数组某元胞內的数据单位
%    一次读取或刪除多个元胞
    %【例1】读取上述b元胞数组的第1行、第2列元胞的内容
        b,e=b{1,2}   %注意！逗号的作用是先不将b的结果显示出来
        %     b = 
        %         'James Bond'    [3x2 double]    [1x3 double]
        %         [    3.1416]    [5x5 double]              []
        %     e =
        % 
        %          1     2
        %          3     4
     %【例2】读取b{1, 2}的第3行、第1列的数据
        f = b{1,2}(3,1) 
        %     f =
        %          5  
%#%  注意！读取元胞数组元胞内部分数据：
%#%            元胞数组内容索引，再加上一般数组的索引，
%#%            即：var_name {row_ind,col_ind} (r_ind, c_ind) ，即先大括号再小括号

     %【例3】读取元胞数组a第1行的所有元胞
        f=a(1,:)
        %     f = 
        %          [3x3 double]    'Anne Smith'
     %【例4】删除元胞数组a第1行的所有元胞
        a(1,:) = []	
        %     a = 
        %     [3.0000 + 7.0000i]    [1x21 double]
%#%  注意！ Note: 这里使用的是元胞索引（cell indexing），而不是内容索引（content indexing）
        
%% 元胞数组的连接
% 【例】连接元胞数组a、b，生成元胞数组c
        clear c
        c=[a b]     % 列连接
        %     c = 
        %     [3x3 double]          'Anne Smith'     'James Bond'    [3x2 double]
        %     [3.0000 + 7.0000i]  [1x21 double]    [    3.1416]    [5x5 double]
        c=[a; b]     % 行连接
        %     c = 
        %     [3x3 double]               'Anne Smith' 
        %     [3.0000 + 7.0000i]       [1x21 double]
        %     'James Bond'              [3x2  double]
        %     [          3.1416]           [5x5  double]

     
%%     结构与结构数组
%% 基本概念
% 1.结构(structure)
%       由字段（或域，fields）组成
%       每个字段可以是任一种Matlab数据类型的数据或变量
%       与C语言的结构类型相似
% 2.结构数组(structure array)
%       多个结构构成结构数组(structure array)
%       结构数组的元素就是一个结构

% 结构数组变量的创建
% 方法一：直接键入
% 【例1】创建一个关于学生信息的结构数组，每个结构包含学生姓名(name)、学号(id)、成绩(scores)。
        clear student			% 清除 student 变量
        student.name = '张三';		% 加入 name 字段
        student.id = 'mr871912';		% 加入 id字段
        student.scores = [58, 75, 62];	% 加入 scores字段
        student				% 显示结构变量的数据
        %     student = 
        %            name: '张三' 
        %                 id: 'mr871912'
        %          scores: [58,75,62]
        % 此时，Matlab视 student 为一个1x1结构数组
        
        % 第二个学生信息的建立
        % 此时，student变量已成为一个1*2的结构数组
        student(2).name = '张宁';	  % 加入 name 字段
        student(2).id = 'mr871913';	  % 加入 id字段
        student(2).scores=[68, 85, 92];       % 加入 scores字段
        student				   % 只是简单输入变量名student的话，Matlab不在显示器所有的数据信息，只是给出结构
        %   student = 
        %           1x2 struct array with fields:    
        %            name
        %            id
        %            scores
        student(1)          % 显示第一个同学的信息
        student(2)          % 显示第二个同学的信息
        
% 方法二：struc函数
% 格式：
%         Structure Array_var_name = struct(field1, value1, field2, value2,….)
%         field1、field2、…是结构的字段名，
%         value1、value2、…则是相应字段所包含的数据
        clear student 
        student=struct('name', '张听说', 'scores', [50 60]);
        student(2)=struct('name', '张廷安', 'scores', [60 70]);
        student(1), student(2)   %显示student(1),student(2)
        %      ans = 
        %           name: '张听说'
        %         scores: [50 60]
        %     ans = 
        %           name: '张廷安'
        %         scores: [60 70]      
%  或者使用struct创建结构数组变量（一次建立多个元素）
        clear student 
        student = struct('name', {'张听说', '张廷安'}, 'scores', {[50 60], [60 70]});
        student(1), student(2)   %显示student(1),student(2)

% 结构数组嵌套（nested）        
% 结构数组中结构的字段还可以是结构
        student = struct('name', {'张听说', '张廷安'}, 'scores',{[55 60], [65 80]});
        student(2).course(1).title = 'Web Programming';
        student(2).course(1).credits = 2;
        student(2).course(2).title = 'Numerical Method';
        student(2).course(2).credits = 3;
        student(2).course
% 访问结构数组变量的内容 (通过使用 . 的方式访问)
        student_name = student(1).name
        % student_name =  张听说
% 修改结构数组变量的字段
        student(1).name='Newton';
        
% cat函数：排列结构数组某字段的值
%       格式：cat(dim, structurefield)
%       dim=1, 竖排；dim=2, 横排
        cat(1, student.scores)
        %     ans =
        %         55    60
        %         65    80
        cat(2, student.scores)
        %     ans =
        %         55    60    65    80
        
% mean函数计算平均值
        % 计算每次考试的平均值
        average1=mean(cat(1, student.scores))   %结果没看太懂，要回头看mean函数（注意！）
        %      average1 =
        %           60    70
        
        

%% 数据以及函数的可视化  （重点，难点！！！）
%% plot指令的基本调用格式  P128
% （1）plot(x) 
%            x为向量时，以该元素的下标为横坐标、元素值为纵坐标绘出曲线
%            x为实数二维数组时，则按列绘制每列元素值相对其下标的曲线，曲线数等于x数组的列数。
%            x为复数二维数组时，则按列分别以数组的实部和虚部为横、纵坐标绘制多条曲线
% （2）plot(x, y)
%            x、y为同维数组时，绘制以x、y元素为横纵坐标的曲线
%            x为向量，y为二维数组、且其列数或行数等于x的元素数时，绘制多条不同颜色的曲线
%            x为二维数组，y为向量时，情况与上相同，只是y仍为纵坐标。
% （3）plot(x1, y1, x2, y2, …)
%           绘制以x1为横坐标、y1为纵坐标的曲线1，以x2为横坐标、y2为纵坐标的曲线2，等等。
%           其中x为横坐标，y为纵坐标，绘制y=f(x)函数曲线。 

% 【例1】在[0，2π]区间内，绘制曲线 y = 2*exp(-0.5*x).*sin(2*pi*x);  P129
            x = 0:pi/100:2*pi;
            y = 2*exp(-0.5*x).*sin(2*pi*x);
            plot(x,y)
% 【例2】画出如图所示：  P130
            t = -pi:pi/100:pi;
            x = t.*cos(3*t);
            y = t.*sin(t).^2;
            plot(x,y)
% 【例3】用图形表示连续调制波形 y=sin(t)sin(9t) 及其包络线（没看太懂！细看多看几遍）
            t=(0:pi/100:pi)' ;		%长度为101的时间采样列向量
            y1=sin(t)*[1,-1];		%包络线函数值，是（101x2）的矩阵
            y2=sin(t).*sin(9*t);	%长度为101的调制波列向量
            t3=pi*(0:9)/9;														
            y3=sin(t3).*sin(9*t3);
            plot(t,y1,'r:',t,y2,'b',t3,y3,'bo')		
            axis([0,pi,-1,1])		%控制轴的范围 

% 多次叠绘      P132
% 多次调用plot命令在一幅图上绘制多条曲线，需要hold指令的配合。  
hold on   保持当前坐标轴和图形，并可以接受下一次绘制。
hold off   取消当前坐标轴和图形保持，这种状态下，调用plot绘制完全新的图形，不保留以前的坐标格式、曲线。  
     % 采用叠加绘制的方法实现上面的图形
            t=(0:pi/100:pi)';	 %长度为101的时间采样列向量	
            y1=sin(t)*[1,-1];	%包络线函数值，是（101x2）的矩阵
            y2=sin(t).*sin(9*t);	%长度为101的调制波列向量
            t3=pi*(0:9)/9;				
            y3=sin(t3).*sin(9*t3);
            plot(t,y1,'r:')
            hold on
            plot(t,y2,'b')
            plot(t3,y3,'bo')		
            axis([0,pi,-1,1])		%控制坐标轴的范围 
            hold off
    % 利用hold绘制离散信号的波形
            t=2*pi*(0:20)/20;       %也要熟悉这种分割
            y=cos(t).*exp(-0.4*t);
            stem(t,y,'g');  
            hold on;
            stairs(t,y,'r');
            hold off  

%% plotyy指令：双纵坐标   P135
% 格式：
%         plotyy(x1, y1, x2, y2)
%         x1-y1曲线y轴在左， x2-y2曲线y轴在右。
    % 【例1】
            x = 0:0.01:20;
            y1 = 200*exp(-0.05*x).*sin(x);
            y2 = 0.8*exp(-0.5*x).*sin(10*x);
            plotyy(x,y1,x,y2);

%% subplot指令：多子图    P136
% 在同一图形窗口布置几幅独立的子图
% subplot(m, n, k)	
%        使（mxn）幅子图中第k个子图成为当前图
% subplot(‘postion’, [left, bottom, width, height])  
%        在指定的位置上开辟子图，并成为当前图
% 说明：
%       subplot(m, n, k)的含义：图形窗口包含（mxn）个子图，k为要指定的当前子图的编号。其编号原则： 左上方为第1子图，然后向右向下依次排序。该指令按缺省值分割子图区域。
%       subplot(‘postion’, [left, bottom, width, height])用于手工指定子图位置，指定位置的四元组采用归一化的标称单位，即认为整个图形窗口绘图区域的高、宽的取值范围都是[0， 1]，而左下角为（0,0）坐标。
%       产生的子图彼此独立。所有的绘图指令均可以在子图中使用。
    %【例1】
            t=(pi*(0:1000)/1000)';
            y1=sin(t);y2=sin(10*t);y12=sin(t).*sin(10*t);
            subplot(2,2,1),plot(t,y1);axis([0,pi,-1,1])
            subplot(2,2,2),plot(t,y2);axis([0,pi,-1,1])
            subplot('position',[0.2,0.05,0.6,0.45])
            plot(t,y12,'b-',t,[y1,-y1],'r:');
    % 【例2】Specify Line properties （画出来的图蛮好看的，多画画）
            t=(0:15)*2*pi/15;
            y=sin(t);
            subplot(3,2,1), plot(t, y); title('Lins style is default')
            subplot(3,2,2), plot(t, y, 'o'); title('Lins style is o')
            subplot(3,2,3), plot(t, y, 'k:'); title('Lins style is k:')
            subplot(3,2,4), plot(t, y, 'k:*'); title('Lins style is k:*')
            subplot(3,2,5), plot(t, y, 'm-d'); title('Lins style is m-d')
            subplot(3,2,6), plot(t, y, 'r-p'); title('Lins style is r-p')
    % 【例3】绘制椭圆，长轴为3.25，短轴为1.15
            t=0:2*pi/99:2*pi;
            x=1.15*cos(t); y=3.25*sin(t);    % y为长轴，x为短轴
            subplot(2,2,1); plot(x, y);
            axis off
            title('axis off'); 
            subplot(2,2,2); plot(x,y);
            axis image;
            title('axis image'); 
            subplot(2,2,3); plot(x,y);
            axis equal;
            title('axis Equal'); 
            subplot(2,2,4); plot(x,y);
            axis square;
            title('axis Square');

%% 画图常用标记   P138
% 曲线线形控制符
         -   实线             %#ok 
         :   虚线             %#ok 
         -.  点划线          %#ok 
         --  双划线          %#ok 
        
% 曲线颜色控制符
            b   兰
            g   绿
            r    红
            c   青
            m  品红
            y   黄
            k   黑
            w   白
%  数据点形控制符
            .    实心黑点     %#ok 
            +   十字符        %#ok 
            *    八线符        %#ok 
            ^    朝上三角     %#ok 
            <   朝左三角     %#ok 
            >   朝右三角     %#ok 
            v    朝下三角     
            d    菱形符（diamond）
            h    六角星符（hexagram）
            o    空心圆圈
            p    五角星符（pentagram）
            s    方块符（square）
            x    叉字符
            %注意：曲线的线形控制符、颜色控制符、数据点形控制符可以组合使用
            %其先后次序不影响绘图结果；也可以单独使用。 
           
%% 常用坐标控制指令   P142
            axis auto           使用缺省设置
            axis manual       使当前坐标范围不变
            axis off               不显示坐标轴
            axis on               显示坐标轴
            axis ij                 坐标原点在左上方
            axis xy               坐标原点在左下方
            axis(v) 
            v=[x1,x2,y1,y2]       设定坐标范围          %#ok 
            axis([[x1,x2,y1,y2]) 等同于上面两句       %#ok  （最常用！！！）
            axis equal          纵横坐标等长刻度
            axis image         纵横坐标等长刻度，坐标框紧贴数据范围
            axis square        产生方形坐标系
            axis normal         缺省矩形坐标系
%% 刻度、分割线、坐标框  P145
    %分割线与grid指令
            grid on                 画出分割线
            grid off                 不画分割线
            %注意：MATLAB的缺省设置是不画分格线；分格线的疏密取决于坐标刻度（改变坐标刻度，可改变分格线的疏密）。
    %坐标框
            box on                  控制加边框线
            box off                  控制不加边框线
    %刻度设置
            set(gca, 'xtick', xs, 'ytick', ys)
            %其中：xs、ys可以使任何合法的实数向量，用于分别设置x、y轴的刻度。
            
    %【例1】绘制y=1-exp(-0.3*t).*cos(0.7*t) 
            t=6*pi*(0:100)/100;
            y=1-exp(-0.3*t).*cos(0.7*t);
            tt=t(find(abs(y-1)>0.05)); 
            ts=max(tt);                          
            plot(t,y,'r-');     %绘制曲线
            grid on;          %绘制分割线 
            axis([0,6*pi,0.6,max(y)]);      %画坐标范围                                             
            title('y=1-exp(-\alpha*t)*cos(\omega*t)');                      
            hold on;
            plot(ts,0.95,'bo');
            hold off;           
            set(gca,'xtick',[2*pi,4*pi,6*pi],'ytick',[0.95,1,1.05,max(y)]);      %（未看完） 设置网格的显示格式,gca获取当前figure的句柄
            grid on;

%% 图形标识  P149
% 图形标识包括：
%       图名（title）
%       坐标轴名（xlabel、ylabel）
%       图形文本注释（text）
%       图例（legend）
% 简捷使用格式 
%       title(s)		  % s为字符串变量或常量
%       xlabel(s)
%       ylabel(s)
%       legend(s)
%       text(x, y, s)	% 指定坐标（x, y）处加注文字 

% 字体样式设置： P150 （很不熟，多看几遍！）
        \fontname{arg} \arg \fontsize {arg} string 
        %其中，String为要输出的字符串，其前面的均为属性控制，使用方法见下表。 

        %【例1】
        t=(0:100)/100*2*pi;
        y=sin(t);
        plot(t, y)
        text(3*pi/4,sin(3*pi/4), '\fontsize{16}\leftarrowsin(t) = .707 ')  
        text(pi, sin(pi), '\fontsize{16}\leftarrowsin(t) = 0 ')
        text(5*pi/4, sin(5*pi/4), '\fontsize{16}sin(t) = -.707\rightarrow',...  %注意...是换行连接
               'HorizontalAlignment','right')    %其中‘HorizontalAlignment’, ‘right’设置图形标识为水平右对齐
        %【例2】
            t = 0:900;
            plot(t,0.25*exp(-0.005*t))
            title('\fontsize{16}\itAe^{\alphat}');
            text(300,.25*exp(-0.005*300),...
                '\fontsize{14}\leftarrow0.25\ite^-0.005\itt at \itt = 300');
            
%% 特殊图形   P154
%% 直方图(柱形图)bar
%       垂直直方图
%              累计式
%              分组式
%       水平直方图
%              累计式
%              分组式
    
    % 【例1】柱状图
        x = -2.9:0.2:2.9;
        bar(x,exp(-x.*x),'r')
        
    % 【例2】累积直方图+分组直方图+
    %             北京市从业人员统计
    %                     1990年	   1995年	 2000年
    % 第一产业 	       90.7		  70.6		  73.9（万人）
    % 第二产业	      281.6 	  271 		 214.6
    % 第三产业	      254.8 	 323.7 		326.5
        year=[1990 1995 2000];
        people=[90.7 281.6 254.8; 70.6 271 323.7; 73.9 214.6 326.5];
        
        bar(year, people, 'stack');     % 累计直方图    （竖直方向）
        legend('\fontsize{6}第一产业', '\fontsize{6}第二产业', '\fontsize{6}第三产业');  %为图像添加说明
       
        bar(year, people, 'group');     % 分组式直方图 （竖直方向）
        legend('\fontsize{6}第一产业', '\fontsize{6}第二产业', '\fontsize{6}第三产业');

        barh(year, people, 'group');    % 分组式直方图（水平方向）
        legend('\fontsize{6}first', '\fontsize{6}second', '\fontsize{6}third');

        barh(year, people, 'stack');    % 累积式直方图（水平方向）
        legend('\fontsize{6} first', '\fontsize{6}second', '\fontsize{6}third');

        %% 饼状图 （pie函数）
        %饼图指令pie 用来表示各元素占总和的百分数。该指令第二输入变量是与第一变量同长的0-1向量，1使对应扇块突出。
        a=[1,1.6,1.2,0.8,2.1];
        subplot(1,2,1),pie(a,[1 0 1 0 0]),  %绘制饼状图
        legend({'1','2','3','4','5'})    %添加图例！
        subplot(1,2,2), b=int8(a==min(a)) 
        pie3(a,b)           % 绘制斜式饼状图
        colormap(cool)   % 更换颜色

        %% 离散杆图 （stem函数）
        % 【例1】余弦波的采样信号图
        t = linspace(-2*pi,2*pi,20);
        h = stem(t,cos(t));
        
        % 【例2】分别以条形图、填充图、阶梯图和杆图形式绘图 （多看多练几遍！！）
        x = 0:0.35:7;
        y = 2*exp(-0.5*x);
        subplot(221);bar(x,y,'g');        %柱状图  ！注意这种写法也要会，更简洁
        title('bar(x,y,''g'')');axis([0,7,0,2]);
        subplot(222);fill(x,y,'r');         %填充图
        title('fill(x,y,''r'')');axis([0,7,0,2]);clc
        subplot(223);stairs(x,y,'b');    %楼梯图
        title('stairs(x,y,''b'')');axis([0,7,0,2]);
        subplot(224);stem(x,y,'k');     %离散杆图
        title('stem(x,y,''k'')');axis([0,7,0,2]);

        %% 极坐标图 （polar函数）
        % 格式：  polar(theta,rho,选项)            
        % 【例】：绘制ρ=sin(2θ)cos(2θ)的图形
        theta = 0:0.01:2*pi;
        rho = sin(2*theta).*cos(2*theta);
        polar(theta,rho,'k');

%% 三维线图指令 plot3
%   三维绘图指令中，plot3最易于理解，它的使用格式与plot十分相似，只是对应第3 维空间的参量。
        %【例1】绘制一个项链+宝石
        t=(0:0.02:2)*pi;
        x=sin(t);
        y=cos(t);
        z=cos(2*t);
        plot3(x,y,z,'b-',x,y,z,'bd');
        view([-82,58]);
        box on
        legend('链','宝石') 
        
        %【分析】画函数z=f(x,y)所代表的三维空间曲面，需要做一下的数据准备
        %     确定自变量的取值范围和取值间隔。
        %     x=x1:dx:x2;
        %     y=y1:dy:y2;
        %     构成x-y平面上的自变量采样“格点”矩阵。
        %     利用MATLAB指令meshgrid产生“格点”矩阵
        %     [xa, ya]=meshgrid(x,y)?;
        %     计算函数在自变量采样“格点”上的函数值，即z=f(x,y)。
        %     网线图、曲面图绘制。

        %【例2】绘制函数z=x^2+y^2的曲面
        x=-4:4;y=x;
        [x,y]=meshgrid(x,y);            %生成 x-y 坐标“格点”矩阵
        z=x.^2+y.^2;                        %计算格点上的函数值
        subplot(1,2,1), mesh(x,y,z);  %三维网格图
        subplot(1,2,2), surf(x,y,z);     %三维曲面图
        colormap(hot);                      %更换填充颜色

%% 图像文件的读写与图像显示
        imread      读取图像文件（ BMP, GIF , PNG, JPEG, and TIFF）
        imshow     显示图像
        imwrite      保存图像

        %【例1】读取图像文件
        img1=imread('d:\sky.jpg');    % Load image data
        img2=imread('eight.tif');
        whos  img1 img2
        imshow(img1);   % Display image
        
        % 【例2】简单处理图像
        lighter = 2 * img1;
        subplot(1,2,1);
        imshow(img1);
        title('Original');  % Display image
        subplot(1,2,2);
        imshow(lighter);
        title('Lighter');    % Display image
        % 保存图像
        imwrite(lighter, 'd:/mysaved.jpg')
        % 查看保存结果
        dir mysaved.*   %结果应为：mysaved.jpg
        
        %【例3】彩色图像转为灰度图像
        black = rgb2gray(img1);
        imshow(black)
        % 图像的缩放
        zoom on
        
        %【例4】图像特征提取  （未看太懂，以后补充）
        imag_edge1 = edge(img2,'sobel');       %sobel边缘提取算法
        subplot(121),imshow(imag_edge1)
        imag_edge2 = edge(img2,'canny');            %canny边缘提取算法
        subplot(122),imshow(imag_edge2)

        

%%     MATLAB程序设计  P179
%% 1.M文件的分类   P181
% 用Matlab语言编写的程序，称为M文件。
%          是由若干Matlab命令组合在一起构成的，它可以完成某些操作，也可以实现某种算法。
%  M文件根据调用方式的不同分为两类：
%          命令文件（Script File）
%          函数文件（Function File）
%  它们的扩展名都是.m

% 2. 命令文件和函数文件的区别
%       命令文件没有输入参数，也不返回输出参数；函数文件可以带输入参数，也可以返回输出参数。
%       命令文件对工作空间中的变量进行操作，文件中所有命令的执行结果也返回工作空间中；函数文件中定义的变量为局部变量，当函数文件执行完毕时，这些变量也被清除。
%       命令文件可以直接运行；函数文件不能直接运行，要以函数调用的方式来调用它。

    %【例1】建立文件将变量a、b的值互换
    % 命令文件：
        clear;
        a = 1:10;
        b = [11,12,13,14;15,16,17,18];
        c = a; a = b; b = c;
        a
        b
       % 将文件保存为exch，并在命令窗口执行。
       
     % 函数文件：
        fexch.m
        function [a,b] = exch(a,b)        %#ok
        c = a; a = b; b = c;
        %然后在命令窗口调用该函数文件：
        clear;
        x = 1:10;
        y = [11,12,13,14;15,16,17,18];
        [x,y] = fexch(x,y)
        %注意：函数参数a，b，c未保留在工作空间中，x，y保留在工作空间中。

%%  程序控制结构   P186
        1.顺序结构      %#ok
        2.选择结构      %#ok
        3.循环结构      %#ok
        %注：任何复杂的程序都可以由这3种基本结构构成。
        
%% 顺序结构   P187
% 顺序结构是指按照程序中语句的排列顺序依次执行，直到程序的最后一个语句。（最简单的一种程序）
% 1、数据的输入
       %从键盘输入数据，则可以使用input函数来进行，
       %【格式】：
                 A = input(提示信息,选项);  %#ok
       %其中提示信息为一个字符串，用于提示用户输入数据。
       %【例1】：从键盘输入A矩阵，可以采用下面的命令来完成  （未看懂？！）
                 A = input( '输入A矩阵' );    %#ok
       %如果在input函数调用时采用’s’选项，则允许用户输入一个字符串。
       %【例2】：
                 xm = input( 'What’’s your nashuru me?','s');
                 
% 2、数据的输出
      % 命令窗口输出函数主要有disp函数，其调用格式为：
               disp(输出项)    %#ok
	  % 其中输出项既可以为字符串，也可以为矩阵。
       %【例3】：
               A = 'Hello, Tom';
               disp(A)
       %输出为：Hello, Tom
       
       %【例4】：
               A = [1,2,3;4,5,6;7,8,9];
               disp(A)
        % 输出为：
        %               1  2  3
        %               4  5  6
        %               7  8  9         %disp函数输出格式更紧凑

        % 【例5】  求一元二次方程 --- 的根。 （多看几遍！）
        % 由于Matlab能进行复数运算，所以不需要判断方程的判别式，
        % 可直接根据求根公式求根。
        % 程序如下：
                a = input('a=?');
                b = input('b=?');
                c = input('c=?');
                d = b*b-4*a*c;
                x = [(-b+sqrt(d))/(2*a),(-b-sqrt(d))/(2*a)];
                disp(['x1=',num2str(x(1)),',x2=',num2str(x(2))]);
        %     程序输出为：
        %     a=?4
        %     b=?78
        %     c=?54
        %     x1=-0.7188,x2=-18.7812
        
%3、程序的暂停   P190
% 程序执行过程中暂停，可用pause函数，其调用格式为：
         pause(延迟描述)      %#ok
% 如果省略延迟时间，直接使用pause，则将暂停程序，直到用户按任一键后程序继续执行。
% 若要强行中止程序的运行可按Ctrl+C键。


%% 选择结构   P191
% 选择结构是根据给定的条件成立或不成立，分别执行不同的语句。
% Matlab用于实现选择结构的语句有if语句，switch语句和try语句。
% 1. 【if语句】
% 在Matlab中，if语句有3种格式。
% (1)单分支if语句
%     语句格式：
            if 条件            %#ok
                语句组       %#ok             
            end                %#ok

        %【例如】：当x是整数矩阵时，输出x的值
        if fix(x)==x
            disp(x);
        end

%  (2)双分支if语句  （例题未写上P193！）
% 语句格式：
            if 条件               %#ok
                语句组 1        %#ok
            else                   %#ok
                语句组  2        %#ok
            end                    %#ok
% 当条件成立时，执行语句组1，否则执行语句组2，然后再执行if语句的后续语句。

% (3)多分支if语句
% 语句格式：
            if 条件1              %#ok
                语句组 1        %#ok
            elseif  条件2       %#ok
                语句组  2        %#ok
            …                      %#ok
            elseif  条件m       %#ok
                语句组  m        %#ok
            else                    %#ok
                语句组n           %#ok
            end                     %#ok
        %【例6】大小写字母的置换 （常用！！）
        %     输入一个字符，若为大写字母，则输出其对应的小写字母；若为小写字母，则输出其对应的大写字母；
        % 若为数字字符则输出其对应的数值，若为其他字符则原样输出。
        % 程序如下：
                c = input( '请输入一个字符','s');
                if c >='A' & c<='Z'
                    disp(setstr(abs(c) + abs('a')-abs('A')));
                elseif c>='a' & c<='z'
                    disp(setstr(abs(c)- abs('a') + abs('A')));
                elseif c>='0' & c<='9'
                    disp(abs(c)-abs('0'));
                else
                    disp(c);
                end
            %注：setstr函数可以得到ASCⅡ码

% 2. 【switch语句】
% switch语句根据表达式的取值不同，分别执行不同的语句，其语句格式：
            switch 表达式              %#ok
            case 表达式1               %#ok
                    语句组1               %#ok
            case 表达式2               %#ok
                    语句组2               %#ok
            …                               %#ok
            case 表达式m              %#ok
                    语句组m              %#ok
            otherwise                     %#ok
                     语句组 n             %#ok
            end                             %#ok
            %注意：switch子句后面的表达式应为一个标量或一个字符串；case子句后面的表达式不仅可以为一个标量或一个字符串，还可以为一个元胞矩阵。

            %【例7】某商场对顾客所购买的商品实行打折销售，标准如下：
            %     price<200                  没有折扣
            %     200<=price<500         3%折扣
            %     500<=price<1000        5%折扣
            %     1000<=price<2500      8%折扣
            %     2500<=price<5000      10%折扣
            %     5000<=price              14%折扣
            %     输入所售商品的价格，求其实际销售价格。
            %     程序如下：
                price = input('请输入商品价格');
                switch fix(price/100)
                    case{0,1}                       %价格小于200
                        rate = 0;
                    case{2,3,4}
                        rate = 3/100;             %价格大于等于200但小于500
                    case num2cell(5:9)
                        rate = 5/100;              %价格大于等于500但小于1000
                     case num2cell(10:24)
                        rate = 8/100;              %价格大于等于1000但小于2500
                     case num2cell(25:49)
                        rate = 10/100;            %价格大于等于2500但小于5000
                      otherwise
                         rate = 14/100;           %价格大于等于5000
                end
                price = price*(1-rate)       %输出商品实际销售价格
                %注意：num2cell函数是将数值矩阵转化为单元矩阵。

% 2. 【try 语句】                
% try语句是一种试探性执行语句，其语句格式为：
                try                        %#ok
                    语句组1            %#ok
                catch                   %#ok
                    语句组2            %#ok
                end                      %#ok
%     try语句先试探性执行语句组1，如果在执行过程中出现错误，则将
%     错误信息赋给保留的lasterr变量，并转去执行语句组2.
            %【例8】矩阵的乘法
            % 矩阵乘法运算要求两矩阵的维数相容，否则会出错。先求两矩阵的
            % 乘积，若出错则自动转去求两矩阵的点乘。
            % 程序如下：
                A = [1,2,3;4,5,6];
                B = [7,8,9;10,11,12];
                try 
                    C = A*B;
                catch
                    C = A.*B;
                end
                C
                lasterr        %显示出错原因
                %Error using  * 
                I%nner matrix dimensions must agree.
           
                
%% 循环结构   P201
% 循环是指按照给定的条件，重复执行指定的语句，Matlab提供了两种实现循环结构的语句：for语句和while语句。
% 1、【for语句】
% for语句的格式为：
            for 循环变量 =表达式1：表达式2：表达式3         %#ok
                循环体语句                                                   %#ok
            end                                                                  %#ok
% 其中表达式1的值为循环变量的初值，表达式2的值为步长，表达式3的值为循环变量的终值。
% 步长为1时，表达式2可以省略
            %【例9】求解多项式的值  P202
                y = 0;n = 100;
                for i=1:n
                    y = y+1/i/i;
                end
                y            %结果  y = 1.6350
            % 利用Matlab的特点，常用向量运算来代替循环操作，程序可以如下:（没看太懂）
                n = 100;
                i = 1:n;
                f = 1./i.^2;
                y = sum(f)
           
 % 1、【while语句】           
% while语句的一般格式为：
                while条件                      %#ok
                       循环体语句             %#ok
                end                                %#ok
% 其执行过程为：
% 若条件成立，则执行循环体语句，执行后再判断条件是否成立，如果不成立则跳出循环。
          %【例9】从键盘输入若干个数，当输入0时结束输入，求这些数的平均值和它们的和。
                sum = 0;
                n = 0;
                x = input('Enter a number(end in 0):');
                while(x~=0)
                    sum = sum+x;
                    n = n+1;
                    x = input('Enter a number(end in 0):');
                end
                if(n>0)
                    sum
                    mean = sum/n
                end
            %     输出结果为：
            %     Enter a number(end in 0):67
            %     Enter a number(end in 0):89
            %     Enter a number(end in 0):93
            %     Enter a number(end in 0):70
            %     Enter a number(end in 0):0
            %     sum =
            %        319
            %     mean =
            %        79.7500
            
% 3、【break语句】和【continur语句】
% 它们一般与if语句配合使用
% break语句用于终止循环的执行（结束本层循环）
% continue语句控制跳过循环体中的某些语句（结束本次循环）
        %【例10】求[100,200]之间第一个能被21整除的整数
                for n = 100:200
                    if rem(n,21)~=0;
                       continue
                    end
                    break
                end
                n
        %     程序输出结果为：
        %     n = 
        %           105

        
        
%%  函数文件
% 函数文件是另一种形式的M文件，每一个函数文件都定义一个函数
% Matlab提供的标准函数大部分是由函数文件定义的
%% 1、函数文件的基本结构
%         函数文件由function语句引导，其基本结构为：
                 function  输出形参表 = 函数名（输入形参表）   %#ok
                 注释说明部分                                                  %#ok
                 函数体语句                                                      %#ok
%        其中，以function开头的一行为引导行，表示该M文件是一个函数文件。
%        当输出形参多于一个时，应该用方括号括起来。
% 1. 关于函数文件名
%          函数文件名通常由函数名再加上扩展名.m组成。
%          当函数文件名与函数名不同时，Matlab将忽略函数名而确认文件名因此调用时使用函数文件名。
% 2. 关于注释说明部分
%     注释说明包括3部分：
%     ① 紧随引导行之后以%开头的第一注释行。
%         这一行一般包括大写的函数文件名和函数功能简要描述，供lookfor关键词查询和help在线帮助时使用。
%     ② 第一注释行及之后连续的注释行。
%         通常包括函数输入/输出参数的含义及调用格式说明等信息，构成全部在线帮助文本。
%      ③ 与在线帮助文本相隔一空行的注释行。
%           包括函数文件编写和修改的信息，如作者和版本等。
% 3、关于return语句
%           如果在函数文件中插入了return语句，则执行到该语句就结束函数的执行，
%           流程转至调用该函数的位置。通常也不使用return语句。
            %【例1】 编写函数文件，求半径为r的圆的面积和周长。
             % 函数文件如下：
             function [s,p] = fcircle(r)   
             % FCIRCLE calculate the area and perimeter of a circle of radii r
             % r       圆半径
             % s      圆面积
             % p      圆周长
             %2006年2月30日编
             s = pi*r*r;
             p = 2*pi*r;
            % 将以上函数文件以文件名fcircle.m保存，然后在命令窗口调用
            [s,p] = fcircle(10)
            %     输出结果是：
            %      s = 
            %           314.1593
            %      p =
            %           62.8319
            % 采用help命令或lookfor命令可以显示出注释说明部分的内容。
             help fcircle
            % 屏幕显示
            %      FCIRCLE calculate the area and perimeter of a circle of radii r
            %       r        圆半径
            %       s       圆面积
            %       p       圆周长
            %命令行输入：调用该函数
            fcircle(1)    %求得半径为1的圆的面积
            [s,c]=fcircle(2)   %求得s为半径为2的圆的面积，c为其周长

%  函数调用的一般格式是：
        [输出实参表] = 函数名(输入实参表)        %#ok
        %注意：函数调用时，各实参出现的顺序、个数，应与函数定义时相同。
        %【例2】利用函数文件，实现直角坐标(x,y)与极坐标(ρ,θ)之间的转换。
        %  函数文件：tran.m:
               function [rho,theta] = tran(x,y)        %#ok
               rho = sqrt(x*x+y*y);
               theta = atan(y/x);
        % 调用tran.m的命令文件main1.m:
              x = input('please input x=:');
              y = input('please input y=:');
              [rho,the] = tran(x,y);
              rho
              the 
% 函数的嵌套调用  P213
% 在Matlab中，函数可以嵌套调用，即一个函数可以调用别的函数。
% 一个函数调用自身称为函数的递归调用。
          %【例3】5.12 利用函数的递归调用，求n！。
          % n！本身就是以递归的形式定义的：显然，求n！需要求(n-1)!  这时可采用递归调用。
             function f = factor(n)   %#ok
             if n<=1
                 f = 1;
             else
                 f = factor(n-1)*n;  %递归调用求(n-1)!
             end
        %在命令文件中调用该函数文件，求 s = 1!+2!+3!+4!+5!。
              s = 0;
              for i = 1:5
                    s = s + factor(i);
              end
              s
        %   在命令窗口运行命令文件，结果如下：
        %        s = 
        %             153

% 函数参数的可调性（要掌握！）
% Matlab在函数调用上有一个与一般高级语言不同之处：函数所传递参数数目的可调性，即参数的数量可以改变。
% 在调用函数时，Matlab用两个预定义变量nargin和nargout分别记录调用该函数时的输入实参和输出实参的个数。
        % 【例4】 nargin用法示例
        %  函数文件examp.m:
             function fout = charray(a,b,c)     %#ok
             if nargin == 1    %nargin用于判断输入参数个数
                 fout = a;
             end
             if nargin == 2
                 fout = a+b;
             end
            if nargin == 3
                 fout = (a*b*c)/2;
            end
         %命令文件：
             x = [1:3];
             y = [1;2;3];
             examp(x)
             examp(x,y')
             examp(x,y,3)

% 全局变量与局部变量
% Matlab中，函数文件中的变量是局部变量。
% 如在若干函数中，都把某一变量定义为全局变量，那么这些函数将共用这个变量。
% 全局变量的作用域是整个Matlab的工作空间，所有函数都可以对它进行存取和修改。
% 全局变量用global命令定义，格式为：
                global 变量名                      %#ok
            % 【例5】全局变量应用示例。
            %  先建立函数文件wadd.m，该函数将输入的参数加权相加：
             function f = wadd(x,y)             %#ok                           
             global ALPHA BETA                                       
             f = ALPHA*x + BETA*y;                                 
             %  在命令窗口中输入：                                                  
             global ALPHA BETA                %#ok                                        
             ALPHA = 1;                            %#ok          
             BETA = 2;                              %#ok          
             s = wadd(1,2)
             %  输出为：
             %         s = 
             %                5


 
            



        


        

        

        


            

            
            
            
            
            
            
            
            
            
            
            
            
            