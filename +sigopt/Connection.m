classdef Connection
  properties
    api_token
    py_connection
  end
  methods
    function obj = Connection(api_token)
      obj.api_token = api_token;
      obj.py_connection = py.sigopt.Connection(api_token, 'sigopt-matlab/1.0.0');
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
    
    function set_api_url(obj, api_url)
        obj.py_connection.set_api_url(api_url);
    end
    
    function set_verify_ssl_certs(obj, verify_ssl_certs)
        obj.py_connection.set_verify_ssl_certs(verify_ssl_certs);
    end
    
    function set_proxies(obj, proxies)
        obj.py_connection.set_proxies(proxies)
    end
  end
end
