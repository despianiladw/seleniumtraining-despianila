@javascript
Feature: create 5 gratuity

Scenario Outline: make sure 5 gratuity deleted
 Given I try login mokapos
 And I access gratuity
 And I choose dropdown outlet
 And I delete gratuity with <name>
 Then I not see gratuity with <name>
 And I should see number of gratuity

 Examples:
 | name |
 |   1  |
 |   2  |
 |   3  |
 |   4  |
 |   5  |
