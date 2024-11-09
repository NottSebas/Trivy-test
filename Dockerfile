# Usa la imagen base de Python
FROM python:3.4-alpine

# Establece el directorio de trabajo
WORKDIR /app

# Copia los archivos de requisitos y los instala
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copia el resto del código de la aplicación
COPY . .

# Define el comando por defecto para ejecutar la aplicación
CMD ["python", "app.py"]  # Cambia "app.py" al nombre de tu archivo principal
