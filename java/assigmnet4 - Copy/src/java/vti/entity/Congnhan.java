package vti.entity;

public class Congnhan extends  Canbo {
    private int bac ;

    // Constructor
    public Congnhan(String hoTen, int tuoi, String gioiTinh, String diaChi, int bac) {
        super(hoTen, tuoi, gioiTinh, diaChi);
        this.bac = bac ;
    }

}
