FROM python:3.9-alpine

# Add user that will run the app
RUN mkdir -p /home/webapp
WORKDIR /home/webapp

# Install dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

COPY *.py .
EXPOSE 5000
CMD [ "python", "app.py" ]