# MATLAB + SIGOPT

This package contains code which will run SigOpt experiments in MATLAB.

## Getting Started

1. Install [Python](https://www.python.org/downloads/) on MATLAB workstation.
   - See [here](https://www.mathworks.com/help/matlab/matlab_external/system-requirements-for-matlab-engine-for-python.html) for MATLAB Python requirements (i.e. 64-bit for Windows workstations).

2. Ensure [`pip`](https://pip.pypa.io/en/stable/installing/) is installed. 
   - It comes natively with Python installations from python.org.

3. Install the SigOpt Python wrapper. You will need version 2.8.0 or higher
   - On Unix / OS X
      - `pip install "sigopt==3.0.0"`
   - On Windows:
      - In the Start Menu, open the command prompt (`cmd`).
      - Enter the appropriate command to set the path variable (for example, `path=%path%;C:\python27`)
      - `python -m pip install "sigopt==3.0.0"`

4. Setup MATLAB
    - Open MATLAB.
    - Run in command window and ensure `pyversion` is pointing to the correct Python interpreter. It probably is.
        - On Unix / OS X it should be something like `pyversion /usr/bin/python`. 
        - On Windows it should be something like `pyversion C:\Python27\python`.

5. Download or clone this repository into the folder or your choice.

6. [Set the path](https://www.mathworks.com/help/matlab/matlab_env/add-remove-or-reorder-folders-on-the-search-path.html) in MATLAB to include the `sigopt-matlab` folder from the previous step.

7. Open the `sigopt_example.m` script and update it to include your SigOpt API token (available at https://sigopt.com/tokens/info)

8. Within Matlab, run the `sigopt_example.m` script 

```matlab
run("sigopt_example.m")
```

9. View your experiment's progress [here](http://www.sigopt.com/experiments)!

**Now make a copy of `sigopt_example.m`, rename and customize it to make your own simulations!**

## Troubleshooting

Make sure the path to the `sigopt` python package is in py.sys.path:
  - On Unix / OS X, you may want to run `insert(py.sys.path, int32(0), '/usr/local/lib/python2.7/site-packages')`
  - On Windows, you may want to run `insert(py.sys.path, int32(0), 'C:\python27/site-packages')`

For more information on integrating Python with Matlab, visit the [Matlab Python docs](https://www.mathworks.com/help/matlab/matlab_external/undefined-variable-py-or-function-py-command.html).
