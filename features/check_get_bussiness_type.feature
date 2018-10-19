@javascript
Feature: Check get_business_types

Scenario: Getting get_business_types
Given I've landing page
When I try to check bussiness types
Then I should get response business types 
