import sigopt.Connection

conn = Connection('<YOUR API TOKEN HERE>')

experiment = conn.experiments().create(struct( ...
  'name', 'Franke Optimization (MATLAB)', ...
  'parameters', [ ...
    struct( ...
      'name', 'x', ...
      'type', 'double', ...
      'bounds', struct( ...
        'min', 0, ...
        'max', 1 ...
      ) ...
    ), ...
    struct( ...
      'name', 'y', ...
      'type', 'double', ...
      'bounds', struct( ...
        'min', 0, ...
        'max', 1 ...
      ) ...
    ) ...
  ] ...
))

experiment_id = experiment.id;

% optimize!
num_iterations = 30;
for n = [1:num_iterations]
  % get suggestion assignments (point in the domain)
  suggestion = conn.experiments(experiment_id).suggestions().create()
  suggestion_id = suggestion.id;
  assignments = suggestion.assignments;
  % plug in the point into your function/simulation
  value = objective_function(assignments.x, assignments.y)
  % report observed value
  observation = conn.experiments(experiment_id).observations().create(struct( ...
    'suggestion', suggestion_id, ...
    'value', value ...
  ))
end
