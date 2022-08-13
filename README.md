# Models API Samples

This repository contains several Jupyter Notebooks that demonstrate the `Models` API which I wrote for [Envelope](https://www.envelope.city/). The API contains many powerful functions for processing GIS data and is built entirely on open-source libraries.

## About the Models API

The Models API is a library for processing GIS data, and was originally designed to mimic functions found in Esri's "Geoprocessing" toolbox (a part of their ModelBuilder product). At the API's inception, [Envelope](https://www.envelope.city/) was using Esri-based products to perform geoprocessing, but the company had a long-term goal of transitioning to open-source products that were less expensive and more in line with the company's other technology stacks. The Models API was designed to ease the transition to open-source libraries by creating a conceptual layer between the GIS processing logic and the underlying GIS function calls. 

The Models API was originally based on Esri's ArcPy library, but once the API had been used to segregate the application's business logic from the GIS processing functions the application could then be transitioned from ArcPy to open-source libraries with a minimum amount of effort. The Models API is now based entirely on open-source libraries, primarily:

* PostgreSQL and PostGIS
* Python
    * `psycopg2`
    * `sqlAlchemy` and `geoAlchemy`
    * `pandas` and `geopandas`
    * `shapely`
    * `matplotlib`

## About the Examples

This repository contains several examples of how the Models API can be used to process geographic data. The work performed in each example is described below:

### Bus Stop Distance Example

The [Bus Stop Distance Example](https://github.com/bmlott27/oogeo/blob/main/notebooks/Bus%20Stop%20Example.ipynb) shows how the Models API can be used to find the distance between geometries in two different datasets. The example modifies a parcels dataset by adding columns to the table and populating the columns with the name of and distance to the nearest bus stop. The bus stop data is stored in a separate dataset and PostGIS functions are used to help compare the data between the tables.
