# SigOpt MATLAB API

This is the [SigOpt](https://sigopt.com) MATLAB API client.
Use this to natively call SigOpt API endpoints to create experiments and report data.

For more help getting started with SigOpt and MATLAB, check out the [docs](https://sigopt.com/docs/overview/matlab).

Take a look in `sigopt_example.m` for example usage.

## Getting Started

### Install Python
Our MATLAB API Client is written on top of our [Python API Client](https://github.com/sigopt/sigopt-python). Below are instructions for installing Python and configuring with MATLAB.

Install [Python](https://www.python.org/downloads/) on MATLAB workstation
  - See [here](https://www.mathworks.com/help/matlab/matlab_external/system-requirements-for-matlab-engine-for-python.html) for MATLAB Python requirements (i.e. 64-bit for Windows workstations)
  - Ensure [`pip`](https://pip.pypa.io/en/stable/installing/) is installed. (Pip is included with Python installations from python.org)

Open MATLAB and confirm that MATLAB is correctly configured with Python
  - Within MATLAB, run `pyversion` and ensure the output points to the correct Python interpreter
    - Unix / OS X: the output of `pyversion` should be something like `pyversion /usr/bin/python`
    - Windows: the output of `pyversion` should be something like `pyversion C:\Python27\python`

### Install the SigOpt Python API Client
Once you've completed installing Python in the previous step, install the [SigOpt Python API Client](https://github.com/sigopt/sigopt-python). You will need version 3.0.0 or higher
  - On Unix / OS X:
    - Open the `terminal` Application
    - `pip install "sigopt==3.0.0"`
  - On Windows:
    - In the Start Menu, open the command prompt (`cmd`).
    - Enter the appropriate command to set the path variable (for example, `path=%path%;C:\python27`)
    - `python -m pip install "sigopt==3.0.0"`


### Install the SigOpt MATLAB Client
Clone this repository:

```bash
git clone git@github.com:sigopt/sigopt-matlab.git
```

[Set the path](https://www.mathworks.com/help/matlab/matlab_env/add-remove-or-reorder-folders-on-the-search-path.html) in MATLAB to include the `sigopt-matlab` folder.

### Authentication
Sign up for an account at [https://sigopt.com](https://sigopt.com).
In order to use the API, you'll need your API token from the [API tokens page](https://sigopt.com/tokens).

Open the `sigopt_example.m` script and update it to include your [SigOpt API token](https://sigopt.com/tokens/info).

### Run the Example Code
Once you've completed the authentication in the previous step, you're ready to run the example code. Within MATLAB, run the `sigopt_example.m` script:

```matlab
run("sigopt_example.m")
```

[View your experiment's progress](http://www.sigopt.com/experiments)!

**Now make a copy of `sigopt_example.m`, rename and customize it to make your own simulations!**

## Troubleshooting

Make sure the path to the `sigopt` python package is in py.sys.path:
   - On Unix / OS X, you may want to run `insert(py.sys.path, int32(0), '/usr/local/lib/python2.7/site-packages')`
   - On Windows, you may want to run `insert(py.sys.path, int32(0), 'C:\python27/site-packages')`

For more information on integrating Python with Matlab, visit the [Matlab Python docs](https://www.mathworks.com/help/matlab/matlab_external/undefined-variable-py-or-function-py-command.html).

General Information
========
Repository: 2016-2023
