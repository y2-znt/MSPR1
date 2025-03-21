# Étape 1 : Build de l’application
FROM maven:3.8.8-eclipse-temurin-17 AS builder

WORKDIR /app

COPY pom.xml ./
RUN mvn dependency:go-offline

COPY . ./
RUN mvn clean package -DskipTests

# Étape 2 : Image finale avec OpenJDK
FROM openjdk:21-jdk

WORKDIR /app

COPY --from=builder /app/target/*.jar app.jar

EXPOSE 8080

CMD ["java", "-jar", "app.jar"]
