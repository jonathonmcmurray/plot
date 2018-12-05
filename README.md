# plot

[![Anaconda-Server Badge](https://anaconda.org/jmcmurray/plot/badges/version.svg)](https://anaconda.org/jmcmurray/plot)
[![Anaconda-Server Badge](https://anaconda.org/jmcmurray/plot/badges/downloads.svg)](https://anaconda.org/jmcmurray/plot)

Plotting module for q using qutil & embedPy

Simple wrapper around matplotlib. Includes [`importmatplotlib.q`](https://github.com/KxSystems/embedPy/blob/master/examples/importmatplotlib.q) from kx. Requires [embedPy](https://github.com/KxSystems/embedPy), works nicely with [jupyterq](https://github.com/KxSystems/jupyterq)

Built for [qutil](https://github.com/nugend/qutil), (will be) hosted on [Anaconda Cloud](https://anaconda.org/jmcmurray/repo)

Accepts dictionaries with some or all args. Little error handling to prevent errors with missing required args. Suitable only for the most basic of plots, for anything with more complex requirements more direct usage of matplotlib will be required

## Setup

* Install kdb, embedPy & jupyterq. Easiest way is via [Anaconda](https://www.anaconda.com/download/):

    `conda install -c kx jupyterq  #other packges installed via dependency`
    
    
* Install necessary q modules. Again, via Anaconda (reQ to be used for downloading datasets):

    `conda install -c jmcmurray req plot`
    
    
* Run Jupyter in directory containing notebook:

    `jupyter notebook`
    
Without jupyter, also works from console; display locally in Qt window or save to file

## Usage

For examples, see [plot.ipynb](plot.ipynb), [AoC Stats.ipynb](AoC Stats.ipynb) & [Cryptographic Speed Test.ipynb](Cryptographic Speed Test.ipynb)

Basic usage is `plot` with argument dictionary. Valid keys for argument dictionary:

* `plot` - type of plot; options: `` `line`pie``
* `file` - file to save to (*optional* if not provided, will output plot to Jupyter/Qt window)
* `x` - x values for line chart
* `y` - y values for line chart
* `title` - title [string]
* `xlabel` - label for x axis (line chart) [string]
* `ylabel` - label for y axis (line chart) [string]
* `grid` - display grid (line chart) [boolean]
* `labels` - categories for pie chart
* `sizes` - percentages for pie chart


