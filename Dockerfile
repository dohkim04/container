# Use official Ubuntu image as a base image being retrieved from Docker Hub.
FROM ubuntu

# Update Ubuntu package list and install python package manager pip.
RUN apt-get update -y && apt-get install -y python3-pip

# Install python3 and AWS boto3 library using pip package manager.
RUN apt install python3 && pip3 install boto3 

# Set working directory to the following file path below.
WORKDIR /$(pwd)/wk16project

# Copy your script from your host directory below to the container directory above.
COPY wk16project/getversion.sh .

# Report the version of the Python on your current system (not inside the container)
CMD ["sh","getversion.sh"]


