package com.android.camera.cameraFamily;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.Log;
import com.android.common.appService.CameraMember;
import com.android.common.custom.C0421M;
import com.p010a.C0090a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.HashMap;

public class CameraFamilyContentProvider extends ContentProvider {
    private static final boolean aFn = Log.isLoggable("FamProviderDebug", 3);
    private static final UriMatcher aFo = new UriMatcher(-1);
    private static HashMap aFp;

    static {
        aFo.addURI("nubia.camera.family", "member", 1);
        aFo.addURI("nubia.camera.family", "member/#", 2);
        aFp = null;
        aFp = new HashMap();
        aFp.put("_id", "_id");
        aFp.put("family_member_number", "family_member_number");
        aFp.put("family_member_type", "family_member_type");
        aFp.put("family_member_state", "family_member_state");
        aFp.put("family_member_name", "family_member_name");
        aFp.put("family_member_icon_id", "family_member_icon_id");
        aFp.put("family_member_icon", "family_member_icon");
        aFp.put("family_member_action", "family_member_action");
    }

    public boolean onCreate() {
        C0090a.bvo("CameraFamilyContentProvider", "onCreate");
        return true;
    }

    public String getType(Uri uri) {
        switch (aFo.match(uri)) {
            case 1:
                return "vnd.android.cursor.dir/one.camerafamily.note";
            case 2:
                return "vnd.android.cursor.dir/all.camerafamily.note";
            default:
                C0090a.m1e("CameraFamilyContentProvider", "getType unKnow uri : " + uri);
                return null;
        }
    }

    public Uri insert(Uri uri, ContentValues contentValues) {
        aUG("insert");
        return null;
    }

    public int delete(Uri uri, String str, String[] strArr) {
        aUG("delete");
        return 0;
    }

    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        aUG("update, select: " + str + "; selectionArgs: " + strArr);
        return 0;
    }

    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        aUG("query, uri: " + uri + ", projection: " + strArr + ", selection: " + str + ", selectionArgs: " + strArr2 + ", sortOrder: " + str2);
        if (uri == null) {
            C0090a.m1e("CameraFamilyContentProvider", "uri is null");
        }
        if (uri.getPath().contains("member")) {
            return aUK(uri, strArr, str, strArr2, str2);
        }
        if (uri.getPath().contains("directory")) {
            return C0173a.aUf(getContext());
        }
        C0090a.m1e("CameraFamilyContentProvider", "error uri " + uri);
        return null;
    }

    private Cursor aUK(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        int i;
        int i2 = 0;
        Object obj = null;
        Cursor matrixCursor = new MatrixCursor(C0177e.aFr);
        if (str != null) {
            String substring = str.substring(0, str.indexOf(" "));
            String substring2 = str.substring(str.indexOf("'") + 1, str.lastIndexOf("'"));
            i = -1;
            for (int i3 = 0; i3 < C0177e.aFr.length; i3++) {
                if (C0177e.aFr[i3].equals(substring + "")) {
                    i = i3;
                }
            }
            obj = substring2;
        } else {
            i = -1;
        }
        int i4 = 1;
        while (i2 < C0174b.aEY.length) {
            int i5 = i4 + 1;
            Object[] aUI = aUI(i4, C0174b.aEY[i2].aan());
            if (aUI != null) {
                if (i == -1) {
                    matrixCursor.addRow(aUI);
                } else if ((aUI[i] + "").equals(obj)) {
                    matrixCursor.addRow(aUI);
                }
            }
            i2++;
            i4 = i5;
        }
        return matrixCursor;
    }

    private Object[] aUI(int i, int i2) {
        String str;
        int i3;
        if (i2 == CameraMember.WLAN_CAMERA.aan()) {
            str = "cn.nubia.wlancamera;android.intent.action.MAIN;nubia.camera.family";
        } else {
            str = getContext().getPackageName() + ";" + "android.intent.action.MAIN;" + "nubia.camera.family";
        }
        if (!C0174b.aUm(i2, getContext())) {
            i3 = 2;
        } else if (i2 != CameraMember.VIDEOMAKER.aan() || C0421M.dC().dD().cu()) {
            i3 = 1;
        } else {
            i3 = 2;
        }
        return new Object[]{Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), aUJ(C0174b.aUl(i2)), Integer.valueOf(C0174b.aUj(i2)), aUH(C0174b.aUj(i2)), str};
    }

    private byte[] aUH(int i) {
        Bitmap decodeResource = BitmapFactory.decodeResource(getContext().getResources(), i);
        OutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        decodeResource.compress(CompressFormat.PNG, 100, byteArrayOutputStream);
        try {
            byteArrayOutputStream.flush();
            byteArrayOutputStream.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return byteArrayOutputStream.toByteArray();
    }

    private String aUJ(int i) {
        return getContext().getString(i);
    }

    private void aUG(String str) {
        if (aFn) {
            C0090a.bvo("FamProviderDebug", str);
        }
    }
}
