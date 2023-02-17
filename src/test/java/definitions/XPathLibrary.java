package definitions;

public class XPathLibrary {
    public static String sQuizzesLocation = "//h5[contains(text(),'Quizzes')]";
    public static String sCreateNewQuizLocation ="//span[contains(text(),'Create New Quiz')]";
    public static String sQuizNameLocation ="//input[@formcontrolname='name']";
    public static String sAddQuestionLinkLocation ="//mat-icon[contains(text(),'add_circle')]";


    public static String sRegFirstNameLocation ="//input[@formcontrolname='firstName']";
    public static String sRegLastNameLocation ="//input[@formcontrolname='lastName']";
    public static String sRegEmailLocation ="//input[@formcontrolname='email']";
    public static String sRegGroupLocation ="//input[@formcontrolname='group']";
    public static String sRegPasswordLocation ="//input[@formcontrolname='password']";
    public static String sRegConfirmPasswordLocation ="//input[@formcontrolname='confirmPassword']";
    public static String sRegRegisterMeButtonLocation ="//button[@type='submit']";


}
