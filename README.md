# docker-converter

This Docker image converts any files to csv(didn't change name and extention) using gnumeric's ssconvert

## How to use

The docker image assumes that the local folder that you're sharing with the container contains 2 folders for the in- and temp: 

```
data
  in/
  tmp/
```

Start the docker image by running the following command where /path/to/folder is the path to the folder containing the in- and output folders:

`docker run -v d:/data:/src eragonby/docker-convertor ARG1 ARG2` 
where ARG1 it's file name(in quotes) and ARG2 it's number of sheet that should be converted(sheet1 - 1, sheet2 - 2, etc). Example:

	docker run -v d:/data:/src eragonby/docker-convertor 'test.xls' 1

## Copyright

Copyright for source project docker-ssconvert-xls2csv are held by Marc Rooding, 2015.
