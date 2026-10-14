# Geospatial Raster Data Processing in Python
This repository contains an introduction to geospatial raster data processing in Python. This is part of the course on [Advanced Geospatial Analytics with Python](https://hamedalemo.github.io/advanced-geo-python/intro.html) taught since Fall 2023 at Clark University. 

## Requirements

You need to have [pixi](https://pixi.sh) installed on your machine. Follow the [installation instructions](https://pixi.sh/latest/#installation) for your operating system, for example on macOS/Linux (if you are on Windows using WSL, use this command in your WSL terminal):

```
curl -fsSL https://pixi.sh/install.sh | sh
```

or on native Windows (PowerShell, not WSL):

```
powershell -ExecutionPolicy ByPass -c "irm -useb https://pixi.sh/install.ps1 | iex"
```


## Instructions

Clone this repository to your local machine:

```
git clone git@github.com:HamedAlemo/raster-data-tutorial.git
```

Change your directory to the cloned repository:

```
cd raster-data-tutorial
```


Launch Jupyter Lab (running this for the first time will install the environment using the dependencies in `pixi.toml` and the exact versions pinned in `pixi.lock`):

```
pixi run lab
```

- Jupyter Lab will open in your browser (otherwise copy the url printed in the terminal and paste it in your browser).
- Open `notebooks/raster_analysis.ipynb` and `notebooks/raster_processing.ipynb`, and follow the instructions. Downloaded data is stored in `data/` and the rasters the notebooks write are saved in `output/`, both in the repository root.
- The Dask dashboard will be available at the link printed by the Dask client (by default http://localhost:8787).

To add a new package to the environment, run `pixi add <package-name>`.
