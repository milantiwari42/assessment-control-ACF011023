#https://jira.portnov.com/browse/ACF-332
#Assesment Control Testing
#Changing Student Role By A Teacher
#Author Mohamed Abdelhalim

Feature: changing User's role "Teacher"

  
  Scenario: Changing Student's Account By A Teacher
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I should see page title contains "Assessment Control @ Portnov"
    Then I type "tbarder@friendsack.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345" into element with xpath "//input[@placeholder='Password *']"
    And I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "Moe Abd"
    Then I click on element with xpath "//h5[contains(text(),' Management')]"
    Then I click on element with xpath "//div[contains(text(),'Students')]"
    Then I scroll to the element with xpath "//h4[contains(text(),'Moe Student')]" with offset 5
    Then I click on element with xpath "//h4[contains(text(),'Moe Student')]"
    When I click on element with xpath "//mat-icon[contains(text(),'settings')]/../..//span[@class='mat-button-wrapper']"
    And I wait for element with xpath "//body/div[2]/div[2]/div[1]/div[1]/button[2]" to be present
    When I click on element using JavaScript with xpath "//body/div[2]/div[2]/div[1]/div[1]/button[2]"
    Then I click on element with xpath " //span[contains(text(),'Change Role')]"
    Then I wait for 2 sec
    Then element with xpath "//td[contains(text(),'TEACHER')]" should be present

  Scenario: Changing Teacher's Account By A Teacher
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I should see page title contains "Assessment Control @ Portnov"
    Then I type "tbarder@friendsack.com" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345" into element with xpath "//input[@placeholder='Password *']"
    And I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "Moe Abd"
    Then I click on element with xpath "//h5[contains(text(),' Management')]"
    Then I click on element with xpath "//div[contains(text(),'Teachers')]"
    Then I scroll to the element with xpath "//h4[contains(text(),'Moe Student')]" with offset 5
    Then I click on element with xpath "//h4[contains(text(),'Moe Student')]"
    When I click on element with xpath "//mat-icon[contains(text(),'settings')]/../..//span[@class='mat-button-wrapper']"
    And I wait for element with xpath "//body/div[2]/div[2]/div[1]/div[1]/button[2]" to be present
    When I click on element using JavaScript with xpath "//body/div[2]/div[2]/div[1]/div[1]/button[2]"
    Then I click on element with xpath " //span[contains(text(),'Change Role')]"
    Then I wait for 2 sec
    Then element with xpath "//td[contains(text(),'STUDENT')]" should be present

  Scenario: Changing Teacher's Account By A Student
    Given I open url "http://ask-internship.portnov.com/#/login"
    Then I should see page title contains "Assessment Control @ Portnov"
    Then I type "leftyj@bibooo.cf" into element with xpath "//input[@placeholder='Email *']"
    And I type "12345" into element with xpath "//input[@placeholder='Password *']"
    And I click on element using JavaScript with xpath "//span[contains(text(),'Sign In')]"
    And I wait for 2 sec
    Then element with xpath "//div[@class='info']" should contain text "Moe Student"
    Then element with xpath "//h5[contains(text(),' Management')]" should not be present


