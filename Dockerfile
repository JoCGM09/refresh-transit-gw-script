FROM ubuntu:latest
RUN apt-get update && apt-get install -y curl ca-certificates
RUN curl -fsSL https://clis.cloud.ibm.com/install/linux | sh
RUN ibmcloud plugin install tg
COPY script-ida.sh /app/
WORKDIR /app
RUN chmod +x script-ida.sh 
CMD ["sh", "-c", "./script-ida.sh"]