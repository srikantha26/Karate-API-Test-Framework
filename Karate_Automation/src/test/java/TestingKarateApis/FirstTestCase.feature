Feature: Sample API Test

  Background: 
    * url 'https://reqres.in/api'

  @tag1
  Scenario: sample first test case
    Given url "https://reqres.in/api/users?page=2"
    When method GET
    Then status 200

  Scenario: sample first test case session#2
    Given path "/users"
    Then params page = 2
    When method GET
    Then status 200
    And print response
    And print responseStatus
    And print responseTime
    Then match response.data[0].id != null
    Then match $.data[0].email == 'george.bluth@reqres.in'
