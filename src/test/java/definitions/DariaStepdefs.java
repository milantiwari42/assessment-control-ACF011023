package definitions;


import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.interactions.Actions;

import static support.TestContext.getDriver;
import static org.assertj.core.api.Assertions.*;

public class DariaStepdefs {
    @Given("DS go to {string} application")
    public void dsGoToApplication(String sURL) {
        getDriver().get("http://ask-internship.portnov.com/#/login");
    }


    @Then("DS type {string} to email field")
    public void dsTypeToEmailField(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(sString);
    }

    @Then("DS type {string} to password field")
    public void dsTypeToPasswordField(String sString) {
        getDriver().findElement(By.xpath("//input[@type='password']")).sendKeys(sString);
    }

    @Then("DS click on sign in button")
    public void dsClickOnSignInButton() {
        getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).click();
    }

    @Then("DS see home page")
    public void dsSeeHomePage() {
        getDriver().findElement(By.xpath("//mat-list[@class='mat-list']")).isDisplayed();
    }

    @Then("DS go to settings")
    public void dsGoToSettings() {
        getDriver().findElement(By.xpath("//h5[contains(text(),'Settings')]")).click();
    }

    @Then("DS see options to change name or password")
    public void dsSeeOptionsToChangeNameOrPassword() {
        assertThat(getDriver().findElement(By.xpath("//span[text()='Change Your Password']")).isDisplayed()).isTrue();
    }

    @Then("DS click on change password")
    public void dsClickOnChangePassword() {
        getDriver().findElement(By.xpath("//span[text()='Change Your Password']")).click();
    }

    @Then("DS see field for typing new password")
    public void dsSeeFieldForTypingNewPassword() {
        assertThat(getDriver().findElement(By.xpath("//mat-dialog-container[@role='dialog']")).isDisplayed()).isTrue();
    }


    @Then("DS type  {string} to field password")
    public void dsTypeToFieldPassword(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='Password']")).sendKeys(sString);
    }

    @Then("DS type {string} to field new password")
    public void dsTypeToFieldNewPassword(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='New Password']")).sendKeys(sString);
    }

    @Then("DS type {string} to field confirm new password")
    public void dsTypeToFieldConfirmNewPassword(String sString) {
        getDriver().findElement(By.xpath("//input[@placeholder='Confirm New Password']")).sendKeys(sString);
    }

    @Then("DS click on change button")
    public void dsClickOnChangeButton() {getDriver().findElement(By.xpath("//span[text()='Change']/..")).click();
    }

    @Then("DS click on log out button")
    public void dsClickOnLogOutButton() {
        getDriver().findElement(By.xpath("//mat-list-item[@class='mat-list-item']")).click();
    }

    @Then("DS click on confirm log out button")
    public void dsClickOnConfirmLogOutButton() {
        getDriver().findElement(By.xpath("//span[text()='Log Out']")).click();
    }

    @Then("DS see login page")
    public void dsSeeLoginPage() {
        assertThat(
                getDriver().findElement(By.xpath("//button[@class='mat-raised-button mat-primary']")).isDisplayed()
        ).isTrue();
    }

    @Then("I type {string} into element with xpath {string} and it's masked")
    public void iTypeIntoElementWithXpathAndItSMasked(String text, String xpath) {
        getDriver().findElement(By.xpath(xpath)).sendKeys(text);
        assertThat(
                getDriver().findElement(By.xpath(xpath)).getAttribute("type")
        ).isEqualTo("password");
    }


    @Then("DS type {string} as {string}")
    public void dsTypeAs(String sText, String sLocation) {
        switch(sLocation) {
            case "Email": getDriver().findElement(By.xpath(DariaXpathLibrary.sEmailLogInLocation)).sendKeys(sText);
            break;
            case "Password": getDriver().findElement(By.xpath(DariaXpathLibrary.sPasswordLogInLocation)).sendKeys(sText);
            break;
            case "Title": getDriver().findElement(By.xpath(DariaXpathLibrary.sQuizTitleLocation)).sendKeys(sText);
                break;
            case "Text Textual Question": getDriver().findElement(By.xpath(DariaXpathLibrary.sTextTextualQuestion)).sendKeys(sText);
            break;
            case "Option 1": getDriver().findElement(By.xpath(DariaXpathLibrary.sSingleChoiceOption1Location)).sendKeys(sText);
                break;
            case "Option 2": getDriver().findElement(By.xpath(DariaXpathLibrary.sSingleChoiceOption2Location)).sendKeys(sText);
                break;

        }
    }

    @Then("DS go to {string}")
    public void dsGoTo(String sString) {
        switch (sString) {
            case "Sign In":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sSignInLocation)).click();
                break;
            case "Settings":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sSettingsLocation)).click();
                break;
            case "Quizzes":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sQuizzesLocation)).click();
                break;
            case "Create New Quiz":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sCreateNewQuizLocation)).click();
                break;
            case "Add Question":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sAddQuestionLocation)).click();
                break;
            case "Textual Question":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sTextualQuestionLocation)).click();
                break;
            case "Single-Choice Question":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sSingleChoiceQuestionLocation)).click();
                break;
            case "Save Quiz":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sSaveQuizLocation)).click();
                break;
            case "Edit Quiz":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sEditQuizLocation)).click();
                break;
            case "Updated Quiz": getDriver().findElement(By.xpath(DariaXpathLibrary.sUpdatedQuizLocation)).click();
                break;
            case "Updated Quiz 1": getDriver().findElement(By.xpath(DariaXpathLibrary.sUpdatedQuiz1Location)).click();
                break;
            case "Delete Quiz":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sDeleteQuiz1Location)).click();
                break;
            case "Confirm Delete Quiz":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sConfirmDeleteUpdatedQuizLocation)).click();
                break;
            case "Show-Stopper":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sShowStopperLocation)).click();
            case "How was your day?":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sHowWasYourDayQuestionLocation)).click();
                break;
            case "Preview":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sPreviewLocation)).click();
                break;
            case "Close Preview":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sClosePreviewLocation)).click();
                break;
            case "Delete Updated Quiz":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sDeleteUpdatedQuizLocation)).click();
                break;
            case "Confirm Delete Updated Quiz":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sConfirmDeleteUpdatedQuizLocation)).click();
                break;

            case "Right Answer":
                getDriver().findElement(By.xpath(DariaXpathLibrary.sRightAnswerSingleChoiceLocation)).click();
                break;
        }
    }



    @Then("DS see created quiz")
    public void dsSeeCreatedQuiz() {
        assertThat(
                getDriver().findElement(By.xpath(DariaXpathLibrary.sUpdatedQuizLocation)).isDisplayed()
        ).isTrue();
    }

    @Then("DS see updated quiz")
    public void dsSeeUpdatedQuiz() {
        assertThat(
                getDriver().findElement(By.xpath(DariaXpathLibrary.sUpdatedQuiz1Location)).isDisplayed()
        ).isTrue();
    }



    @Then("DS don't see created quiz")
    public void dsDonTSeeCreatedQuiz() {
        assertThat(
                getDriver().findElements(By.xpath(DariaXpathLibrary.sUpdatedQuizLocation))).hasSize(0);
    }

    @Then("DS found Show-Stopper")
    public void dsFoundShowStopper() {
        new Actions(getDriver()).moveToElement(getDriver().findElement(By.xpath(DariaXpathLibrary.sShowStopperLocation))).perform();
    }

}











