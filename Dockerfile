# Use an official Python runtime as a parent image
FROM python:2.7-slim

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

RUN apt-get -y update && apt-get install -y \
         iputils-ping \
         net-tools

# Make port 80 available to the world outside this container
EXPOSE 80

# Define environment variable
ENV NAME denglt

# VOLUME

# Run app.py when the container launches
CMD ["python", "app.py"]



# create image with the command: docker build --tag=friendlyhello .
# run with the command: docker run -d -p 4000:80 friendlyhello
# docker run -d --net=host friendlyhello  # 在mac主机上运行 ,有点问题，不会在主机上监听80 （在boot2docker上会）
