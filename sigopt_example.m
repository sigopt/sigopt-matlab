% 
%
% define dimensions
%
% make connection object
conn = py.sigopt_matlab.get_connection()

% dimension 1
x_bounds = py.dict(pyargs('min', 0, 'max', 1))
x_parameter = py.dict(pyargs('name', 'x', ...
                             'type', 'double', ...
                             'bounds', x_bounds))
                        
% dimension 2                
y_bounds = py.dict(pyargs('min', 0, 'max', 1))
y_parameter = py.dict(pyargs('name', 'y', ...
                             'type', 'double', ...
                             'bounds', y_bounds))

                    
% define parameters and name variables
parameters = py.list({x_parameter, y_parameter})
name = 'Franke Optimization (MATLAB)'

% make experiment
experiment = py.sigopt_matlab.make_new_experiment(name, parameters, conn)
experiment_id = py.getattr(experiment, 'id')

% optimize!
num_iterations = 30
for n = [1:num_iterations]
    % get suggestion assignments (point in the domain)
    suggestion = py.sigopt_matlab.get_new_suggestion(experiment_id, conn)
    suggestion_id = suggestion{1}
    assignments = suggestion{2}
    % plug in the point into your function/simulation
    value = franke(assignments{'x'}, assignments{'y'})
    % report observed value
    py.sigopt_matlab.report_observation(experiment_id, suggestion_id, value, conn)
end