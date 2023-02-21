$(document).ready(function() {var formatter = new CucumberHTML.DOMFormatter($('.cucumber-report'));formatter.uri("file:src/test/resources/features/Daria_S_StudentSettingsPassword.feature");
formatter.feature({
  "name": "Test set \"Student: Settings - Password\"",
  "description": "",
  "keyword": "Feature"
});
formatter.background({
  "name": "",
  "description": "",
  "keyword": "Background"
});
formatter.before({
  "status": "passed"
});
formatter.step({
  "name": "I open url \"http://ask-internship.portnov.com/\"",
  "keyword": "Given "
});
formatter.match({
  "location": "PredefinedStepDefs.iOpenUrl(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"student3@gmail.com\" into element with xpath \"//input[@placeholder\u003d\u0027Email *\u0027]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iTypeIntoElementWithXpath(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I type \"12345ABc\" into element with xpath \"//input[@type\u003d\u0027password\u0027]\"",
  "keyword": "And "
});
formatter.match({
  "location": "PredefinedStepDefs.iTypeIntoElementWithXpath(String,String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on element with xpath \"//button[@class\u003d\u0027mat-raised-button mat-primary\u0027]\"",
  "keyword": "When "
});
formatter.match({
  "location": "PredefinedStepDefs.iClickOnElementWithXpath(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "element with xpath \"//mat-list[@class\u003d\u0027mat-list\u0027]\" should be present",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.elementWithXpathShouldBePresent(String)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I wait for 2 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "passed"
});
formatter.step({
  "name": "I click on element with xpath \"//h5[contains(text(),\u0027Settings\u0027)]\"",
  "keyword": "When "
});
formatter.match({
  "location": "PredefinedStepDefs.iClickOnElementWithXpath(String)"
});
formatter.result({
  "error_message": "org.openqa.selenium.NoSuchElementException: no such element: Unable to locate element: {\"method\":\"xpath\",\"selector\":\"//h5[contains(text(),\u0027Settings\u0027)]\"}\n  (Session info: chrome\u003d110.0.5481.100)\nFor documentation on this error, please visit: https://www.seleniumhq.org/exceptions/no_such_element.html\nBuild info: version: \u00273.141.59\u0027, revision: \u0027e82be7d358\u0027, time: \u00272018-11-14T08:17:03\u0027\nSystem info: host: \u0027MTVC02PQ1J3G8WL\u0027, ip: \u0027fd08:aca2:f8dc:0:d55:4f1:cd1a:139c%en0\u0027, os.name: \u0027Mac OS X\u0027, os.arch: \u0027x86_64\u0027, os.version: \u002710.15.7\u0027, java.version: \u002714.0.2\u0027\nDriver info: org.openqa.selenium.chrome.ChromeDriver\nCapabilities {acceptInsecureCerts: false, browserName: chrome, browserVersion: 110.0.5481.100, chrome: {chromedriverVersion: 110.0.5481.77 (65ed616c6e8e..., userDataDir: /var/folders/m9/j2vnwyrn3hz...}, goog:chromeOptions: {debuggerAddress: localhost:50165}, javascriptEnabled: true, networkConnectionEnabled: false, pageLoadStrategy: normal, platform: MAC, platformName: MAC, proxy: Proxy(), setWindowRect: true, strictFileInteractability: false, timeouts: {implicit: 0, pageLoad: 300000, script: 30000}, unhandledPromptBehavior: dismiss and notify, webauthn:extension:credBlob: true, webauthn:extension:largeBlob: true, webauthn:virtualAuthenticators: true}\nSession ID: 033f193336eb01e676e3665ebd9d0434\n*** Element info: {Using\u003dxpath, value\u003d//h5[contains(text(),\u0027Settings\u0027)]}\n\tat java.base/jdk.internal.reflect.NativeConstructorAccessorImpl.newInstance0(Native Method)\n\tat java.base/jdk.internal.reflect.NativeConstructorAccessorImpl.newInstance(NativeConstructorAccessorImpl.java:62)\n\tat java.base/jdk.internal.reflect.DelegatingConstructorAccessorImpl.newInstance(DelegatingConstructorAccessorImpl.java:45)\n\tat java.base/java.lang.reflect.Constructor.newInstanceWithCaller(Constructor.java:500)\n\tat java.base/java.lang.reflect.Constructor.newInstance(Constructor.java:481)\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.createException(W3CHttpResponseCodec.java:187)\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:122)\n\tat org.openqa.selenium.remote.http.W3CHttpResponseCodec.decode(W3CHttpResponseCodec.java:49)\n\tat org.openqa.selenium.remote.HttpCommandExecutor.execute(HttpCommandExecutor.java:158)\n\tat org.openqa.selenium.remote.service.DriverCommandExecutor.execute(DriverCommandExecutor.java:83)\n\tat org.openqa.selenium.remote.RemoteWebDriver.execute(RemoteWebDriver.java:552)\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:323)\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElementByXPath(RemoteWebDriver.java:428)\n\tat org.openqa.selenium.By$ByXPath.findElement(By.java:353)\n\tat org.openqa.selenium.remote.RemoteWebDriver.findElement(RemoteWebDriver.java:315)\n\tat definitions.PredefinedStepDefs.iClickOnElementWithXpath(PredefinedStepDefs.java:100)\n\tat ✽.I click on element with xpath \"//h5[contains(text(),\u0027Settings\u0027)]\"(file:src/test/resources/features/Daria_S_StudentSettingsPassword.feature:9)\n",
  "status": "failed"
});
formatter.step({
  "name": "element with xpath \"//span[text()\u003d\u0027Change Your Password\u0027]\" should be present",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.elementWithXpathShouldBePresent(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I click on element with xpath \"//span[text()\u003d\u0027Change Your Password\u0027]\"",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iClickOnElementWithXpath(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "element with xpath \"//mat-dialog-container[@role\u003d\u0027dialog\u0027]\" should be present",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.elementWithXpathShouldBePresent(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "element with xpath \"//span[text()\u003d\u0027Change\u0027]/..\" should be disabled",
  "keyword": "And "
});
formatter.match({
  "location": "PredefinedStepDefs.elementWithXpathShouldBeDisabled(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.scenario({
  "name": "Change student password Positive with Daria Step definitions",
  "description": "",
  "keyword": "Scenario",
  "tags": [
    {
      "name": "@regressionTest"
    },
    {
      "name": "@smokeTest"
    }
  ]
});
formatter.step({
  "name": "I click on element with xpath \"//span[text()\u003d\u0027Cancel\u0027]/..\"",
  "keyword": "When "
});
formatter.match({
  "location": "PredefinedStepDefs.iClickOnElementWithXpath(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on log out button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnLogOutButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on confirm log out button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnConfirmLogOutButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 3 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 2 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS go to \"ASK\" application",
  "keyword": "Given "
});
formatter.match({
  "location": "DariaStepdefs.dsGoToApplication(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see login page",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeLoginPage()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"student3@gmail.com\" to email field",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToEmailField(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"12345ABc\" to password field",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToPasswordField(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on sign in button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnSignInButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see home page",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeHomePage()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 2 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS go to settings",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsGoToSettings()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see options to change name or password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeOptionsToChangeNameOrPassword()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on change password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnChangePassword()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see field for typing new password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeFieldForTypingNewPassword()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type  \"12345ABc\" to field password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToFieldPassword(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 3 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"12345\" to field new password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToFieldNewPassword(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"12345\" to field confirm new password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToFieldConfirmNewPassword(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on change button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnChangeButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see home page",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeHomePage()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on log out button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnLogOutButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on confirm log out button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnConfirmLogOutButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 5 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see login page",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeLoginPage()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"student3@gmail.com\" to email field",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToEmailField(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"12345\" to password field",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToPasswordField(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on sign in button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnSignInButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see home page",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeHomePage()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 3 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS go to settings",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsGoToSettings()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see options to change name or password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeOptionsToChangeNameOrPassword()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on change password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnChangePassword()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see field for typing new password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeFieldForTypingNewPassword()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type  \"12345\" to field password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToFieldPassword(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"12345ABc\" to field new password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToFieldNewPassword(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS type \"12345ABc\" to field confirm new password",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsTypeToFieldConfirmNewPassword(String)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on change button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnChangeButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 3 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see home page",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeHomePage()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on log out button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnLogOutButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS click on confirm log out button",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsClickOnConfirmLogOutButton()"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "I wait for 5 sec",
  "keyword": "Then "
});
formatter.match({
  "location": "PredefinedStepDefs.iWaitForSec(int)"
});
formatter.result({
  "status": "skipped"
});
formatter.step({
  "name": "DS see home page",
  "keyword": "Then "
});
formatter.match({
  "location": "DariaStepdefs.dsSeeHomePage()"
});
formatter.result({
  "status": "skipped"
});
formatter.embedding("image/png", "embedded0.png");
formatter.after({
  "status": "passed"
});
});