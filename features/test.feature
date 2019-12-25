Feature: Sample Android Test
  
  Scenario: Login
    Given I am on the login screen
   	When I write email "email@test.com" and password "passwordghhvg123"
   	And I click login button
    Then Pop up message showed tells "You are logged in!"
