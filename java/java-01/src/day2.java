public class day2 {

    public static void main (String[] args) {
        AccountDao accountDao = new AccountDao();
        Account account = accountDao.getAccount( 122);
if (account == null ) {
    System.out.println("Nguoi nay khong co trong database");
} else {
    System.out.println(account.fullName);
}
    }
}
