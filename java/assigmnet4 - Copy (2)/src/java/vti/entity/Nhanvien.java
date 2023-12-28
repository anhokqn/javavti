package vti.entity;

public class Nhanvien extends Canbo {
    private String congViec ;

    public Nhanvien(String hoTen, int tuoi, String gioiTinh, String diaChi, String congViec) {
        super(hoTen, tuoi, gioiTinh, diaChi);
        this.congViec = congViec ;
    }
}
