classdef Connection
  properties
    client_token
    py_connection
  end
  methods
    function obj = Connection(token)
      obj.client_token = token;
      obj.py_connection = py.sigopt.Connection(token, 'sigopt-matlab/1.0.0');
    end

    function resource = experiments(obj, id)
      import sigopt.Resource;
      if nargin == 2
        args = pyargs('id', id);
      else
        args = pyargs();
      end
      resource = Resource(obj.py_connection.experiments(args));
    end
  end
end
