package com.android.common.p032o;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.net.Uri;

public class C0688d {
    public static synchronized Uri amD(ContentResolver contentResolver, Uri uri, ContentValues contentValues) {
        Uri insert;
        synchronized (C0688d.class) {
            insert = contentResolver.insert(uri, contentValues);
        }
        return insert;
    }
}
