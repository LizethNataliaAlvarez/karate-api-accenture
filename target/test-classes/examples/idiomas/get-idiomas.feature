Feature: Pruebas del endpoint GET /idiomas/{id}

# Background: Configuración base para todos los escenarios
    Background:
    # URL base del servidor de producción
        * url 'https://labqa-api-rest-crud-basic-tqa.onrender.com/api/v1'

    # Endpoint base reutilizable
        * def endpoint = 'idiomas'

    # Header de tipo JSON
        * header Content-Type = 'application/json'


# Escenario 1: Validar status 200 y tipos de datos en la respuesta
    Scenario: Obtener idioma por ID y validar status 200 y tipos de datos
    # Se consulta un idioma existente
        Given path endpoint, 2
        When method get
        Then status 200

    # Validar tipos de datos según contrato OpenAPI
        And match response ==
    """
    {
      id: '#number',
      idioma: '#string',
      descripcion: '#string'
    }
    """


# Escenario 2: Validar status 200 y solo el valor del id
    Scenario: Obtener idioma por ID y validar solo el valor del id
        Given path endpoint, 2
        When method get
        Then status 200

    # Validar únicamente el valor del id
        And match response.id == 2