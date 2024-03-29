# Use the official Python image as the base image
FROM python:3.9
EXPOSE 8051

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Command to run the Python application
# CMD ["python", "src/main/python/programmingtheiot/cda/app/ConstrainedDeviceApp.py"]
CMD ["sh", "-c", "python3 src/test/python/programmingtheiot/part01/integration/app/ConstrainedDeviceAppTest.py && python3 src/main/python/programmingtheiot/cda/app/ConstrainedDeviceApp.py"]