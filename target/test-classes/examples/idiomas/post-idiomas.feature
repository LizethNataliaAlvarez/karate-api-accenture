Feature: Pruebas del endpoint POST /idiomas

  Background:
    * url 'https://labqa-api-rest-crud-basic-tqa.onrender.com/api/v1/idiomas'
    * header Content-Type = 'application/json'

  Scenario: Crear idioma y validar status 201 y tipos de datos en el body
    Given request { idioma: 'Francés', descripcion: 'Idioma hablado en Francia' }
    When method post
    Then status 201
    And match response == { id: '#number', idioma: '#string', descripcion: '#string' }

  Scenario Outline: Crear idioma y validar status 201 y body completo
    Given request { idioma: '<idioma>', descripcion: '<descripcion>' }
    When method post
    Then status 201
    And match response == { id: '#number', idioma: '<idioma>', descripcion: '<descripcion>' }

    Examples:
      | idioma     | descripcion              |
      | Portugués  | Idioma hablado en Brasil |
      | Japonés    | Idioma hablado en Japón  |