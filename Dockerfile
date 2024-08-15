# Usar una imagen base con OpenJDK 17
FROM openjdk:17-jdk-slim

# Establecer el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo JAR del microservicio al directorio de trabajo en el contenedor
COPY target/user-service-0.0.1-SNAPSHOT.jardo /app/user-service.jar

# Exponer el puerto en el que el microservicio escuchará
EXPOSE 8081

# Definir el comando para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/user-service.jar"]
