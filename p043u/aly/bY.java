package p043u.aly;

public class bY {
    private int f805b = -1;
    private short[] byN;

    public bY(int i) {
        this.byN = new short[i];
    }

    public short m971a() {
        short[] sArr = this.byN;
        int i = this.f805b;
        this.f805b = i - 1;
        return sArr[i];
    }

    public void bXO(short s) {
        if (this.byN.length == this.f805b + 1) {
            m970d();
        }
        short[] sArr = this.byN;
        int i = this.f805b + 1;
        this.f805b = i;
        sArr[i] = (short) s;
    }

    private void m970d() {
        Object obj = new short[(this.byN.length * 2)];
        System.arraycopy(this.byN, 0, obj, 0, this.byN.length);
        this.byN = obj;
    }

    public void m972c() {
        this.f805b = -1;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("<ShortStack vector:[");
        for (int i = 0; i < this.byN.length; i++) {
            if (i != 0) {
                stringBuilder.append(" ");
            }
            if (i == this.f805b) {
                stringBuilder.append(">>");
            }
            stringBuilder.append(this.byN[i]);
            if (i == this.f805b) {
                stringBuilder.append("<<");
            }
        }
        stringBuilder.append("]>");
        return stringBuilder.toString();
    }
}
