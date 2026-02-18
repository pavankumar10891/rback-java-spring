# rback-java-spring
Dependencies Add 
Spring Web 
Spring Data JPA 
Spring Security 
JWT (jjwt-api)
JWT (jjwt-api)
JWT (jjwt-api)
MySQL Driver 
Lombok

Features:
- Spring Boot 3.5
- JWT Authentication
- Role-Based Access Control
- BCrypt Password Encryption
- Multiple roles per user
- 401 / 403 handling

APIs:
POST /auth/register
POST /auth/login
GET /case/all  (ADMIN)
POST /case/create (COORDINATOR)
PUT /case/update (ENGINEER)
PUT /case/draft (DRAFTER)
PUT /case/complete (FINALIZER)

mvn spring-boot:run
