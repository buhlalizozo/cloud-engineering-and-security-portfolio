FROM python:3.12-slim

# Create a non-root user to run the app
RUN addgroup --system --gid 1001 appgroup && adduser --system --uid 1001 --ingroup appgroup appuser

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .

# Switch to non-root user
USER 1001

EXPOSE 5000

CMD ["python", "app.py"]