# set base image (host OS)
FROM python:3.9

# set the working directory in the container
WORKDIR /code

# copy the dependencies file to the working directory
COPY ./ .

# create a mount for the code
VOLUME ./src/:/code/src

# install dependencies
RUN pip install -r requirements.txt

# command to run on container start
ENTRYPOINT [ "/bin/bash" ]