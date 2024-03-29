# Use the official Python image as the base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the Python application
CMD ["python", "src/main/python/programmingtheiot/cda/app/ConstrainedDeviceApp.py"]