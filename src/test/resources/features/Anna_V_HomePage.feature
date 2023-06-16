#Author: Anna Verkhovskaya
#Exercise for ASK application
  
  @askapplication 
  Feature: ASK application
    
   #Login to ASK as Teacher
   # Background:
    # Given I open url "http://ask-internship.portnov.com/#/login"
   #  Then I type "annapcsteacher2@gmail.com" into element with xpath "//input[@placeholder='Email *']"
   #   Then I type "12345" into element with xpath "//input[@formcontrolname='password']"
    #  Then I click on element with xpath "//button[@type = 'submit']"
   #   Then I wait for 1 sec
    #  Then I should see page title as "Assessment Control @ Portnov"
    #  Then element with xpath "//footer[contains(text(),'Portnov')]" should contain text "Assessment Control @ Portnov"
    #  Then element with xpath "//footer[contains(text(),'Portnov')]" should be displayed

    @askapplication1  @regressionTest
    Scenario: Create a quiz
      When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      Then I wait for 1 sec
      Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      Then I wait for 1 sec
      Then I type "0 Anna Quiz title" into element with xpath "//input[@formcontrolname='name']"
      Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed
      Then I click on element with xpath "//div[contains(text(),'Single-Choice')]"
      Then I type "Question 1 Single choice" into element with xpath "//textarea[@formcontrolname ='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder ='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder ='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      Then I wait for 3 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]" should contain text "0 Anna Quiz title"

      # delete the quiz
      When I click on element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]"
      Then I click on element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]/../../..//span[contains(text(),'Delete')]"
      Then I click on element with xpath "//div[@mat-dialog-actions]//span[contains(text(),'Delete')]"
      Then I wait for 2 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]" should not be present

    @askapplication2
    Scenario: Create a quiz with SeleniumWebDriver methods
     #When I click on element with xpath "//h5[contains(text(),'Quizzes')]"
      When AV go to "Quizzes" location
      Then I wait for 1 sec
      Then AV go to 'Create New Quiz' location
      #Then I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
      Then I wait for 1 sec
      Then AV type "0 Anna Quiz title" as "Quiz name"
      #Then I type "0 Anna Quiz title" into element with xpath "//input[@formcontrolname='name']"
      Then AV add question
     #Then I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
      Then element with xpath "//mat-panel-title[contains(text(),'Q1: new empty question')]" should be displayed
      Then I click on element with xpath "//div[contains(text(),'Single-Choice')]"
      Then I type "Question 1 Single choice" into element with xpath "//textarea[@formcontrolname ='question']"
      Then I type "Answer 1" into element with xpath "//textarea[@placeholder ='Option 1*']"
      Then I type "Answer 2" into element with xpath "//textarea[@placeholder ='Option 2*']"
      Then I click on element with xpath "//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
      Then I click on element with xpath "//span[contains(text(),'Save')]"
      Then I wait for 3 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]" should contain text "0 Anna Quiz title"

      # delete the quiz
      When I click on element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]"
      Then I click on element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]/../../..//span[contains(text(),'Delete')]"
      Then I click on element with xpath "//div[@mat-dialog-actions]//span[contains(text(),'Delete')]"
      Then I wait for 5 sec
      Then element with xpath "//mat-panel-title[contains(text(),'0 Anna Quiz title')]" should not be present

    @askapplication3 @regressionTest
    Scenario: User registration
      Given AV navigate to "ASK registration"
      Then AV input "John" as "FirstName"
      Then AV input "Smith" as "LastName"
      Then AV input "abc@abc.cde" as "Email"
      Then AV input "123" as "GroupCode"
      Then AV input "12345ABc" as "Password"
      Then AV input "12345ABc" as "ConfirmPassword"
      Then AV click Register Me button
      Then I wait for 5 sec

    @askapplication4
    Scenario Outline: User registration Data Driven
      Given AV navigate to "ASK registration"
      Then AV input <sFirstName> as "FirstName"
      Then AV input <sLastName> as "LastName"
      Then AV input <sEmail> as "Email"
      Then AV input <sGroupCode> as "GroupCode"
      Then AV input <sPassword> as "Password"
      Then AV input <sConfirmPassword> as "ConfirmPassword"
         Then AV click Register Me button
      Then I wait for 5 sec
      Examples:
        | sFirstName  | sLastName  | sEmail | sGroupCode |  sPassword     | sConfirmPassword |
        | "John" |  "Smith" | "abc@abc.cde" | "123"  |  "12345ABc" | "12345ABc"|
        | "" |  "Smith" | "abc@abc.cde" | "123"  |  "12345ABc" | "12345ABc"|
        | "John" |  "" | "abc@abc.cde" | "123"  |  "12345ABc" | "12345ABc"|
        | "John" |  "Smith" | "" | "123"  |  "12345ABc" | "12345ABc"|
        | "John" |  "Smith" | "abc@abc.cde" | ""  |  "12345ABc" | "12345ABc"|
        | "John" |  "Smith" | "abc@abc.cde" | "123"  |  "12345ABc" | "Invalid"|