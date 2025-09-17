
#imagen base de python
FROM python:3.7.11-slim

#ubicacion del proyecto
WORKDIR  /python-api

#aqui copia de requirements para que tenenerlo en el contenedor

# corremos el archivo requirements y se instalan las dependencias que estan alli
RUN pip install -r requirements.txt

#copiamos todo en el contenedor
COPY . .

# es un comando, se inicia el servidor Flask y se expone en todas las interfaces (0.0.0.0)
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
