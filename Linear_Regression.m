% Linear Regression Example
% Solves Ax=b using the method of least squares
%
% %%%%%%%%%%%%%%%%%%%% Example 1 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%% Step 1: Find the first best fit line %%%%%%%%%
clear;
clc;

% Random Point Values Set 1
x1 = [1.1, 2.3, 4.3, 5.7, 6.3, 7.0, 8.8, 9.2, 13.0, 15.2];
b1 = [1.3, 2.2, 3.4, 4.8, 5.8, 7.0, 8.0, 10.0, 11.0, 15.0];

% Determine number of values
N = length(x1);

% Find the line of best fit
a = (x1(:).'*x1(:))\(x1(:).'*b1(:));
line1 = a*x1;

% Plot the points and best fit line
plot(x1,line1,'-r');
hold
plot(x1,b1,'.b');
xlim([0 max(x1)+2]);
ylim([0 max(b1)+2]);

%%
pause(1)
%%%%%%%% Step 2: Add the new set of points %%%%%%%%%%

% Random Point Values Set 2
x2 = [12.3, 11.8, 6.0, 5.0, 3.2, 5.6, 11.2, 8.6, 15.2, 7.5];
b2 = [3.3, 4.6, 3.2, 4.5, 5.9, 7.2, 8.1, 10.2, 11.3, 14.0];

% Plot the Points
plot(x2,b2,'.b');

%%
pause(1)
%%%%%%%% Step 3: Plot the new best fitting line %%%%%%%%%%

% Full Set of Points
x = horzcat(x1,x2);
fx = horzcat(b1,b2);

% Find the new best fit line
a = (x(:).'*x(:))\(x(:).'*fx(:));
line = a*x;

% Plot the new best fit line

plot(x,line,'-g');

%%
pause(1)
%%%%%%%% Step 4: Add the new set of points %%%%%%%%%%

% Random Point Values Set 3
x3 = [8.8, 5.6, 2.1, 3.6, 12.2, 1.6, 8.9, 7.4, 2.8, 10.8];
b3 = [3.6, 8.2, 6.4, 12.6, 3.7, 6.5, 3.3, 4.6, 6.8, 6.4];

% Plot the Points
plot(x3,b3,'.b');

%%
pause(1)
%%%%%%%% Step 5: Plot the new best fitting line %%%%%%%%%%

% Full Set of Points
x = horzcat(x1,x2,x3);
fx = horzcat(b1,b2,b3);

% Find the new best fit line
a = (x(:).'*x(:))\(x(:).'*fx(:));
line = a*x;

% Plot the new best fit line

plot(x,line,'-b');






