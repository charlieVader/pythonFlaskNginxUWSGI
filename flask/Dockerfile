# User the Python3.7.2 container image
FROM python:3.7.2-stretch

# Set the working directory to /ground0
WORKDIR /ground0

# Copy the current directory contents into the container at /ground0
ADD . /ground0

# Install dependencies
RUN pip3 install --no-cache-dir -r requirements.txt

# # Run the commant to start uWSGI
CMD [ "uwsgi", "--ini", "app.ini" ]