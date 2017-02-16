classdef Resource
  properties
    py_resource
  end
  methods
    function obj = Resource(py_resource)
      obj.py_resource = py_resource
    end

    function resource = suggestions(obj, id)
      import sigopt.Resource
      entity = obj.py_resource.get_bound_entity('suggestions')
      if nargin == 2
        args = pyargs('id', id)
      else
        args = pyargs()
      end
      resource = Resource(entity(args))
    end

    function resource = observations(obj, id)
      import sigopt.Resource
      entity = obj.py_resource.get_bound_entity('observations')
      if nargin == 2
        args = pyargs('id', id)
      else
        args = pyargs()
      end
      resource = Resource(entity(args))
    end

    function response = fetch(obj, params)
      if nargin < 2
        params = struct()
      end
      response = obj.call('fetch', params)
    end

    function response = create(obj, params)
      if nargin < 2
        params = struct()
      end
      response = obj.call('create', params)
    end

    function response = update(obj, params)
      if nargin < 2
        params = struct()
      end
      response = obj.call('update', params)
    end

    function response = delete(obj, params)
      if nargin < 2
        params = struct()
      end
      response = obj.call('delete', params)
    end
  end

  methods (Access = private)
    function response = call(obj, name, params)
      entity = obj.py_resource.get_bound_entity(name);
      json_params = jsonencode(params);
      py_dict = entity.call_with_json(json_params).to_json();
      response = obj.from_python(py_dict);
    end

    function s = from_python(obj, py_response)
      switch class(py_response)
        case {'py.str','py.unicode'}
          s = char(py_response);
        case 'py.int'
          s = double(py_response);
        case 'py.list'
          s = cellfun(@(x) (obj.from_python(x)), cell(py_response), 'UniformOutput', false)
        case 'py.dict'
          s = structfun(@(x) (obj.from_python(x)), struct(py_response), 'UniformOutput', false)
        otherwise
          s = py_response
      end
    end
  end
end
