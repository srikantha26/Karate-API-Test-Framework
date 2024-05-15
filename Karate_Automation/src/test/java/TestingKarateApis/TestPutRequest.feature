Feature: Test PUT api test scenario

  Scenario: Test PUT service
    Given Url "https://reqres.in/api/users/2"
    Then request {"id":7,"email":"michael.lawson@reqres.in","first_name":"Michael","last_name":"Lawson"}
    Then method PUT
    Then status 200
    And Print response
