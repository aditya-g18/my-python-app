# Step 1: Use official Python image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Step 4: Copy the application code
COPY . .

# Step 5: Expose the port where the app will run
EXPOSE 8080

# Step 6: Define the command to run the app
CMD ["python", "app.py"]
