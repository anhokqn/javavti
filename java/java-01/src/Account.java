import java.util.Date;

public class Account {

    long id;
    // nvarchar, varchar , char

    String userName; // user_name
    String fullName;

    String email; // email

    Gender gender;
    // sql department_id

    Department department;

    Group[] groups;
    // group1, group2, etc

    Date createdDate;

    int salary ;

}
