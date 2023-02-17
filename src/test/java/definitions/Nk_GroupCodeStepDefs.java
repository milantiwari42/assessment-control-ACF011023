package definitions;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.openqa.selenium.By;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class Nk_GroupCodeStepDefs {
    @Given("NK navigate to {string}")
    public void nkNavigateTo(String sURL) {
        getDriver().get("http://ask-internship.portnov.com/#/registration");
    }

    @When("NK click on Register Me button")
    public void nkClickOnRegisterMeButton() {
        getDriver().findElement(By.xpath(Nk_XPathLibrary.sRegisterMeButtonLocation)).click();
    }

    @Then("NK should see error message {string} in the {string}")
    public void nkShouldSeeErrorMessageInThe(String sTextErrorMessage, String sErrorMessageLoc) {
        String sPresentMessage = getDriver().findElement(By.xpath(Nk_XPathLibrary.sErrorMessageLocation)).getText();
        assertThat(sPresentMessage.equals(sTextErrorMessage)).isTrue();


    }

    @When("NK type {string} as {string}")
    public void nkTypeAs(String sText, String sGrCodeLocation) {
        getDriver().findElement(By.xpath(Nk_XPathLibrary.sGroupCodeLocation)).sendKeys(sText);
    }

    @Then("NK should have in the {string} attribute {string} as {string}")
    public void nkShouldHaveInTheAttributeAs(String sGrCodeLocation, String sAttribute, String sAttributeValue) {
        assertThat(getDriver().findElement(By.xpath(Nk_XPathLibrary.sGroupCodeLocation)).getAttribute("aria-invalid")).isEqualTo("false");
    }


    @Then("NK should have in the Group_Code attribute aria-invalid as false")
    public void nkShouldHaveInTheGroup_CodeAttributeAriaInvalidAsFalse() {
        assertThat(getDriver().findElement(By.xpath(Nk_XPathLibrary.sGroupCodeLocation)).getAttribute("aria-invalid")).isEqualTo("false");
    }
}
