package com.loc;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;

public final class C1234G {
    public static final Charset bdY = Charset.forName("US-ASCII");
    static final Charset bdZ = Charset.forName("UTF-8");

    static void m85a(File file) {
        int i = 0;
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            int length = listFiles.length;
            while (i < length) {
                File file2 = listFiles[i];
                if (file2.isDirectory()) {
                    C1234G.m85a(file2);
                }
                if (file2.delete()) {
                    i++;
                } else {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }

    static void bwr(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }
}
