#!/bin/bash

# Install dependencies
poetry install
# Start the application
gunicorn --bind=0.0.0.0:8000 app:app