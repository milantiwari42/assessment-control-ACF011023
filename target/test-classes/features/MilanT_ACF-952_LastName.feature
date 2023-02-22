#Author:MilanTiwari
  #ACF-952
  #CreateTestSetForLastNameTextFields

Feature: ASK Application

  Background:
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Register Now')]"
    Then I wait for element with xpath "//mat-card[@class='mat-card']" to be present

  @LastNameTextFields1
  Scenario Outline: Verify last name text fields accept alphanumeric value
    Then I type "<LastName>" into element with xpath "//input[@placeholder='Last Name']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Register Me')]"
    Then element with xpath "//mat-error[contains(text(),'Should contain only latin characters, space or numbers')]" should not be present
    Then I wait for 2 sec
    Examples:
      | LastName    |
      | Smith       |
      | Smith1      |
      | Smith I     |
      | Smith Jones |
      | Smith 100   |
      | 12345       |

  @LastNameTextFields2
  Scenario: Verify Last name can't be blank
    When I click on element using JavaScript with xpath "//input[@placeholder='Last Name']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Register Me')]"
    Then I wait for element with xpath "//mat-error[@id='mat-error-0']" to be present

  @LastNameTextFields3
  Scenario Outline: Verify Last name can't accept special character
    When I type "<LastName>" into element with xpath "//input[@placeholder='Last Name']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Register Me')]"
    Then I wait for element with xpath "//mat-error[contains(text(),'Should contain only latin characters, space or numbers')]" to be present
    Then element with xpath "//mat-error[contains(text(),'Should contain only latin characters, space or numbers')]" should have text as "Should contain only latin characters, space or numbers"
    Examples:
      | LastName       |
      | Smith#         |
      | Smith1#@       |
      | Smith I@#$     |
      | Smith Jones$#@ |
      | Smith 100 @#&  |
      | @#$%^          |
      |12345@#$        |





    
    



    