# Gebruik een basis image met Python
FROM python:3.10

# Stel de werkdirectory in
WORKDIR /app

# Kopieer de requirements en installeer de afhankelijkheden
COPY requirements.txt .
RUN pip install -r requirements.txt

# Kopieer de app code
COPY app.py .

# Expose de poort waarop de app draait
EXPOSE 5000

# Commando om de app te starten
CMD ["python", "app.py"]