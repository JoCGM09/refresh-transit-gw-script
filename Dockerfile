FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl ca-certificates
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
RUN ibmcloud plugin install tg
COPY refresh-transit.sh /app/
WORKDIR /app
RUN chmod +x refresh-transit.sh 
CMD ["sh", "-c", "./refresh-transit.sh"]