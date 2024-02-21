# Python image to use.
FROM python:3.9
 
# Set the working directory to /app
WORKDIR /app
 
# copy the requirements file used for dependencies
COPY requirements.txt .
 
EXPOSE 8080
 
# Copy the rest of the working directory contents into the container at /app
COPY . .
 
# Install any needed packages specified in requirements.txt
RUN pip install -r requirements.txt
 
# Run app.py when the container launches
ENTRYPOINT ["streamlit", "run", "app.py", "--server.port=8080", "--server.address=0.0.0.0"]