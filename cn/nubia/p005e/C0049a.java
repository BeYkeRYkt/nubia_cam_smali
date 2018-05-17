package cn.nubia.p005e;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;

public class C0049a {
    public static int bPX(String str, String str2) {
        RandomAccessFile randomAccessFile;
        IOException e;
        Throwable th;
        InputStream inputStream = null;
        InputStream fileInputStream;
        try {
            randomAccessFile = new RandomAccessFile(str, "rw");
            try {
                fileInputStream = new FileInputStream(str2);
            } catch (IOException e2) {
                e = e2;
                try {
                    e.printStackTrace();
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                            return 1;
                        }
                    }
                    if (inputStream != null) {
                        return 1;
                    }
                    inputStream.close();
                    return 1;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = inputStream;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e4) {
                            e4.printStackTrace();
                        }
                    }
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                fileInputStream = null;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
            try {
                long length = randomAccessFile.length();
                randomAccessFile.seek(1 + length);
                byte[] bArr = new byte[1024];
                for (int read = fileInputStream.read(bArr); read > 0; read = fileInputStream.read(bArr)) {
                    randomAccessFile.write(bArr, 0, read);
                }
                randomAccessFile.writeLong(length);
                randomAccessFile.writeChars("nubiaVpfile");
                if (randomAccessFile != null) {
                    try {
                        randomAccessFile.close();
                    } catch (IOException e32) {
                        e32.printStackTrace();
                        return 1;
                    }
                }
                if (fileInputStream == null) {
                    return 0;
                }
                fileInputStream.close();
                return 0;
            } catch (IOException e5) {
                e32 = e5;
                inputStream = fileInputStream;
                e32.printStackTrace();
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                if (inputStream != null) {
                    return 1;
                }
                inputStream.close();
                return 1;
            } catch (Throwable th4) {
                th = th4;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                if (fileInputStream != null) {
                    fileInputStream.close();
                }
                throw th;
            }
        } catch (IOException e6) {
            e32 = e6;
            randomAccessFile = null;
            e32.printStackTrace();
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            if (inputStream != null) {
                return 1;
            }
            inputStream.close();
            return 1;
        } catch (Throwable th5) {
            th = th5;
            randomAccessFile = null;
            fileInputStream = null;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            if (fileInputStream != null) {
                fileInputStream.close();
            }
            throw th;
        }
    }

    public static boolean bPY(String str) {
        RandomAccessFile randomAccessFile;
        IOException e;
        Throwable th;
        try {
            randomAccessFile = new RandomAccessFile(str, "r");
            try {
                randomAccessFile.seek(randomAccessFile.length() - ((long) ("nubiaVpfile".length() * 2)));
                String str2 = "";
                for (int i = 0; i < "nubiaVpfile".length(); i++) {
                    str2 = new StringBuilder(String.valueOf(str2)).append(randomAccessFile.readChar()).toString();
                }
                boolean equals = str2.equals("nubiaVpfile");
                if (randomAccessFile == null) {
                    return equals;
                }
                try {
                    randomAccessFile.close();
                    return equals;
                } catch (IOException e2) {
                    e2.printStackTrace();
                    return equals;
                }
            } catch (IOException e3) {
                e = e3;
                try {
                    e.printStackTrace();
                    if (randomAccessFile == null) {
                        return false;
                    }
                    try {
                        randomAccessFile.close();
                        return false;
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        return false;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (IOException e22) {
                            e22.printStackTrace();
                        }
                    }
                    throw th;
                }
            }
        } catch (IOException e5) {
            e4 = e5;
            randomAccessFile = null;
            e4.printStackTrace();
            if (randomAccessFile == null) {
                return false;
            }
            randomAccessFile.close();
            return false;
        } catch (Throwable th3) {
            th = th3;
            randomAccessFile = null;
            if (randomAccessFile != null) {
                randomAccessFile.close();
            }
            throw th;
        }
    }
}
