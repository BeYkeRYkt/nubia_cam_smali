package cn.nubia.bigAperture;

public class C0039o {
    public int bpk;
    public int bpl;
    public int left;
    public int top;

    public C0039o(int i, int i2, int i3, int i4) {
        this.left = i;
        this.top = i2;
        this.bpk = i3;
        this.bpl = i4;
    }

    public int bLR() {
        return (this.bpk - this.left) + 1;
    }

    public int bLS() {
        return (this.bpl - this.top) + 1;
    }
}
