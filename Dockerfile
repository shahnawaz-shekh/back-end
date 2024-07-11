# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Install any needed packages specified in requirements.txt
RUN pip install Flask 
RUN pip install psycopg2-binary
RUN pip install Flask-SQLAlchemy
RUN pip install flask-cors

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Define environment variable
ENV PORT=8080

# Copy the current directory contents into the container at /app
COPY . .

# Run app.py when the container launches
CMD ["python", "app.py"]
