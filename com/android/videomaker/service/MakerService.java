package com.android.videomaker.service;

import android.app.Service;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.location.Location;
import android.net.Uri;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.provider.MediaStore.Video.Media;
import com.android.videomaker.p041a.C1175b;
import com.android.videomaker.p042b.C1181b;
import com.p010a.C0090a;
import com.umeng.analytics.ReportPolicy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class MakerService extends Service {
    private static C1181b axA = null;
    private static Location axs;
    private static volatile boolean axt;
    private static final C1206a axv = new C1206a(8);
    private static volatile boolean axw = false;
    private static final List axx = new ArrayList();
    private static final Map axy = new HashMap();
    private C1207b axB;
    private Handler axu;
    private final Runnable axz = new C1208d(this);

    public void onCreate() {
        C0090a.m1e("MakerService", "onCreate");
        super.onCreate();
        this.axu = new Handler(Looper.getMainLooper());
        this.axB = new C1207b(this, "VideoServiceThread");
        this.axB.start();
    }

    public void onDestroy() {
        C0090a.m1e("MakerService", "onDestroy");
        if (this.axB != null) {
            this.axB.quit();
            this.axB = null;
        }
        super.onDestroy();
    }

    public IBinder onBind(Intent intent) {
        C0090a.m1e("MakerService", "onBind");
        return null;
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        int intExtra = intent.getIntExtra("op", -1);
        C0090a.m1e("MakerService", "onStartCommand op=" + intExtra);
        switch (intExtra) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
            case 7:
            case 500:
            case 501:
            case 502:
            case 503:
            case 504:
            case 505:
            case 506:
                this.axB.aLZ(intent);
                break;
            default:
                C0090a.m1e("MakerService", "No thread assigned: " + intExtra);
                break;
        }
        return 2;
    }

    private static void aLQ(Context context, Intent intent) {
        C0090a.m1e("MakerService", "startCommand");
        String aKz = C1175b.aKz(8);
        intent.putExtra("rid", aKz);
        axy.put(aKz, intent);
        context.startService(intent);
    }

    public static void aLt(C1194c c1194c) {
        C0090a.m1e("MakerService", "registerListener listener: " + c1194c);
        axx.add(c1194c);
    }

    public static void aLw(C1194c c1194c) {
        axx.remove(c1194c);
    }

    public static void aLx(Context context) {
        C0090a.m0d("MakerService", "createVideoEditor");
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 1);
        aLQ(context, aLq);
    }

    public static void aLD(Context context, Uri uri, boolean z) {
        C0090a.m1e("MakerService", "addAudioTrackUri uri" + uri.toString());
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 502);
        aLq.putExtra("filename", uri);
        aLq.putExtra("loop", z);
        aLQ(context, aLq);
    }

    public static void aLE(Context context, String str, boolean z) {
        C0090a.m1e("MakerService", "addAudioTrackNoUri " + str);
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 503);
        aLq.putExtra("filename", str);
        aLq.putExtra("loop", z);
        aLQ(context, aLq);
    }

    public static void aLF(Context context, ArrayList arrayList, boolean z) {
        if (arrayList == null) {
            C0090a.m1e("MakerService", "addAudioTrackRecord size: null");
        } else {
            C0090a.m1e("MakerService", "addAudioTrackRecord size: " + arrayList.size());
        }
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 506);
        aLq.putStringArrayListExtra("filename", arrayList);
        aLq.putExtra("loop", z);
        aLQ(context, aLq);
    }

    public static void aLv(Context context) {
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 6);
        aLQ(context, aLq);
    }

    public static void aLy(Context context, String[] strArr, long j) {
        C0090a.m1e("MakerService", "addMediaItemImages " + strArr[0] + " | durationMs=" + j);
        Intent aLq = axv.aLq(context, MakerService.class);
        C0090a.m1e("MakerService", "addMediaItemImages");
        aLq.putExtra("op", 500);
        aLq.putExtra("images", strArr);
        aLQ(context, aLq);
    }

    public static void aLG(Context context, String str) {
        C0090a.m1e("MakerService", "removeAudioTrack: " + str);
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 505);
        aLQ(context, aLq);
    }

    public static void aLz(Context context, Uri uri) {
        C0090a.m1e("MakerService", "removeAudioTrack:");
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 504);
        aLQ(context, aLq);
    }

    public static void aLs(Context context, String str, int i, int i2, int i3) {
        C0090a.m1e("MakerService", "exportVideoEditor:filename=" + str + " height=" + i + " bitrate=" + i2);
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 2);
        aLq.putExtra("filename", str);
        aLq.putExtra("height", i);
        aLq.putExtra("bitrate", i2);
        aLq.putExtra("fps", i3);
        aLQ(context, aLq);
    }

    private void aLI(Intent intent, Exception exception, Object obj, Object obj2, boolean z) {
        this.axu.post(new C1209e(this, intent, obj, obj2, exception, z));
    }

    private void aLL(Intent intent) {
        axy.remove(intent.getStringExtra("rid"));
        C0090a.m1e("MakerService", "finalizeRequest mPendingIntents.size: " + axy.size());
        if (axy.size() == 0) {
            this.axu.removeCallbacks(this.axz);
            C0090a.m0d("MakerService", "finalizeRequest");
            this.axu.postDelayed(this.axz, 5000);
        }
    }

    private void aLM(Intent intent) {
        axy.remove(intent.getStringExtra("rid"));
        this.axu.removeCallbacks(this.axz);
        this.axu.postDelayed(this.axz, 5000);
    }

    public void aLN(Intent intent, Object obj, Object obj2, Exception exception, boolean z) {
        switch (intent.getIntExtra("op", -1)) {
            case 1:
                C0090a.m1e("MakerService", "OP_VIDEO_EDITOR_CREATE  finalize:  " + z);
                if (z) {
                    aLL(intent);
                }
                C0090a.m1e("MakerService", " OP_VIDEO_EDITOR_CREATE  callback  mListeners: " + axx.size());
                for (C1194c c1194c : axx) {
                    C0090a.m1e("MakerService", "onVideogeneratorcreated callbaack  listener: " + c1194c);
                    c1194c.aMa(exception);
                }
                break;
            case 2:
                C0090a.m1e("MakerService", "OP_VIDEO_EDITOR_EXPORT");
                break;
            case 3:
                C0090a.m1e("MakerService", "OP_VIDEO_EDITOR_CANCEL_EXPORT");
                if (z) {
                    aLL(intent);
                }
                for (C1194c c1194c2 : axx) {
                    c1194c2.aMd(intent.getStringExtra("filename"));
                }
                break;
            case 4:
                C0090a.m1e("MakerService", "OP_VIDEO_EDITOR_EXPORT_STATUS");
                if (z) {
                    aLL(intent);
                }
                String stringExtra = intent.getStringExtra("filename");
                if (intent.hasExtra("ex")) {
                    Intent intent2 = (Intent) intent.getParcelableExtra("req_intent");
                    aLL(intent2);
                    axv.aLr(intent2);
                    Exception exception2 = (Exception) intent.getSerializableExtra("ex");
                    boolean booleanExtra = intent.getBooleanExtra("cancelled", false);
                    Uri uri = (Uri) intent.getParcelableExtra("uri");
                    for (C1194c aMe : axx) {
                        aMe.aMe(stringExtra, uri, exception2, booleanExtra);
                    }
                    break;
                }
                break;
            case 5:
                C0090a.m1e("MakerService", "OP_VIDEO_EDITOR_RELEASE");
                if (z) {
                    aLL(intent);
                    break;
                }
                break;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                C0090a.m1e("MakerService", "OP_VIDEO_EDITOR_DELETE");
                if (z) {
                    aLL(intent);
                }
                for (C1194c c1194c22 : axx) {
                    c1194c22.aMf(exception);
                }
                break;
            case 7:
                C0090a.m1e("MakerService", "OP_VIDEO_EDITOR_SET_ASPECT_RATIO");
                break;
            case 500:
                C0090a.m1e("MakerService", "OP_MEDIA_ITEM_ADD_IMAGES");
                if (z) {
                    aLL(intent);
                }
                for (C1194c c1194c222 : axx) {
                    c1194c222.aMb();
                }
                break;
            case 501:
                C0090a.m1e("MakerService", "OP_MEDIA_ITEM_REMOVE_ALL");
                if (z) {
                    aLL(intent);
                    break;
                }
                break;
            case 502:
                C0090a.m1e("MakerService", "OP_AUDIO_TRACK_ADD_URI");
                if (z) {
                    aLL(intent);
                }
                String str = (String) obj;
                for (C1194c c1194c2222 : axx) {
                    c1194c2222.aMc(str, exception);
                }
                break;
            case 503:
                C0090a.m1e("MakerService", "OP_AUDIO_TRACK_ADD_NO_URI");
                if (z) {
                    aLL(intent);
                }
                for (C1194c c1194c22222 : axx) {
                    c1194c22222.aMc(null, exception);
                }
                break;
            case 504:
                C0090a.m1e("MakerService", "OP_AUDIO_TRACK_REMOVE");
                if (z) {
                    aLL(intent);
                    break;
                }
                break;
            case 505:
                C0090a.m1e("MakerService", "OP_AUDIO_TRACK_REMOVE_ALL");
                if (z) {
                    aLL(intent);
                    break;
                }
                break;
            default:
                C0090a.m1e("MakerService", "default");
                if (z) {
                    aLL(intent);
                    break;
                }
                break;
        }
        if (z) {
            axv.aLr(intent);
        }
    }

    public static void aLC(Context context, String str) {
        C0090a.m1e("MakerService", "cancelExportVideoEditor=" + str);
        axt = true;
        axy.clear();
        Intent aLq = axv.aLq(context, MakerService.class);
        aLq.putExtra("op", 3);
        aLq.putExtra("filename", str);
        aLQ(context, aLq);
    }

    public static void aLA(boolean z) {
        C0090a.m0d("MakerService", "setInteruptImagesFlag: " + z);
        axw = z;
    }

    public static int aLB() {
        if (axA != null) {
            return axA.aKG();
        }
        return -1;
    }

    private synchronized void aLP() {
        if (axA != null) {
            C0090a.m0d("MakerService", "releaseEditor: ");
            axA.aKH();
            axA = null;
            System.gc();
        }
    }

    private void aLJ(Intent intent) {
        axt = false;
        new C1210f(this, intent).start();
    }

    private Uri aLK(String str) {
        ContentValues contentValues = new ContentValues(2);
        contentValues.put("mime_type", "video/mp4");
        contentValues.put("_data", str);
        if (axs != null) {
            contentValues.put("longitude", Double.valueOf(axs.getLongitude()));
            contentValues.put("latitude", Double.valueOf(axs.getLatitude()));
        }
        Uri insert = getContentResolver().insert(Media.EXTERNAL_CONTENT_URI, contentValues);
        sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + str)));
        return insert;
    }

    private void aLH(Intent intent) {
        this.axu.post(new C1213i(this, intent));
    }

    public void aLO(Intent intent) {
        Exception exception;
        Throwable th;
        Cursor cursor;
        int intExtra = intent.getIntExtra("op", -1);
        C0090a.m1e("MakerService", "processIntent op=" + intExtra);
        switch (intExtra) {
            case 1:
                C0090a.m0d("MakerService", "processIntent OP_VIDEO_EDITOR_CREATE");
                if (axA == null) {
                    axA = new C1181b();
                    aLI(intent, null, null, null, false);
                    aLH(intent);
                    return;
                }
                return;
            case 2:
                C0090a.m0d("MakerService", "OP_VIDEO_EDITOR_EXPORT");
                aLJ(intent);
                return;
            case 3:
                C0090a.m0d("MakerService", "OP_VIDEO_EDITOR_CANCEL_EXPORT");
                axA.aKQ(intent.getStringExtra("filename"));
                aLI(intent, null, null, null, true);
                return;
            case 4:
                C0090a.m0d("MakerService", "OP_VIDEO_EDITOR_EXPORT_STATUS");
                aLI(intent, null, null, null, true);
                return;
            case 5:
            case 7:
                return;
            case ReportPolicy.BATCH_BY_INTERVAL /*6*/:
                aLP();
                aLI(intent, null, null, null, true);
                return;
            case 500:
                C0090a.m0d("MakerService", "OP_MEDIA_ITEM_ADD_IMAGES");
                String[] stringArrayExtra = intent.getStringArrayExtra("images");
                C0090a.m0d("MakerService", "photos.length = " + stringArrayExtra.length);
                long currentTimeMillis = System.currentTimeMillis();
                for (String str : stringArrayExtra) {
                    if (axw) {
                        aLM(intent);
                        C0090a.m0d("MakerService", "It takes " + (System.currentTimeMillis() - currentTimeMillis) + " to add mediaItem!");
                        if (axw) {
                            aLI(intent, null, null, null, false);
                            aLH(intent);
                            return;
                        }
                        axA.aKL();
                        return;
                    }
                    if (str == null) {
                        C0090a.m1e("MakerService", "Media file not found: " + str);
                    } else {
                        axA.aKK(str);
                    }
                }
                C0090a.m0d("MakerService", "It takes " + (System.currentTimeMillis() - currentTimeMillis) + " to add mediaItem!");
                if (axw) {
                    aLI(intent, null, null, null, false);
                    aLH(intent);
                    return;
                }
                axA.aKL();
                return;
            case 501:
                axA.aKL();
                aLI(intent, null, null, null, false);
                aLH(intent);
                return;
            case 502:
                Uri uri = (Uri) intent.getParcelableExtra("filename");
                try {
                    Cursor query = getContentResolver().query(uri, new String[]{"_data"}, null, null, null);
                    try {
                        String string;
                        if (query.moveToFirst()) {
                            string = query.getString(0);
                        } else {
                            string = null;
                        }
                        if (query != null) {
                            query.close();
                        }
                        C0090a.m0d("MakerService", "OP_AUDIO_TRACK_ADD_URI: " + string);
                        if (string == null) {
                            throw new IllegalArgumentException("Media file not found: " + uri);
                        }
                        try {
                            axA.aKM(string);
                            exception = null;
                        } catch (Exception e) {
                            exception = e;
                        }
                        aLI(intent, exception, string, null, false);
                        aLH(intent);
                        return;
                    } catch (Throwable th2) {
                        th = th2;
                        cursor = query;
                        if (cursor != null) {
                            cursor.close();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    cursor = null;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            case 503:
                String stringExtra = intent.getStringExtra("filename");
                C0090a.m0d("MakerService", "OP_AUDIO_TRACK_ADD_NO_URI: " + stringExtra);
                if (stringExtra == null) {
                    throw new IllegalArgumentException("Media file not found: " + stringExtra);
                }
                axA.aKM(stringExtra);
                aLI(intent, null, null, null, false);
                aLH(intent);
                return;
            case 504:
                C0090a.m0d("MakerService", "OP_AUDIO_TRACK_REMOVE");
                axA.aKO();
                aLI(intent, null, null, null, false);
                aLH(intent);
                return;
            case 505:
                C0090a.m0d("MakerService", "OP_AUDIO_TRACK_REMOVE_ALL");
                axA.aKP(null);
                aLI(intent, null, null, null, false);
                aLH(intent);
                return;
            case 506:
                ArrayList stringArrayListExtra = intent.getStringArrayListExtra("filename");
                C0090a.m0d("MakerService", "OP_AUDIO_TRACK_ADD_LIST: ");
                if (stringArrayListExtra == null) {
                    throw new IllegalArgumentException("Media file list not found: ");
                }
                axA.aKN(stringArrayListExtra);
                aLI(intent, null, null, null, false);
                aLH(intent);
                return;
            default:
                try {
                    throw new IllegalArgumentException("Unhandled operation: " + intExtra);
                } catch (Exception exception2) {
                    C0090a.m1e("MakerService", "processIntent, ex = " + exception2);
                    exception2.printStackTrace();
                    aLI(intent, exception2, null, null, true);
                }
        }
        C0090a.m1e("MakerService", "processIntent, ex = " + exception2);
        exception2.printStackTrace();
        aLI(intent, exception2, null, null, true);
    }

    public static void aLu(Location location) {
        axs = location;
    }
}
