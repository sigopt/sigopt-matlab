## MATLAB + SIGOPT

This package contains code which will run SigOpt experiments in MATLAB.

## Franke Example, Windows 7

1. Install [`Python`] (https://www.python.org/downloads/) on MATLAB workstation.
  - See [here](https://www.mathworks.com/help/matlab/matlab_external/system-requirements-for-matlab-engine-for-python.html) for MATLAB Python requirements (i.e. 64-bit for Windows workstations).

2. Ensure [`pip`](https://pip.pypa.io/en/stable/installing/) is installed. 
  - It comes natively with Python installations from python.org.

3. Install the SigOpt Python wrapper.
  - In the Start Menu, open the command prompt (`cmd`).
  - Enter the appropriate command to set the path variable (eg. `path=%path%;C:\python27`).
  - `python -m pip install sigopt`

4. Make this folder accessible by doing either of the following:
  - Change working directory to include this folder.
  - Add this folder/toolbox to the MATLAB `path`.

5. Add API key to file `api_token.secret`. 
  - If not already done, sign up for [SigOpt](www.sigopt.com).
  - While logged in, copy your API token from [here](https://sigopt.com/docs/overview/python).
  - Create a text file with the name `api_token.secret` in the working directory.
  - Add one line to this file: `{"API_TOKEN": "<client_api_token>"}`

6. Setup MATLAB

  - Open MATLAB.
  - Run in command window and ensure `pyversion` is pointing to the correct Python interpreter. It probably is. If it is not, then something like `pyversion C:\Python27\python`.
  - If necessary, edit `__init__.py` to point to the location of this toolbox (specifically, `sigopt_matlab.py`).

7. Run the `sigopt_example.m` script.

8. View your experiment's progress here [here](www.sigopt.com/experiments)!

### Now make a copy of `sigopt_example.m`, rename and customize it to make your own simulations! 