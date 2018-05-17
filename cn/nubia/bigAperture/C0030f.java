package cn.nubia.bigAperture;

import com.p010a.C0090a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public abstract class C0030f {
    private boolean boj = false;

    public abstract void bKB(BigApertureTask bigApertureTask);

    public abstract void bKC(C0031g c0031g);

    public abstract void bKE(BigApertureTask bigApertureTask);

    public C0030f(boolean z) {
        this.boj = z;
    }

    protected void bKD(BigApertureTask bigApertureTask) {
        Throwable th;
        RandomAccessFile randomAccessFile = null;
        if (this.boj) {
            C0090a.bvo("AbstractBigApertureTaskBackup", "save debug metadata");
            RandomAccessFile randomAccessFile2;
            try {
                randomAccessFile2 = new RandomAccessFile(new File(bigApertureTask.bpp + "/metadata.txt"), "rw");
                try {
                    randomAccessFile2.writeChars("GalleryURI: ");
                    randomAccessFile2.writeChars(bigApertureTask.bpq.toString());
                    randomAccessFile2.writeChars("; MainDACValue: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpr));
                    randomAccessFile2.writeChars("; SubDacValue: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bps));
                    randomAccessFile2.writeChars("; DualCamerLayout: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpt));
                    randomAccessFile2.writeChars("; Color-W: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpu));
                    randomAccessFile2.writeChars("; Color-H: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpv));
                    randomAccessFile2.writeChars("; Depth-W: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpw));
                    randomAccessFile2.writeChars("; Depth-H: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpx));
                    randomAccessFile2.writeChars("; FocusX(Rotated): ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpy));
                    randomAccessFile2.writeChars("; FocusY(Rotated): ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpz));
                    randomAccessFile2.writeChars("; FocusLength: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpA));
                    randomAccessFile2.writeChars("; BokehLevel: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpB));
                    randomAccessFile2.writeChars("; Rotation: ");
                    randomAccessFile2.writeChars(String.valueOf(bigApertureTask.bpC));
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                } catch (FileNotFoundException e2) {
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                } catch (IOException e4) {
                    if (randomAccessFile2 != null) {
                        try {
                            randomAccessFile2.close();
                        } catch (IOException e32) {
                            e32.printStackTrace();
                        }
                    }
                } catch (Throwable th2) {
                    Throwable th3 = th2;
                    randomAccessFile = randomAccessFile2;
                    th = th3;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (FileNotFoundException e6) {
                randomAccessFile2 = null;
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
            } catch (IOException e7) {
                randomAccessFile2 = null;
                if (randomAccessFile2 != null) {
                    randomAccessFile2.close();
                }
            } catch (Throwable th4) {
                th = th4;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                throw th;
            }
        }
    }
}
