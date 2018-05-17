package com.android.common.p032o;

import com.p010a.C0090a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;

public class C0685a {
    public static boolean amA(String str, byte[] bArr) {
        IOException e;
        FileNotFoundException e2;
        Throwable th;
        FileOutputStream fileOutputStream = null;
        FileOutputStream fileOutputStream2;
        try {
            fileOutputStream2 = new FileOutputStream(new File(str));
            try {
                fileOutputStream2.write(bArr);
                if (fileOutputStream2 == null) {
                    return true;
                }
                try {
                    fileOutputStream2.close();
                    return true;
                } catch (IOException e3) {
                    e3.printStackTrace();
                    C0090a.m1e("SaveImage", "Exception:IOException");
                }
            } catch (FileNotFoundException e4) {
                e2 = e4;
                fileOutputStream = fileOutputStream2;
                try {
                    e2.printStackTrace();
                    C0090a.m1e("SaveImage", "Exception:FileNotFoundException");
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e32) {
                            e32.printStackTrace();
                            C0090a.m1e("SaveImage", "Exception:IOException");
                        }
                    }
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (IOException e5) {
                            e5.printStackTrace();
                            C0090a.m1e("SaveImage", "Exception:IOException");
                        }
                    }
                    throw th;
                }
            } catch (IOException e6) {
                e32 = e6;
                try {
                    e32.printStackTrace();
                    C0090a.m1e("SaveImage", "Exception:IOException");
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                        } catch (IOException e322) {
                            e322.printStackTrace();
                            C0090a.m1e("SaveImage", "Exception:IOException");
                        }
                    }
                    return false;
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        fileOutputStream.close();
                    }
                    throw th;
                }
            }
        } catch (FileNotFoundException e7) {
            e2 = e7;
            e2.printStackTrace();
            C0090a.m1e("SaveImage", "Exception:FileNotFoundException");
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
            return false;
        } catch (IOException e8) {
            e322 = e8;
            fileOutputStream2 = null;
            e322.printStackTrace();
            C0090a.m1e("SaveImage", "Exception:IOException");
            if (fileOutputStream2 != null) {
                fileOutputStream2.close();
            }
            return false;
        }
    }

    public static boolean amB(String str) {
        File file = new File(str);
        if (file.exists() && file.isDirectory()) {
            return true;
        }
        return file.mkdirs();
    }
}
