# Clone from official python2.7
FROM python:2.7-slim

# Set working directory to /app
WORKDIR /app

# Copy directory contents into container at /app
COPY ./my_app /app

# Install required packages
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the outside world
EXPOSE 80

# Define eenvironment variable
ENV NAME World

# Run app.py when container launches
CMD ["python", "app.py"]
