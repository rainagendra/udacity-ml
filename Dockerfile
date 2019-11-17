FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /app
## Step 2:
# Copy source code to working directory
COPY model_data /app/model_data
COPY requirements.txt /app/
## Step 3:
# Install packages from requirements.txt
RUN pip install --upgrade pip 
RUN pip install --trusted-host pypi.python.org -r requirements.txt
# hadolint ignore=DL3013
#Copy program into /app, puuting this step after RUN so that update in app.py will not force to run pip install again and again
COPY app.py /app/
## Step 4:
# Expose port 80
EXPOSE 80
## Step 5:
# Run app.py at container launch
CMD ["python","app.py"]
