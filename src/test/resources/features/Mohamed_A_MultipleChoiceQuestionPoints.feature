#https://jira.portnov.com/browse/ACF-332
#Assesment Control Testing
#Multiple Choice Question Max Points
#Author Mohamed Abdelhalim

  Feature: Verifying That multiple choice question Points Matching REQ

   Background:
     Given I open url "http://ask-internship.portnov.com/#/login"
     Then I should see page title contains "Assessment Control @ Portnov"
     Then I type "tbarder@friendsack.com" into element with xpath "//input[@placeholder='Email *']"
     And I type "12345" into element with xpath "//input[@placeholder='Password *']"
     And I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
     And I wait for 2 sec
     Then element with xpath "//div[@class='info']" should contain text "Moe Abd"

      Scenario:
        Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
        Then I wait for element with xpath "//span[contains(text(),'Create New Quiz')]" to be present
        And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
        And I wait for element with xpath "//input[@placeholder='Title Of The Quiz *']" to be present
        Then I type "MoeQ" into element with xpath "//input[@placeholder='Title Of The Quiz *']"
        And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
        And I click on element with xpath "//div[contains(text(),'Multiple-Choice')]"
        And I wait for element with xpath "//textarea[@placeholder='Question *']" to be present
       Then I type "Question 1" into element with xpath "//textarea[@placeholder='Question *']"
       And  I type "1" into element with xpath "//textarea[@placeholder='Option 1*']"
        And I type "yes" into element with xpath "//textarea[@placeholder='Option 2*']"
        Then I click on element with xpath "//span[contains(text(),'Add Option')]"
        Then I wait for element with xpath "//textarea[@placeholder='Option 3*']" to be present
        And I type "3" into element with xpath "//textarea[@placeholder='Option 3*']"
        Then I click on element with xpath "//span[contains(text(),'Add Option')]"
        Then I wait for element with xpath "//textarea[@placeholder='Option 4*']" to be present
        And I type "no" into element with xpath "//textarea[@placeholder='Option 3*']"
        #When I n
        Then I click on element with xpath "//input[@id='mat-checkbox-2-input']"
        Then I click on element with xpath "//input[@id='mat-checkbox-3-input']"
        Then I click on element with xpath "//input[@id='mat-checkbox-5-input']"
        #THen
        When I click on element with xpath "//span[contains(text(),'Save')]"
        And I scroll to the element with xpath "//mat-panel-title[contains(text(),'MoeQ')]" with offset 4
        Then element with xpath "//mat-panel-title[contains(text(),'MoeQ')]" should not be present
        Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
        And I wait for element with xpath "//span[contains(text(),'Create New Assignment')]" to be present
        Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
        Then I click on element with xpath "//span[contains(text(),'MoeQ')]"
        Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"
        
        





  Scenario: