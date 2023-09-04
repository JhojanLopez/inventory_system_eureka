FROM gradle:8-jdk17-alpine AS build

WORKDIR /app

COPY build.gradle settings.gradle ./

COPY src ./src

RUN gradle bootJar

FROM amazoncorretto:17.0.0-alpine

WORKDIR /app

COPY --from=build /app/build/libs/*.jar eureka.jar

EXPOSE 8761

CMD ["java", "-jar", "eureka.jar"]
