package cn.nubia.videogenerator.p008c;

class C0077c extends Thread {
    final /* synthetic */ C0075a bso;

    private C0077c(C0075a c0075a) {
        this.bso = c0075a;
    }

    public void run() {
        if (this.bso.brX != null) {
            this.bso.brX.start();
        }
        if (this.bso.bsm != null) {
            this.bso.bsm.bNW();
        }
    }
}
