# plot 

Plotting module for q using qutil & embedPy

Simple wrapper around matplotlib. Includes [`importmatplotlib.q`](https://github.com/KxSystems/embedPy/blob/master/examples/importmatplotlib.q) from kx. Requires [embedPy](https://github.com/KxSystems/embedPy), works nicely with [jupyterq](https://github.com/KxSystems/jupyterq)

Built for [qutil](https://github.com/nugend/qutil), (will be) hosted on [Anaconda Cloud](https://anaconda.org/jmcmurray/repo)

Accepts dictionaries with some or all args. Little error handling to prevent errors with missing required args. Suitable only for the most basic of plots, for anything with more complex requirements more direct usage of matplotlib will be required

Setup:

* Install kdb, embedPy & jupyterq. Easiest way is via [Anaconda](https://www.anaconda.com/download/):

    `conda install -c kx jupyterq  #other packges installed via dependency`
    
    
* Install necessary q modules. Again, via Anaconda (reQ to be used for downloading datasets):

    `conda install -c jmcmurray req plot`
    
    
* Run Jupyter in directory containing notebook:

    `jupyter notebook`
    
Without jupyter, also works from console; display locally in Qt window or save to file