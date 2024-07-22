# Use the official Ubuntu base image
FROM ubuntu:latest

#ENV DEBIAN_FRONTEND=noninteractive

# Update and install necessary packages
RUN apt-get update -y && apt-get install -y fortune-mod cowsay

COPY install.sh /install.sh
COPY wisecow.sh /wisecow.sh

RUN chmod +x /install.sh
RUN chmod +x /wisecow.sh

#EXPOSE 4499

CMD ["bash", "-c", "sh wisecow.sh"]
EXPOSE 4499