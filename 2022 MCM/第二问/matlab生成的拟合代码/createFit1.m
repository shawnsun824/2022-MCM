function [fitresult, gof] = createFit(x1, y1)
%CREATEFIT(X1,Y1)
%  Create a fit.
%
%  Data for 'fit 1' fit:
%      X Input : x1
%      Y Output: y1
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  另请参阅 FIT, CFIT, SFIT.

%  由 MATLAB 于 10-Sep-2023 15:18:21 自动生成


%% Fit: 'fit 1'.
[xData, yData] = prepareCurveData( x1, y1 );

% Set up fittype and options.
ft = fittype( 'poly1' );
opts = fitoptions( 'Method', 'LinearLeastSquares' );
opts.Robust = 'LAR';

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'y1 vs. x1', 'fit 1', 'Location', 'NorthEast' );
% Label axes
xlabel x1
ylabel y1
grid on


