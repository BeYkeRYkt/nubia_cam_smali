package cn.nubia.videogenerator.p008c;

class C0076b extends Thread {
    final /* synthetic */ C0075a bsn;

    private C0076b(C0075a c0075a) {
        this.bsn = c0075a;
    }

    public void run() {
        if (this.bsn.brY != null) {
            this.bsn.brY.start();
        }
        if (this.bsn.brZ != null) {
            this.bsn.brZ.start();
        }
        if (this.bsn.bsa != null) {
            this.bsn.bsa.start();
        }
    }
}
