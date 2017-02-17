## MATLAB + SIGOPT

This package contains code which will run SigOpt experiments in MATLAB.

## Franke Example, Windows 7

1. Install [Python] (https://www.python.org/downloads/) on MATLAB workstation.
  - See [here](https://www.mathworks.com/help/matlab/matlab_external/system-requirements-for-matlab-engine-for-python.html) for MATLAB Python requirements (i.e. 64-bit for Windows workstations).

2. Ensure [`pip`](https://pip.pypa.io/en/stable/installing/) is installed. 
  - It comes natively with Python installations from python.org.

3. Install the SigOpt Python wrapper.
   - On Unix / OS X
      - `pip install sigopt`
   - On Windows:
      - In the Start Menu, open the command prompt (`cmd`).
      - Enter the appropriate command to set the path variable (for example, `path=%path%;C:\python27`)
      - `python -m pip install sigopt`

4. Setup MATLAB
    - Open MATLAB.
    - Run in command window and ensure `pyversion` is pointing to the correct Python interpreter. It probably is.
        - On Unix / OS X it should be something like `pyversion /usr/bin/python`. 
        - On Windows it should be something like `pyversion C:\Python27\python`.

5. Update the `sigopt_example.m` script to include your SigOpt API token (available at https://sigopt.com/user/profile)

6. Run the `sigopt_example.m` script.

7. View your experiment's progress [here](http://www.sigopt.com/experiments)!

#### Now make a copy of `sigopt_example.m`, rename and customize it to make your own simulations! 

## Troubleshooting

- Make sure the path to the `sigopt` python package is in py.sys.path
  - On Unix / OS X, you may want to run `insert(py.sys.path, int32(0), '/usr/local/lib/python2.7/site-packages')`
  - On Windows, you may want to run `insert(py.sys.path, int32(0), 'C:\python27/site-packages')`
- You can also visit
  [Matlab Python docs](https://www.mathworks.com/help/matlab/matlab_external/undefined-variable-py-or-function-py-command.html)
  for more information
