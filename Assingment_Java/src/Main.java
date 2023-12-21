import java.util.Date;

public class Main {
    public static void main(String[] args) {
        Department department = new Department();
        department.id = 1;
        department.DepartmentName = "An";
        System.out.println("/nDepartmentName: " + department.DepartmentName);
        // =====================================================================================
        Position position =  new Position();
        position.id = 1;
        position.PositionName = "Dev";
        System.out.println("/nPositionName: " + position.PositionName);
        System.out.println(" ");
        // =====================================================================================
        Account account = new Account();
        account.id = 1;
        account.userName = "An";
        account.fullName = "Pham Gia An";
        account.email = "phamgiaan545@gmail.com";
//        account.DepartmentID = 1;
//        account.PositionID = 1;
        account.createdDate = new Date("19/12/2023");
        account.DepartmentID = department.id;
        // long              = long ==> cùng kiểu dữ liệu
        account.PositionID = position.id; // ví dụ String = String, Department = Department
        System.out.println("/nDepartmentName: " + account.userName);
        System.out.println("PositionName: " + account.fullName);
        System.out.println("PositionName: " + account.email);
        System.out.println("PositionName: " + account.DepartmentID);
        System.out.println("PositionName: " + account.PositionID);
        System.out.println("CreatedDate: " + account.createdDate);
        // =====================================================================================
        Group group = new Group();
        group.id = 1;
        group.CreatorID = 1;
        group.GroupName = "Nhom1";
        System.out.println("/nGroupName: " + group.GroupName);
//        group.createdDate = new Date("19/12/2024");
//        System.out.println("DateCreated: " + group.createdDate);
        System.out.println(java.time.LocalDate.now());      // ngày giờ hiện tại trong java
        // =====================================================================================
        GroupAccount groupAccount = new GroupAccount();
        groupAccount.GroupID = group.id;
        groupAccount.AccountID = account.id;
        System.out.println(" ");
        System.out.println("GroupID: " + groupAccount.GroupID);
        System.out.println("AccountID: " + groupAccount.AccountID);
        System.out.println(java.time.LocalDate.now());
        // =====================================================================================
        typeQ typeQ = new typeQ();
        typeQ.id = 1;
        typeQ.typeQ = TypeQuestion.Multiple_Choice;
        System.out.println(" ");
        System.out.println("TypeID: " + typeQ.id);
        System.out.println("TypeQuestion: " + typeQ.typeQ);
        // =====================================================================================
        CategoryQuestion category = new CategoryQuestion();
        category.id = 1;
        category.CategoryQuestion = cQuestion.Java;
        System.out.println(" ");
        System.out.println("CategoryID: " + category.id);
        System.out.println("CategoryQuestion: " + category.CategoryQuestion);
        // =====================================================================================
        Question question = new Question();
        question.id = 1;
        question.CategoryID = category.id;
        question.TypeID = typeQ.id;
        question.CreatorID = group.CreatorID;
        System.out.println(" ");
        System.out.println("CategoryID: " + question.CategoryID);
        System.out.println("TypeID: " + question.TypeID);
        System.out.println("CreatorID: " + question.CreatorID);
        System.out.println("Content: " + question.Content);
        // =====================================================================================
        Answer answer = new Answer();
        answer.id = 1;
        answer.QuestionID = question.id;
        System.out.println("");
        System.out.println("AnswerID: " + answer.id);
        System.out.println("Content: " + answer.content);
        System.out.println("QuestionID: " + answer.QuestionID);
        System.out.println("Is Correct: " + answer.isCorrect);
        // =====================================================================================
        Exam exam = new Exam();
        exam.id = 1;
        exam.CategoryID = category.id;
        exam.CreatorID = question.CreatorID;
        System.out.println("");
        System.out.println("ExamID: " + exam.id);
        System.out.println("code: " + exam.code);
        System.out.println("Title: " + exam.title);
        System.out.println("CategoryID: " + exam.CategoryID);
        System.out.println("Duration: " + exam.Duration);
        System.out.println("CreatorID: " + exam.CreatorID);
        System.out.println(java.time.LocalDate.now());
        // =====================================================================================
        ExamQuestion eQuestion = new ExamQuestion();
        eQuestion.examID = exam.id;
        eQuestion.QuestionID = question.id;
        System.out.println("");
        System.out.println("ExamID: " + eQuestion.examID);
        System.out.println("QuestionID: " + eQuestion.QuestionID);
    }
}



