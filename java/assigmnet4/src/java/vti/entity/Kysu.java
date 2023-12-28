package vti.entity;

public class Kysu extends Canbo {
    private String nganhDaoTao ;

    // Construcor
    public Kysu(String hoTen, int tuoi, String gioiTinh, String diaChi, String nganhDaoTao){
        super(hoTen, tuoi, gioiTinh, diaChi);
        this.nganhDaoTao = nganhDaoTao;
    }
}
