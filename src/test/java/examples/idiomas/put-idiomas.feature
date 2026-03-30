Feature: Pruebas del endpoint PUT /idiomas/{id}

# Background: Configuración base para todos los escenarios
    Background:
    # URL base del servidor de producción
        * url 'https://labqa-api-rest-crud-basic-tqa.onrender.com/api/v1'

    # Endpoint base reutilizable
        * def endpoint = 'idiomas'

    # Header JSON
        * header Content-Type = 'application/json'


# Escenario 1: Validar status 200 y tipos de datos al actualizar mínimo un campo
    Scenario: Actualizar idioma y validar status 200 y tipos de datos
    # ID existente en el servidor
        * def idIdioma = 2

    # Se actualiza solo un campo (descripcion)
        Given path endpoint, idIdioma
        And request { idioma: 'Español', descripcion: 'Idioma actualizado' }
        When method put
        Then status 200

    # Validar tipos de datos en la respuesta
        And match response ==
    """
    {
      id: '#number',
      idioma: '#string',
      descripcion: '#string'
    }
    """


# Escenario 2: Validar status 200 y el valor completo del body
    Scenario: Actualizar idioma y validar body completo
        * def idIdioma = 2
        * def idiomaActualizado = 'Italiano'
        * def descripcionActualizada = 'Idioma hablado en Italia'

        Given path endpoint, idIdioma
        And request
    """
    {
      idioma: #(idiomaActualizado),
      descripcion: #(descripcionActualizada)
    }
    """
        When method put
        Then status 200

    # Validar valores exactos del response
        And match response ==
    """
    {
      id: #(idIdioma),
      idioma: #(idiomaActualizado),
      descripcion: #(descripcionActualizada)
    }
    """