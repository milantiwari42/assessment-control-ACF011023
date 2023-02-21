#https://jira.portnov.com/browse/ACF-332
#Assesment Control Testing
#Multiple Choice Question Max Points
#Author Mohamed Abdelhalim

  Feature: Verifying That multiple choice questions Matching REQ

    Background:
      Given I open url "http://ask-internship.portnov.com/#/login"
      Then I should see page title contains "Assessment Control @ Portnov"
      Then I type "tbarder@friendsack.com" into element with xpath "//input[@id='mat-input-4']"
      And I type "12345" into element with xpath "//input[@id='mat-input-5']"
      And I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
      And I wait for 2 sec
      Then element with xpath "//div[@class='info']" should contain text "Moe Abd"

      Scenario:
        Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
        And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
        Then element with xpath "//input[@id='mat-input-22']" should be present
        Then I type "MoeQ" into element with xpath "//input[@id='mat-input-22']"
        And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
        And I click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
        Then element with xpath "//div[@id='cdk-accordion-child-1025']" should be present
        Then I type "Q1" into element with xpath "//textarea[@id='mat-input-31']"
        And  I type "HRA" into element with xpath "//label[contains(text(),'Option 1')]"
        And I type "WRA2" into element with xpath "//label[contains(text(),'Option 2')]"
        When I n
        