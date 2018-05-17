package cn.nubia.bigAperture;

import android.net.Uri;
import android.util.Log;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.util.ArrayList;

public class C0037m extends C0030f {
    private final boolean bpc = Log.isLoggable("ApertureBackground", 3);

    public C0037m(boolean z) {
        super(z);
    }

    public void bLF(BigApertureTask bigApertureTask) {
        Throwable e;
        bLG("[perf test] backup E");
        RandomAccessFile randomAccessFile;
        try {
            randomAccessFile = new RandomAccessFile(new File(bigApertureTask.bpp + "/.metadata"), "rw");
            try {
                randomAccessFile.writeUTF(bigApertureTask.bpq.toString());
                randomAccessFile.writeUTF(bigApertureTask.bpp);
                randomAccessFile.writeInt(bigApertureTask.bpr);
                randomAccessFile.writeInt(bigApertureTask.bps);
                randomAccessFile.writeInt(bigApertureTask.bpu);
                randomAccessFile.writeInt(bigApertureTask.bpv);
                randomAccessFile.writeInt(bigApertureTask.bpH);
                randomAccessFile.writeInt(bigApertureTask.bpI);
                randomAccessFile.writeInt(bigApertureTask.bpw);
                randomAccessFile.writeInt(bigApertureTask.bpx);
                randomAccessFile.writeFloat(bigApertureTask.bpy);
                randomAccessFile.writeFloat(bigApertureTask.bpz);
                randomAccessFile.writeFloat(bigApertureTask.bpA);
                randomAccessFile.writeFloat(bigApertureTask.bpB);
                randomAccessFile.writeInt(bigApertureTask.bpC);
                randomAccessFile.writeInt(bigApertureTask.bpE);
                randomAccessFile.writeInt(bigApertureTask.bpF);
                randomAccessFile.writeInt(bigApertureTask.bpG);
                randomAccessFile.writeInt(bigApertureTask.bpt);
                randomAccessFile.writeUTF(bigApertureTask.bpJ);
                randomAccessFile.writeInt(bigApertureTask.bpK);
                randomAccessFile.writeInt(bigApertureTask.bpM);
                randomAccessFile.writeInt(bigApertureTask.bpN);
                randomAccessFile.writeInt(bigApertureTask.bpD);
                randomAccessFile.writeInt(0);
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                    }
                }
            } catch (FileNotFoundException e3) {
                C0090a.bvo("BigApertureTaskBackupUseFile", "FileNotFoundException");
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e22) {
                        e22.printStackTrace();
                    }
                }
                bLG("[perf test] backup X");
                bKD(bigApertureTask);
            } catch (IOException e4) {
                e = e4;
                try {
                    C0090a.bvp("BigApertureTaskBackupUseFile", "FileNotFoundException", e);
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e222) {
                            e222.printStackTrace();
                        }
                    }
                    bLG("[perf test] backup X");
                    bKD(bigApertureTask);
                } catch (Throwable th) {
                    e = th;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                        }
                    }
                    throw e;
                }
            }
        } catch (FileNotFoundException e6) {
            randomAccessFile = null;
            C0090a.bvo("BigApertureTaskBackupUseFile", "FileNotFoundException");
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            bLG("[perf test] backup X");
            bKD(bigApertureTask);
        } catch (IOException e7) {
            e = e7;
            randomAccessFile = null;
            C0090a.bvp("BigApertureTaskBackupUseFile", "FileNotFoundException", e);
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            bLG("[perf test] backup X");
            bKD(bigApertureTask);
        } catch (Throwable th2) {
            e = th2;
            randomAccessFile = null;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            throw e;
        }
        bLG("[perf test] backup X");
        bKD(bigApertureTask);
    }

    public void bKB(BigApertureTask bigApertureTask) {
        File file = new File(bigApertureTask.bpp + "/.metadata");
        if (file.exists()) {
            file.delete();
        }
    }

    public void bKC(C0031g c0031g) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        bLG("[perf test] restore E");
        for (File randomAccessFile2 : bLH(BigApertureService.bnW)) {
            try {
                RandomAccessFile randomAccessFile3 = new RandomAccessFile(randomAccessFile2, "r");
                try {
                    Uri parse = Uri.parse(randomAccessFile3.readUTF());
                    String readUTF = randomAccessFile3.readUTF();
                    int readInt = randomAccessFile3.readInt();
                    int readInt2 = randomAccessFile3.readInt();
                    int readInt3 = randomAccessFile3.readInt();
                    int readInt4 = randomAccessFile3.readInt();
                    int readInt5 = randomAccessFile3.readInt();
                    int readInt6 = randomAccessFile3.readInt();
                    int readInt7 = randomAccessFile3.readInt();
                    int readInt8 = randomAccessFile3.readInt();
                    float readFloat = randomAccessFile3.readFloat();
                    float readFloat2 = randomAccessFile3.readFloat();
                    float readFloat3 = randomAccessFile3.readFloat();
                    float readFloat4 = randomAccessFile3.readFloat();
                    int readInt9 = randomAccessFile3.readInt();
                    int readInt10 = randomAccessFile3.readInt();
                    int readInt11 = randomAccessFile3.readInt();
                    int readInt12 = randomAccessFile3.readInt();
                    int readInt13 = randomAccessFile3.readInt();
                    String readUTF2 = randomAccessFile3.readUTF();
                    int readInt14 = randomAccessFile3.readInt();
                    int readInt15 = randomAccessFile3.readInt();
                    int readInt16 = randomAccessFile3.readInt();
                    int readInt17 = randomAccessFile3.readInt();
                    int readInt18 = randomAccessFile3.readInt();
                    BigApertureTask bigApertureTask = new BigApertureTask(null, parse, readUTF, readInt3, readInt4, readInt5, readInt6, readInt7, readInt8, readInt, readInt2, readFloat, readFloat2, readFloat3, readFloat4, readInt9, readInt10, readInt11, readInt12, readInt13, readInt17, readUTF2, readInt14, null, readInt15, readInt16);
                    if (readInt18 == 1) {
                        bigApertureTask.bLZ();
                    } else {
                        bigApertureTask.bLY();
                    }
                    if (c0031g != null) {
                        c0031g.bKF(bigApertureTask);
                    }
                    if (randomAccessFile3 != null) {
                        try {
                            randomAccessFile3.close();
                        } catch (IOException e) {
                        }
                    }
                } catch (IOException e2) {
                    randomAccessFile = randomAccessFile3;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (IOException e4) {
                randomAccessFile = null;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
            } catch (Throwable th3) {
                th = th3;
                RandomAccessFile randomAccessFile4 = null;
            }
        }
        bLG("[perf test] restore ");
        return;
        if (randomAccessFile4 != null) {
            try {
                randomAccessFile4.close();
            } catch (IOException e5) {
            }
        }
        throw th;
        throw th;
    }

    public void bKE(BigApertureTask bigApertureTask) {
        RandomAccessFile randomAccessFile;
        Throwable th;
        bLG("[perf test] updateBackupTaskState E");
        try {
            randomAccessFile = new RandomAccessFile(new File(bigApertureTask.bpp + "/.metadata"), "rw");
            try {
                int length = (int) randomAccessFile.length();
                bLG("length: " + length + "; taskState: " + bigApertureTask.mState + "; pendingProcessCount: " + bigApertureTask.bpD);
                randomAccessFile.seek((long) (length - 8));
                randomAccessFile.writeInt(bigApertureTask.bpD);
                randomAccessFile.seek((long) (length - 4));
                if (bigApertureTask.mState == 3 || bigApertureTask.mState == 5) {
                    randomAccessFile.writeInt(1);
                } else {
                    randomAccessFile.writeInt(0);
                }
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e) {
                        e.printStackTrace();
                    }
                }
            } catch (FileNotFoundException e2) {
                try {
                    C0090a.bvo("BigApertureTaskBackupUseFile", "FileNotFoundException");
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    bLG("[perf test] updateBackupTaskState X");
                } catch (Throwable th2) {
                    th = th2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (IOException e5) {
                th = e5;
                C0090a.bvp("BigApertureTaskBackupUseFile", "IOException", th);
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e32) {
                        e32.printStackTrace();
                    }
                }
                bLG("[perf test] updateBackupTaskState X");
            }
        } catch (FileNotFoundException e6) {
            randomAccessFile = null;
            C0090a.bvo("BigApertureTaskBackupUseFile", "FileNotFoundException");
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            bLG("[perf test] updateBackupTaskState X");
        } catch (IOException e7) {
            th = e7;
            randomAccessFile = null;
            C0090a.bvp("BigApertureTaskBackupUseFile", "IOException", th);
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            bLG("[perf test] updateBackupTaskState X");
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            throw th;
        }
        bLG("[perf test] updateBackupTaskState X");
    }

    private ArrayList bLH(String str) {
        bLG("parseBigAperatureTempFiles E");
        ArrayList arrayList = new ArrayList();
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                int i = 0;
                while (i < listFiles.length) {
                    if (listFiles[i] != null && listFiles[i].exists()) {
                        File file2 = new File(listFiles[i].getAbsolutePath() + "/.metadata");
                        if (file2.exists()) {
                            arrayList.add(file2);
                        }
                    }
                    i++;
                }
            }
        }
        bLG("parseBigAperatureTempFiles X");
        return arrayList;
    }

    private void bLG(String str) {
        if (this.bpc) {
            C0090a.m0d("BigApertureTaskBackupUseFile", str);
        }
    }
}
