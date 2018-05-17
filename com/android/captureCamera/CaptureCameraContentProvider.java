package com.android.captureCamera;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import com.p010a.C0090a;

public class CaptureCameraContentProvider extends ContentProvider {
    private boolean aRX = false;
    private String aRY = null;

    public Bundle call(String str, String str2, Bundle bundle) {
        if (Binder.getCallingUid() != 1000) {
            throw new SecurityException("No permission to access this provider");
        } else if (str == null || !str.equals("check_running_status")) {
            return null;
        } else {
            Bundle bundle2 = new Bundle();
            bundle2.putBoolean("isRunning", this.aRX);
            if (this.aRY != null) {
                bundle2.putString("runningReason", this.aRY);
            }
            return bundle2;
        }
    }

    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    public String getType(Uri uri) {
        return null;
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    public boolean onCreate() {
        return true;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        return null;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (Binder.getCallingUid() != getContext().getApplicationInfo().uid) {
            throw new SecurityException("No permission to access this provider");
        }
        this.aRX = contentValues.getAsBoolean("isRunning").booleanValue();
        this.aRY = contentValues.getAsString("runningReason");
        C0090a.bvo("CaptureCameraContentProvider", "mRuning = " + this.aRX + "; mRuningReason = " + this.aRY);
        return 0;
    }
}
