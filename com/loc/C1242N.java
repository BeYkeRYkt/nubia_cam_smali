package com.loc;

import android.content.Context;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

public class C1242N {
    private Context f131a;
    private int f132b = 0;
    private int f133c = 0;
    private int f134d = 0;
    private int f135e = 0;
    private int f136f = 0;
    private int f137g = 0;

    protected C1242N(Context context) {
        this.f131a = context;
        m108a(768);
        bwt(768);
    }

    private ArrayList bwv(File[] fileArr) {
        int i = 0;
        ArrayList arrayList = new ArrayList();
        while (i < fileArr.length) {
            try {
                if (fileArr[i].isFile() && fileArr[i].getName().length() == 10 && TextUtils.isDigitsOnly(fileArr[i].getName())) {
                    arrayList.add(fileArr[i]);
                }
                i++;
            } catch (Throwable th) {
                bx.bBw(th, "CollectorFileProvider", "getKnownFile");
            }
        }
        return arrayList;
    }

    private File bww(long j) {
        boolean z = false;
        try {
            if (Process.myUid() == 1000) {
                return null;
            }
            File file;
            boolean equals = "mounted".equals(Environment.getExternalStorageState());
            if (cw.m544a() && !equals) {
                file = null;
            } else {
                if (!(cw.m545b() > ((long) (this.f134d / 2)) ? true : z)) {
                    return null;
                }
                File file2 = new File(cw.m542a(this.f131a).getPath() + File.separator + "carrierdata");
                if (file2.exists()) {
                    if (file2.isDirectory()) {
                        file = new File(file2.getPath() + File.separator + j);
                        z = file.createNewFile();
                    }
                }
                file2.mkdirs();
                file = new File(file2.getPath() + File.separator + j);
                try {
                    z = file.createNewFile();
                } catch (IOException e) {
                }
            }
            return !z ? null : file;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "createWriteFileInSDCard");
        }
    }

    private File m103c() {
        try {
            if (Process.myUid() == 1000) {
                return null;
            }
            boolean equals = "mounted".equals(Environment.getExternalStorageState());
            File file;
            if (cw.m544a() && !equals) {
                file = null;
                return file;
            }
            File file2 = new File(cw.m542a(this.f131a).getPath() + File.separator + "carrierdata");
            if (file2.exists() && file2.isDirectory()) {
                File[] listFiles = file2.listFiles();
                if (listFiles != null && listFiles.length > 0) {
                    ArrayList bwv = bwv(listFiles);
                    if (bwv.size() == 1) {
                        if ((((File) bwv.get(0)).length() >= ((long) this.f136f) ? 1 : null) == null) {
                            file = (File) bwv.get(0);
                            return file;
                        }
                    } else if (bwv.size() >= 2) {
                        file = (File) bwv.get(0);
                        File file3 = (File) bwv.get(1);
                        if (file.getName().compareTo(file3.getName()) <= 0) {
                            file = file3;
                        }
                        return file;
                    }
                }
            }
            file = null;
            return file;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "findWriteInSDCard");
        }
    }

    private int m104d() {
        boolean equals;
        int i = 2;
        int i2 = 0;
        try {
            if (Process.myUid() == 1000) {
                return 0;
            }
            equals = "mounted".equals(Environment.getExternalStorageState());
            if (cw.m544a() && !r3) {
                i = 0;
                return i;
            }
            File file = new File(cw.m542a(this.f131a).getPath() + File.separator + "carrierdata");
            if (file.exists() && file.isDirectory()) {
                File[] listFiles = file.listFiles();
                if (listFiles != null && listFiles.length > 0) {
                    ArrayList bwv = bwv(listFiles);
                    if (bwv.size() == 1) {
                        if (((File) bwv.get(0)).length() > 0) {
                            i2 = 1;
                        }
                        i = i2 == 0 ? 10 : 1;
                    } else if (bwv.size() < 2) {
                    }
                    return i;
                }
            }
            i = 0;
            return i;
        } catch (Exception e) {
            equals = false;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "findWriteInSDCard_OneFile");
        }
    }

    private File m105e() {
        boolean z = false;
        try {
            if (Process.myUid() == 1000) {
                return null;
            }
            try {
                z = "mounted".equals(Environment.getExternalStorageState());
            } catch (Exception e) {
            }
            File file;
            if (cw.m544a() && !r0) {
                file = null;
                return file;
            }
            file = cw.m542a(this.f131a);
            if (file != null) {
                File file2 = new File(file.getPath() + File.separator + "carrierdata");
                if (file2.exists() && file2.isDirectory()) {
                    File[] listFiles = file2.listFiles();
                    if (listFiles != null && listFiles.length > 0) {
                        ArrayList bwv = bwv(listFiles);
                        if (bwv.size() >= 2) {
                            file = (File) bwv.get(0);
                            file2 = (File) bwv.get(1);
                            if (file.getName().compareTo(file2.getName()) > 0) {
                                file = file2;
                            }
                            return file;
                        }
                    }
                }
            }
            file = null;
            return file;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "findReadInSDCard");
        }
    }

    protected int m106a() {
        return this.f132b;
    }

    protected synchronized File m107a(long j) {
        File c;
        Throwable th;
        File file = null;
        synchronized (this) {
            try {
                c = m103c();
                if (c == null) {
                    try {
                        c = bww(j);
                    } catch (Throwable th2) {
                        Throwable th3 = th2;
                        file = c;
                        th = th3;
                        bx.bBw(th, "CollectorFileProvider", "getWriteFile");
                        c = file;
                        return c;
                    }
                }
            } catch (Throwable th4) {
                th = th4;
                bx.bBw(th, "CollectorFileProvider", "getWriteFile");
                c = file;
                return c;
            }
        }
        return c;
    }

    protected void m108a(int i) {
        try {
            this.f132b = i;
            this.f134d = (((this.f132b * 8) * 1500) + this.f132b) + 4;
            if (this.f132b == 256 || this.f132b == 768) {
                this.f136f = this.f134d / 100;
            } else if (this.f132b == 8736) {
                this.f136f = this.f134d - 5000;
            }
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "setSnapshotInfo");
        }
    }

    protected File m109b() {
        try {
            m105e();
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "getReadFile");
        }
        return null;
    }

    protected void bwt(int i) {
        try {
            this.f133c = i;
            this.f135e = (((this.f133c * 8) * 1000) + this.f133c) + 4;
            this.f137g = this.f135e;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "setExternalSnapshotInfo");
        }
    }

    protected synchronized boolean bwu(long j) {
        try {
            int d = m104d();
            return d != 0 ? d != 1 ? d == 2 : bww(j) != null : false;
        } catch (Throwable th) {
            bx.bBw(th, "CollectorFileProvider", "setUploadEnabled");
            return false;
        }
    }
}
