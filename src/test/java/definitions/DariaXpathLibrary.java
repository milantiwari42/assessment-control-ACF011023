package definitions;

public class DariaXpathLibrary {
    public static String sEmailLogInLocation ="//input[@placeholder='Email *']";
    public static String sPasswordLogInLocation ="//input[@formcontrolname='password']";
    public static String sSignInLocation ="//button[@type = 'submit']";
    public static String sSettingsLocation ="//h5[contains(text(),'Settings')]";
    public static String sCreateNewQuizLocation ="//span[contains(text(),'Create New Quiz')]";
    public static String sQuizzesLocation ="//h5[contains(text(),'Quizzes')]";
    public static String sQuizTitleLocation ="//input[@formcontrolname='name']";
    public static String sAddQuestionLocation ="//mat-icon[contains(text(),'add_circle')]";
    public static String sTextualQuestionLocation ="//div[contains(text(),'Textual')]";
    public static String sTextTextualQuestion ="//textarea[@formcontrolname ='question']";
    public static String sSaveQuizLocation ="//span[contains(text(),'Save')]";
    public static String sUpdatedQuizLocation ="//mat-panel-title[contains(text(),'Updated Quiz')]";
    /*public static String sHomePageLocation ="//mat-list[@class='mat-list']";*/
    public static String sEditQuizLocation ="//mat-panel-title[contains(text(),'Updated Quiz')]/../../..//span[contains(text(),'Edit')]";
    public static String sUpdatedQuiz1Location ="//mat-panel-title[contains(text(),'Updated Quiz 1')]";
    public static String sDeleteQuiz1Location ="//mat-panel-title[contains(text(),'Updated Quiz 1')]/../../..//span[contains(text(),'Delete')]/..";
    public static String sConfirmDeleteUpdatedQuiz1Location ="//div[@class='mat-dialog-actions']/button[2]";
    public static String sConfirmDeleteUpdatedQuizLocation ="//div[@class='mat-dialog-actions']/button[2]";
    public static String sShowStopperLocation ="/html[1]/body[1]/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/main[1]/mat-accordion[1]/mat-expansion-panel[1]/div[1]/div[1]/ac-question-body-form[1]/div[1]/div[2]/div[1]/div[1]/mat-checkbox[1]/label[1]/div[1]";
    public static String sHowWasYourDayQuestionLocation ="//mat-accordion[@formarrayname='questions']/mat-expansion-panel/mat-expansion-panel-header[1]";
    public static String sPreviewLocation ="//mat-panel-title[contains(text(),'Updated Quiz')]/../../..//span[contains(text(),'Preview')]/..";
    public static String sDeleteUpdatedQuizLocation ="//mat-panel-title[contains(text(),'Updated Quiz')]/../../..//span[contains(text(),'Delete')]/..";
    public static String sClosePreviewLocation ="//ac-quiz-preview[@class='ng-star-inserted']/div[2]/button[1]";
    public static String sSingleChoiceQuestionLocation ="//mat-radio-group[1]/mat-radio-button[2]";
    public static String sSingleChoiceOption1Location ="//textarea[@placeholder ='Option 1*']";
    public static String sSingleChoiceOption2Location ="//textarea[@placeholder ='Option 2*']";
    public static String sRightAnswerSingleChoiceLocation ="//mat-radio-button[@class='mat-radio-button mat-accent'][1]";
}
