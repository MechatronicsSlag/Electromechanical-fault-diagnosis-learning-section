function model = linReg(X, t, lambda)
% Fit linear regression model y=w'x+w0  
% Input:
%   X: d x n data
%   t: 1 x n response
%   lambda: regularization parameter
% Output:
%   model: trained model structure
% Written by Mo Chen (sth4nth@gmail.com).%%%本程序基函数是一个线性基x
if nargin < 3
    lambda = 0;
end
d = size(X,1);
idx = (1:d)';
dg = sub2ind([d,d],idx,idx);%%%ind = sub2ind(sz,row,col) 针对大小为 sz 的矩阵返回由 row 和 col 指定的行列下标的对应线性索引 ind

xbar = mean(X,2);%%%%返回每一行的均值
tbar = mean(t,2);
X = bsxfun(@minus,X,xbar);%%%%C=bsxfun(fun,A,B)对数组A和B应用函数句柄fun指定的按元素二元运算。从矩阵 A 的对应列元素中减去列均值。然后，按标准差进行归一化。
t = bsxfun(@minus,t,tbar);

XX = X*X';
XX(dg) = XX(dg)+lambda;     % 3.54 XX=inv(S)/beta
% w = XX\(X*t');
U = chol(XX);%%%将对称正定矩阵 A 分解成满足 A = R'*R 的上三角 R。如果 A 是非对称矩阵，则 chol 将矩阵视为对称矩阵，并且只使用 A 的对角线和上三角。
w = U\(U'\(X*t'));  % 3.15 & 3.28
w0 = tbar-dot(w,xbar);  % 3.19%%% dot(A,B) 返回 A 和 B 的标量点积。

model.w = w;
model.w0 = w0;
model.xbar = xbar;
%% for probability prediction
beta = 1/mean((t-w'*X).^2); % 3.21
% alpha = lambda*beta;           % lambda=a/b P.153 3.55
% model.alpha = alpha;
model.beta = beta;
model.U = U;
