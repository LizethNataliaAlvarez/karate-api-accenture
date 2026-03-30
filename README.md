# 🧪 API Automation Karate DSL - Idiomas CRUD

Proyecto de automatización de pruebas API utilizando **Karate DSL**, **Maven** y **Java** para validar el CRUD del endpoint **/idiomas** Curso de UDEMY.

## 📌 Descripción
Este proyecto contiene pruebas automatizadas para los endpoints:
- GET /idiomas/{id}
- POST /idiomas
- PUT /idiomas/{id}
- DELETE /idiomas/{id}

Las pruebas validan:
- Status codes
- Tipos de datos
- Respuestas del body
- Buenas prácticas de automatización API

---

## 🛠 Tecnologías utilizadas
- Java
- Maven
- Karate DSL
- JUnit
- Git
- GitHub

---

## 📂 Estructura del proyecto
src
└── test
├── java
│ └── runners
│ └── TestRunner.java
└── resources
└── features
├── get-idiomas.feature
├── post-idiomas.feature
├── put-idiomas.feature
└── delete-idiomas.feature


---

## 🚀 Cómo ejecutar las pruebas
Desde la raíz del proyecto ejecutar:

```bash
mvn test
