FROM eclipse-temurin:17-jdk

WORKDIR /app

# install curl
RUN apt-get update && apt-get install -y curl

# download paper (contoh 1.20.4)
RUN curl -o paper.jar https://api.papermc.io/v2/projects/paper/versions/1.20.4/builds/497/downloads/paper-1.20.4-497.jar

COPY start.sh .

RUN chmod +x start.sh

EXPOSE 25565

CMD ["./start.sh"]
