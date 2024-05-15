Feature: Test POST APIs
  I want test POST API test scenarios here

  Background: 
    * url 'https://reqres.in/api'

  @tag1
  Scenario: Testcase for POST API
    Given path '/users'
    Then request {"name": "morpheus","job": "leader"}
    When method POST
    Then status 201
    And print response
    Then match $ contains {id:"#notnull"}
    Then match $ contains {id:"#string"}
    Then match $ contains {"name": "morpheus"}
    Then match response ==  {"name": "morpheus","job": "leader","id": "#string","createdAt": "#ignore"}
