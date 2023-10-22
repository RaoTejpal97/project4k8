FROM python:3.7.3-stretch

## Step 1:
# Create a working directory

## Step 2:
# Copy source code to working directory

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013

## Step 4:
# Expose port 80

## Step 5:
# Run app.py at container launch

WORKDIR /app

COPY . app.py /app/
COPY ./model_data /app/


RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

EXPOSE 80


CMD ["python", "app.py"]

