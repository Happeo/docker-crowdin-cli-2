FROM openjdk:8-jre-stretch
RUN apt-get update && apt-get -y install wget sudo gnupg apt-utils apt-transport-https
RUN wget -qO - https://artifacts.crowdin.com/repo/GPG-KEY-crowdin | sudo apt-key add -
RUN echo "deb https://artifacts.crowdin.com/repo/deb/ /" > /etc/apt/sources.list.d/crowdin.list
RUN apt-get update && sudo apt-get -y install crowdin

RUN mkdir /crowdin
WORKDIR /crowdin

CMD ["/bin/bash"]
