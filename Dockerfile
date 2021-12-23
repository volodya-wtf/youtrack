FROM openjdk:7
MAINTAINER Vladimir Petrov <petrov_va@landfinance.ru>

ENV YOUTRACK_VERSION=6.0.12634
RUN wget http://download-cf.jetbrains.com/charisma/youtrack-$YOUTRACK_VERSION.jar -O youtrack.jar

EXPOSE 80
CMD ["java", "-Xmx1g", "-XX:MaxPermSize=250m", "-Djava.awt.headless=true", "-jar", "youtrack.jar", "80"]
