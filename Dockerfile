# Use the official Python base image
FROM python:3.8

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file into the container
COPY requirements.txt .

# Install the Python dependencies from the requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of your application files into the container
COPY . .

# Run your Python script or start your Python application
CMD [ "python", "your_main_script.py" ]
