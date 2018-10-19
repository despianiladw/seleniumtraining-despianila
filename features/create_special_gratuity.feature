@javascript
Feature: create 5 gratuity

Scenario Outline: make sure 5 gratuity created
 Given I try login mokapos
 And I access gratuity
 And I choose dropdown outlet
 And I create gratuity with <name> and <value>
 Then I should see <name> on gratuity list
 And I should see number of gratuity

 Examples:
 | name | value |
 |   1  |  10   |
 |   2  |  10   |
 |   3  |  10   |
 |   4  |  10   |
 |   5  |  10   |
