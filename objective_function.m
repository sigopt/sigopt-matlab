% Example function - replace this with the function you are trying to optimize
% For example purposes we will use Franke's function: https://www.sfu.ca/~ssurjano/franke2d.html
function value = objective_function(assignments)
  x = assignments.x;
  y = assignments.y;
  value = exp(-((9*x-2).^2 + (9*y-2).^2)/4)/2 + ...
          3*exp(-(9*x+1).^2/49 - (9*y+1)/10)/4 + ...
          exp(-((9*x-7).^2 + (9*y-3).^2)/4)/2 - ...
          exp(-((9*x-4).^2 + (9*y-7).^2))/5;
end
