% A62Lau(fx,fpx,iguess,errtol,maxiter)

% The purpose of this function is to solve the roots for any given function
% using the Newton-Raphson method. 

% Lau, Neftali
% ME18A Assignment 6, Problem 2
% Function Title: Roots of an Equation using the Newton-Raphson method
% 11/08/18

%Function code
function [root,fxroot,err,iter]=A62Lau(fx,fpx,iguess,errtol,maxiter)

%User will already have initiated error tolerance (errtol) and maxnumber of
%iterations (maxiter), and initial guess (iguess)

err=100;
iter=0;
xold=iguess;

while(iter<maxiter)&&(err>errtol)
    
    %fx=(x) and fpx=f'(x)
    
    y=fx(xold);
    yp=fpx(xold);
    
    xnew=xold-(y/yp);
    err=abs((xnew-xold)/xnew);
    xold=xnew;
    iter=iter+1;
end

%Output results of root and function(root)

if(err<=errtol)
    root=xold;
    fxroot=fx(root);
else
    fprintf('root not found within tolerance');
    
%End of function    
end



