import java.util.Date;

public class Account {
    long id;
    String userName;    // sql thì user_name
    String fullName;
    String email;      // sql email vẫn là email
    long DepartmentID; // đây chỉ là 1 String, k phải 1 đối tượng, vì id của department ở bảng Department là long, thì ở đây e cũng để là long cho đồng bộ
    long PositionID; // tương tự với position
    Date createdDate;
}
