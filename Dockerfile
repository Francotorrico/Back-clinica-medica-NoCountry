FROM mysql:8

ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=nocountry-db
ENV MYSQL_USER=nocountry
ENV MYSQL_PASSWORD=password

# Puerto expuesto por MySQL (opcional, dependiendo de tus necesidades)
EXPOSE 3306

# Opcional: Copia el archivo custom.cnf si necesitas configuraciones personalizadas
COPY custom.cnf /etc/mysql/conf.d/custom.cnf

# Volumen para persistir los datos de MySQL
VOLUME /var/lib/mysql
