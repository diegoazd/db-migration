FROM openjdk:11
COPY . /usr/src/build
WORKDIR /usr/src/build
RUN ./gradlew :app:build
RUN mkdir /usr/src/app
RUN cp app/build/libs/app.jar /usr/src/app
WORKDIR /usr/src/app
RUN rm -rf /usr/src/build
ENTRYPOINT ["java", "-jar", "-Dspring.profiles.active=prod", "app.jar"]
