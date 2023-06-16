Feature: Test cases for the Group_code field

  Background:
    Given NK navigate to "ask-registration page"




  @test_caseACF-177
  Scenario: User can't leave the Group_Code Field empty
    When NK click on Register Me button
    Then I wait for 3 sec
    Then NK should see error message "This field is required" in the "error message field"

  @test_caseACF-178
  Scenario: User can't create a Group _code using more than max. allowed characters
    When NK type "asdfgh123" as "Group_Code"
    When NK click on Register Me button
    Then NK should see error message "Too long. Should be at least 1 to 6 characters" in the "error message field"

  @test_caseUserACF-182
  Scenario: User can't create a Group_Code using whitespaces.
    When NK type "asd 23" as "Group_Code"
    When NK click on Register Me button
    Then I wait for 3 sec
    Then NK should see error message "Whitespaces are not allowed" in the "error message field"

  @test_caseACF-174
  Scenario: User can register with allowable characters Group-Code.
    Then NK type "asd34" as "Group_Code"
    When NK click on Register Me button
    Then NK should have in the Group_Code attribute aria-invalid as false
    #Then NK should have in the "Group_Code" attribute "aria-invalid" as "false"

