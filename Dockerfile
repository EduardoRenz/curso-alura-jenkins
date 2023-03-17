# set base image (host OS)
FROM python:3.7.6

# set the working directory in the container
WORKDIR /code
# copy the dependencies file to the working directory
COPY requirements.txt .

RUN pip install --upgrade pip
# install dependencies
RUN pip install -r requirements.txt
# command to run on container start
CMD [ "jupyter", "notebook","--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root" ]