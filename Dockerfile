

FROM python:3.7.11-slim

WORKDIR  /python-api

#aqui copia de requirements para que tenenerlo en el repositorio workdir es para la ubicacion en donde estar
COPY requirements.txt requirements.txt

# corremos el archivo requirements y se instalan las dependencias que estan alli
RUN pip install -r requirements.txt

#copiamos todo
COPY . .

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
