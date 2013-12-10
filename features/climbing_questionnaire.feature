Feature: As a rock climbing fan
  I want to fill out a questionnaire
  So that I can list my climbing preferences

  Scenario: Filling out a questionnaire
    Given I am on the homepage
    When I submit a climbing questionnaire
    Then I can see my answers
