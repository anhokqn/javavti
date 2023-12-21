import java.util.Date;

public class Java_01 {

    public static void main(String[] args) {
        System.out.println("hello class");

        Account account = new Account();
        account.userName = "test1";
        account.fullName = "Axx Bxx Cxx";
        account.gender = Gender.MALE ;

        Department department = new Department();
        account.department = department ;
        // account.department = new department ();

        Group group1 = new Group();
        Group group2 = new Group();
        Group[] groups = {group1, group2};
        account.groups = groups;

        System.out.println("User name :" + account.userName);
        System.out.println("Full name :" +  account.fullName);
        System.out.println("Gender :" + account.gender);

        Student student =  new Student();
        student.isGraduated = true ;

        System.out.println("Graduated student :" + student.isGraduated);

        account.createdDate = new Date();
        System.out.println("created date :" + account.createdDate);
    }
}
