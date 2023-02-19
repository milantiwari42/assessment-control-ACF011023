#Author Daria Sandrovskaia
Feature: Test set - Quiz Updated at

  Background:
    #Login to ASK as Teacher
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then DS type "master_teacher@aol.com" as "Email"
    Then DS type "12345" as "Password"
    Then DS go to "Sign In"
    Then I wait for 3 sec
    Then DS see home page
    Then I wait for 3 sec
    #Create quiz
    Then DS go to "Quizzes"
    Then I wait for 3 sec
    Then DS go to "Create New Quiz"
    Then I wait for 3 sec
    Then DS type "Updated Quiz" as "Title"
    Then DS go to "Add Question"
    Then DS go to "Textual Question"
    Then DS type "How was your day?" as "Text Textual Question"
    Then DS go to "Save Quiz"
    Then I wait for 3 sec
    Then DS see created quiz
    Then I wait for 5 sec

  @ask1
  Scenario: Update title in the quiz with Textual question
    #ACF-814
    Then DS go to "Updated Quiz"
    Then I wait for 5 sec
    Then DS go to "Edit Quiz"
    Then I wait for 5 sec
    Then DS type " 1" as "Title"
    Then DS go to "Save Quiz"
    Then I wait for 5 sec
    Then DS see updated quiz
  #delete quiz
    Then DS go to "Updated Quiz 1"
    Then DS go to "Delete Updated Quiz 1"
    Then DS go to "Confirm Delete Updated Quiz 1"
    Then I wait for 5 sec
    Then element with xpath "//mat-panel-title[contains(text(),'Updated Quiz')]" should not be present

  @ask2
  Scenario: Update ''Show-stopper" mark in the quiz with Textual Question
    #ACF-818
    Then DS go to "Updated Quiz"
    Then I wait for 5 sec
    Then DS go to "Edit Quiz"
    Then I wait for 5 sec
    Then DS go to "How was your day?"
    Then I wait for 5 sec
    Then DS go to "Show-Stopper"
    Then I wait for 3 sec
    Then DS go to "Save Quiz"
    Then I wait for 3 sec
    Then DS go to "Updated Quiz"
    Then I wait for 3 sec
    Then DS go to "Preview"
    Then I wait for 3 sec
    Then element with xpath "//p[contains(text(),'Show-Stopper Question')]" should be present
    Then DS go to "Close Preview"
  #delete quiz
    Then DS go to "Delete Updated Quiz"
    Then DS go to "Confirm Delete Updated Quiz"
    Then I wait for 5 sec
    Then element with xpath "//mat-panel-title[contains(text(),'Updated Quiz')]" should not be present

  @ask2
  Scenario: Update question type in the quiz with Textual Question
    #ACF-819
    Then DS go to "Updated Quiz"
    Then I wait for 5 sec
    Then DS go to "Edit Quiz"
    Then I wait for 5 sec
    Then DS go to "How was your day?"
    Then I wait for 3 sec
  Then DS go to "Single-Choice Question"
    Then I wait for 3 sec
    Then element with xpath "//textarea[@placeholder ='Option 1*']" should be displayed
    Then DS type "Good" as "Option 1"
    Then DS type "Bad" as "Option 2"
    Then DS go to "Right Answer"
    Then DS go to "Save Quiz"
    Then I wait for 5 sec
    Then DS go to "Updated Quiz"
    Then I wait for 3 sec
    Then DS go to "Preview"
    Then I wait for 3 sec
  Then element with xpath "//div[contains(text(),'Bad')]" should be displayed
    Then DS go to "Close Preview"
  #delete quiz
    Then DS go to "Delete Updated Quiz"
    Then DS go to "Confirm Delete Updated Quiz"
    Then I wait for 5 sec
    Then element with xpath "//mat-panel-title[contains(text(),'Updated Quiz')]" should not be present


   #@ask1
  #Scenario: Update title in the quiz with Textual question
   # ACF-814
  #When I click on element with xpath "//mat-panel-title[contains(text(),'Updated Quiz')]"
   #Then I wait for 5 sec
    #Then element with xpath "//mat-panel-title[contains(text(),'Updated Quiz')]/../../..//span[contains(text(),'Edit')]" should be displayed
    #When I click on element with xpath "//mat-panel-title[contains(text(),'Updated Quiz')]/../../..//span[contains(text(),'Edit')]"
    #Then I wait for 3 sec
    #Then element with xpath "//input[@formcontrolname='name']" should be displayed
    #When I type " 1" into element with xpath "//input[@formcontrolname='name']"
    #And I click on element with xpath "//span[contains(text(),'Save')]"
    #Then I wait for 2 sec
    #Then element with xpath "//mat-panel-title[contains(text(),'Updated Quiz 1')]" should contain text "Updated Quiz 1"
    # delete the quiz
    #When I click on element with xpath "//mat-panel-title[contains(text(),'Updated Quiz 1')]"
    #Then I wait for element with xpath "//mat-panel-title[contains(text(),'Updated Quiz 1')]/../../..//span[contains(text(),'Delete')]/.." to be present
    #Then I click on element with xpath "//mat-panel-title[contains(text(),'Updated Quiz 1')]/../../..//span[contains(text(),'Delete')]/.."
    #Then I wait for 2 sec
    #Then I click on element with xpath "//div[@class='mat-dialog-actions']/button[2]"
    #Then I wait for 2 sec
    #Then element with xpath "//mat-panel-title[contains(text(),'Updated Quiz 1')]" should not be present

    #Background
    #Given I open url "http://ask-internship.portnov.com/#/login"
    #Then I type "master_teacher@aol.com" into element with xpath "//input[@placeholder='Email *']"
    #Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    #Then I click on element with xpath "//button[@type = 'submit']"
    #Then I wait for 1 sec
    #Then I should see page title as "Assessment Control @ Portnov"
    #Then element with xpath "//footer[contains(text(),'Portnov')]" should contain text "Assessment Control @ Portnov"
    #Then element with xpath "//footer[contains(text(),'Portnov')]" should be displayed
    #Create quiz
    #When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    #Then I wait for 1 sec
    #Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    #Then I wait for 1 sec
    #Then I type "Updated Quiz" into element with xpath "//input[@formcontrolname='name']"
    #Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    #Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed
    #Then I click on element with xpath "//div[contains(text(),'Textual')]"
    #Then I type "How was your day?" into element with xpath "//textarea[@formcontrolname ='question']"
    #Then I click on element with xpath "//span[contains(text(),'Save')]"
    #Then I wait for 3 sec
    #Then element with xpath "//mat-panel-title[contains(text(),'Updated Quiz')]" should contain text "Updated Quiz"