# Usa una imagen de Java 17 como base
FROM openjdk:17-alpine

# Copia el archivo JAR de tu aplicación al contenedor
COPY target/medical-0.0.1-SNAPSHOT.jar /app.jar

# Expone el puerto en el que tu aplicación escucha
EXPOSE 8080

# Comando para ejecutar la aplicación cuando el contenedor se inicia
CMD ["java", "-jar", "/app.jar"]
