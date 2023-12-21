import java.time.LocalTime;

public class App {
    public static void main(String[] args) {

// table1 department
        Department department = new Department();
        department.id = 1;
        department.departmentName = "vip";
        System.out.println("Id" + department.id);

// table2 position
        Position position = new Position();
        position.PositionId = 1;
        position.PositionName = "Dev";
        System.out.println("PositionId :" + position.PositionId);

// table 3 account
        Account account = new Account();
        account.id = 1;
        account.email = "Hoanganh@gmail.com";
        account.userName = "hoanganh28";
        account.fullName = "anhnlh";
        account.departmentId = 1;
        account.positionId = 2;
        account.createDate = LocalTime.now();
        System.out.println("Email :" + account.email);

// table 4 group
        Group group = new Group();
        group.id = 1;
        group.groupName = "nhom1";
        group.creatorId = 1;
        group.createDate = LocalTime.now();
        System.out.println("GroupName :" + group.groupName);

// table 5 groupaccount
        GroupAccount groupAccount = new GroupAccount();
        groupAccount.groupId = 1;
        groupAccount.accountId = 1;
        groupAccount.joinDate = LocalTime.now();
        System.out.println("AccountId :" + groupAccount.groupId);

// table 6 typequestion
        TypeQuestion typeQuestion = new TypeQuestion();
        typeQuestion.id = 1;
        typeQuestion.typeName = Type.Essay;
        System.out.println("Id :" + typeQuestion.id);

//table 7 categoryquestion
        CategoryQuestion categoryQuestion = new CategoryQuestion();
        categoryQuestion.id = 1;
        categoryQuestion.categoryName = "java, .NET, SQL, Ruby";
        System.out.println("CategoryName" + categoryQuestion.categoryName);

// table 8 question
        Question question = new Question();
        question.id = 1;
        question.content = "tra loi cau hoi sau ";
        question.categoryId = 1;
        question.typeId = 1;
        question.creatorId = 2;
        question.creatDate = LocalTime.now();
        System.out.println("Content" + question.content);

// table 9 answer
        Answer answer = new Answer();
        answer.id = 1;
        answer.content = "cau tra loi cua toi la a";
        answer.questionId = 4;
        answer.isCorrect = true;
        System.out.println("Content" + answer.content);

// table 10 exam
        Exam exam = new Exam();
        exam.id = 1;
        exam.code = "001";
        exam.title = "bai thi so 1";
        exam.categoryId = 10;
        exam.duration = 60;
        exam.creatorId = 9;
        exam.createDate = LocalTime.now();
        System.out.println("Title :" + exam.title);

// table 11 examquestion
        ExamQuestion examQuestion = new ExamQuestion();
        examQuestion.examId = 123;
        examQuestion.questionId = 3123;
        System.out.println("QuestionId :" + examQuestion.questionId);

    }
}