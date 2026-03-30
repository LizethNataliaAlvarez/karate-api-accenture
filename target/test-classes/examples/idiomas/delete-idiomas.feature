Feature: Pruebas del endpoint DELETE /idiomas/{id}

# Background: Configuración base para todos los escenarios
  Background:
    # URL base del servidor de producción
    * url 'https://labqa-api-rest-crud-basic-tqa.onrender.com/api/v1'

    # Endpoint base reutilizable
    * def endpoint = 'idiomas'

    # Header JSON
    * header Content-Type = 'application/json'


# Escenario: Eliminar idioma y validar status 204 sin body
  Scenario: Eliminar idioma y validar status 204 y respuesta vacía
    # ID existente para eliminar
    * def idIdioma = 2

    Given path endpoint, idIdioma
    When method delete
    Then status 204

    # Validar que la respuesta esté vacía (no body)
    And match response == ''