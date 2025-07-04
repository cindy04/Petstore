Feature: Añadir, consultar y actualizar mascota

  Background:
    * url 'https://petstore.swagger.io/v2'
    * def datosMascota = read('classpath:data/agregarMascota.json')

  Scenario: Añadir una mascota a la tienda
    Given path 'pet'
    And request datosMascota
    When method post
    Then status 200
    And match response.id == datosMascota.id
    And match response.name == 'Candy'
    And match response.status == 'available'


  Scenario: Consultar la mascota ingresada previamente (Búsqueda por ID)
    Given path 'pet', datosMascota.id
    When method get
    Then status 200
    And match response.id == datosMascota.id
    And match response.name == datosMascota.name
    And match response.status == datosMascota.status


  Scenario: Actualizar el nombre de la mascota y el estatus de la mascota a “sold”
    * def actualizarMascota = read('classpath:data/actualizarMascota.json')
    Given path 'pet'
    And request actualizarMascota
    When method PUT
    Then status 200
    And match response.status == 'sold'


  Scenario: Consultar la mascota modificada por estatus (Búsqueda por estatus)
    Given path 'pet', datosMascota.id
    When method get
    Then status 200
    And match response.status == 'sold'
    And match response.name == 'Candy'