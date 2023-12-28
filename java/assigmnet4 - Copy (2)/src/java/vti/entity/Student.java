<<<<<<< HEAD
package java.vti.entity;

import java.util.Scanner;

public class Student {
    private String name;
    private String hometown;
    private double diemHoc;

    public Student(String name, String hometown) {
        this.name = name;
        this.hometown = hometown;
        this.diemHoc = 0;
    }

    public void setDiemHoc(double diemHoc) {
        this.diemHoc = diemHoc;
    }

    public void congDiem(double diemCong) {
        this.diemHoc += diemCong;
    }

    public void thongTin() {
        System.out.println("Tên sinh viên: " + this.name);
        System.out.println("Địa chỉ: " + this.hometown);
        System.out.println("Điểm học: " + this.diemHoc + " - " + getKetQua());
    }

    private String getKetQua() {
        if (this.diemHoc < 4.0) return "Yếu";
        if (this.diemHoc < 6.0) return "Trung bình";
        if (this.diemHoc < 8.0) return "Khá";
        return "Giỏi";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Nhập họ tên của bạn: ");
        String hoTen = scanner.nextLine();
        System.out.println("Nhập địa chỉ của bạn: ");
        String diaChi = scanner.nextLine();

        Student student = new Student(hoTen, diaChi);

        System.out.println("Họ tên của bạn là: " + hoTen);
        System.out.println("Địa chỉ của bạn là: " + diaChi);

        // Set điểm và in thông tin
        student.setDiemHoc(7.5);
        student.thongTin();

        // Cộng thêm điểm
        System.out.println("Điểm sau khi cộng: ");
        student.congDiem(1.5);
        student.thongTin();
    }
}
=======
package java.vti.entity;

import java.util.Scanner;

public class Student {
    private String name;
    private String hometown;
    private double diemHoc;

    public Student(String name, String hometown) {
        this.name = name;
        this.hometown = hometown;
        this.diemHoc = 0;
    }

    public void setDiemHoc(double diemHoc) {
        this.diemHoc = diemHoc;
    }

    public void congDiem(double diemCong) {
        this.diemHoc += diemCong;
    }

    public void thongTin() {
        System.out.println("Tên sinh viên: " + this.name);
        System.out.println("Địa chỉ: " + this.hometown);
        System.out.println("Điểm học: " + this.diemHoc + " - " + getKetQua());
    }

    private String getKetQua() {
        if (this.diemHoc < 4.0) return "Yếu";
        if (this.diemHoc < 6.0) return "Trung bình";
        if (this.diemHoc < 8.0) return "Khá";
        return "Giỏi";
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Nhập họ tên của bạn: ");
        String hoTen = scanner.nextLine();
        System.out.println("Nhập địa chỉ của bạn: ");
        String diaChi = scanner.nextLine();

        Student student = new Student(hoTen, diaChi);

        System.out.println("Họ tên của bạn là: " + hoTen);
        System.out.println("Địa chỉ của bạn là: " + diaChi);

        // Set điểm và in thông tin
        student.setDiemHoc(7.5);
        student.thongTin();

        // Cộng thêm điểm
        System.out.println("Điểm sau khi cộng: ");
        student.congDiem(1.5);
        student.thongTin();
    }
}
>>>>>>> 64987be44b619e8b42e1eab6b987a14c915c5cdc
