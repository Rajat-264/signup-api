FROM python:3.9

WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . .

EXPOSE 5000

# Run Flask app using Gunicorn (Better for Production)
CMD ["gunicorn", "--bind", "0.0.0.0:5000", "app:app"]
