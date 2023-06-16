#Author:MilanTiwari
  #ACF-952
  #QuizTitle
@askApplicationQuizzesName
Feature: Ask application

    #Login as Teacher
  Background:
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I should see page title as "Assessment Control @ Portnov"
    Then I type "milan.teacher@gmail.com" into element with xpath "//input[@formcontrolname='email']"
    Then I type "12345abc" into element with xpath "//input[@formcontrolname='password']"
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
    Then I wait for 2 sec
    Then I should see page title as "Assessment Control @ Portnov"
    Then element with xpath "//h3[contains(text(),'Milan Tiwari')]" should contain text "Milan Tiwari"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then I click on element using JavaScript with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//span[contains(text(),'Create New Quiz')]" to be present
    Then I click on element using JavaScript with xpath "//span[contains(text(),'Create New Quiz')]"
    Then I wait for element with xpath "//input[@formcontrolname='name']" to be present


  @askApplicationQuizzesName1
  Scenario Outline: Verify quiz title accept alphanumeric and special character

    Then I type "<Title Of The Quiz>" into element with xpath "//input[@formcontrolname='name']"
    Then I click on element using JavaScript with xpath "//mat-icon[@class='mat-icon material-icons']"
    Then element with xpath "//mat-error[contains(text(),'This field is required')]" should not be present
    Examples:
      | Title Of The Quiz                                              |
      | 1                                                              |
      | A                                                              |
      | 1A                                                             |
      | A1                                                             |
      | @                                                              |
      | 1A@                                                            |
      | 123 Abc                                                        |
      | Abc 123 @                                                      |
      | Apart from counting words and characters, our online editorqwe |
      | Apart from counting words and characters, our online 123#$#$!@ |

  @askApplicationQuizzesName2
  Scenario: Verify Title of the quiz text field can't be blank
    Then I type "ABC" into element with xpath "//input[@formcontrolname='name']"
    Then I wait for 2 sec
    #Then I click on element using JavaScript with xpath "//input[@formcontrolname='name']"
    Then I clear element with xpath "//input[@formcontrolname='name']"
    Then I wait for 2 sec
    #Then I click on element using JavaScript with xpath "//div[contains(text(),'Environment: INTERNSHIP')]"
    #Then I wait for 2 sec
    Then I wait for element with xpath "//mat-error[contains(text(),'This field is required')]" to be present
    Then element with xpath "//mat-error[contains(text(),'This field is required')]" should be present

  @askApplicationQuizzesName3
  Scenario: Verify Title of the quiz text fields doesn't accept more then 62 character
    Then  I type "Apart from counting words and characters, our online 123#$#$!@t" into element with xpath "//input[@formcontrolname='name']"
    Then I wait for 5 sec
    Then I click on element using JavaScript with xpath "//div[contains(text(),'Environment: INTERNSHIP')]"
    Then I wait for element with xpath "//mat-error[contains(text(),'Too long. Should be at least 5 to 32 characters')]" to be present
    Then element with xpath "//mat-error[contains(text(),'Too long.')]" should have text as "Too long. Should be at least 5 to 32 characters"











      