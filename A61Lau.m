% A61Lau(fcn,xl,xu,errtol,maxiter)

% The purpose of this function is to solve the roots for any given function
% using the Bisection method. 

% Lau, Neftali
% ME18A Assignment 6, Problem 1
% Function Title: Roots of an Equation using the Bisection method
% 11/05/18


%Function [] work to display final output

%Function code

function[final,fxroot,err,iter]= A61Lau(fcn,xl,xu,errtol,maxiter) 

%Initialize iterations (iter=0), estimated error (err), and every prior
%loop xr value (xrold)to fulfill conditions of while loop.

iter=0;
err=errtol+1;
xrold=1;
    
while(iter<maxiter)&&(err>errtol)
    %Midpoint Formula
    
    xrnew=(xl+xu)/2;
    
    %Estimated Error Formula
    err=abs(((xrnew-xrold)/xrnew)*100);
    
    %Set up if/else statements so that the changing values of xl, xu, and xrnew
    %will hold for every cycle of while loop
    
    if (fcn(xrnew)>0&&fcn(xl)>0)||(fcn(xrnew)<0&&fcn(xl)<0)
        xrold=xl;
        xl=xrnew;
        
    else
        xrold=xu;
        xu=xrnew;
    end
    
    %Incriment the iterations as a timer for the while loop
   
    iter=iter+1;

end

%Output results with one final if/else statement 
if err<=errtol 
    final=xrnew;
    fxroot=fcn(final);
else
    fprintf('root not found within tolerance');
end

%End of function
end
    