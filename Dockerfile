# Use an official Python runtime as a parent image
FROM python:3.9-slim-buster

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY /Using MySQL/app.py

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r /Using MySQL/requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Define environment variables
ENV FLASK_APP=app.py
ENV FLASK_ENV=development

# Run the command to start Flask
CMD ["flask", "run", "--host=0.0.0.0"]
CMD ["python3", "app.py"]



