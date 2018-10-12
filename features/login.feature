@javascript
Feature: Login Mokapos

Scenario: Login mokapos
 Given user try login mokapos
 When user input username and password
 Then should see dashboard mokapos
