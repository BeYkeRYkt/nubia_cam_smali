package com.android.common.p024d;

import android.content.SharedPreferences;
import android.content.res.AssetFileDescriptor;
import android.hardware.Camera.PreviewCallback;
import android.hardware.Camera.Size;
import android.media.MediaPlayer;
import com.android.camera.R;
import com.android.common.appService.C0329e;
import com.p010a.C0090a;

public class C0453h {
    private static MediaPlayer Ou = null;
    private static MediaPlayer Ov = null;

    public static void Rf(C0329e c0329e) {
        try {
            if (C0453h.Rh(c0329e).getString("pref_camera_shutter_sound_key", c0329e.SN().getString(R.string.pref_camera_shutter_sound_default)).equals("on")) {
                Ou = new MediaPlayer();
                AssetFileDescriptor openRawResourceFd = c0329e.SN().getResources().openRawResourceFd(R.raw.ztemt_multi_shoot_fast);
                Ou.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                Ou.setAudioStreamType(1);
                Ou.setLooping(true);
                Ou.prepare();
                Ou.start();
            }
        } catch (Exception e) {
            C0090a.m1e("MultiShootUtil", "playFastSound fail " + e.getMessage());
            if (Ou != null) {
                Ou.release();
                Ou = null;
            }
        }
    }

    public static void Rc() {
        if (Ou != null) {
            Ou.stop();
            Ou.release();
            Ou = null;
        }
    }

    public static void Rd(C0329e c0329e) {
        if (C0453h.Rh(c0329e).getString("pref_camera_shutter_sound_key", c0329e.SN().getString(R.string.pref_camera_shutter_sound_default)).equals("on")) {
            MediaPlayer mediaPlayer = new MediaPlayer();
            try {
                AssetFileDescriptor openRawResourceFd = c0329e.SN().getResources().openRawResourceFd(R.raw.ztemt_multi_shoot_slow);
                mediaPlayer.setDataSource(openRawResourceFd.getFileDescriptor(), openRawResourceFd.getStartOffset(), openRawResourceFd.getLength());
                mediaPlayer.setAudioStreamType(1);
                mediaPlayer.prepare();
                mediaPlayer.start();
            } catch (Exception e) {
                C0090a.m1e("MultiShootUtil", "playOnceSlowSound fail " + e.getMessage());
            }
        }
    }

    public static void Rg(C0329e c0329e, PreviewCallback previewCallback) {
        c0329e.Ts().abE(previewCallback, c0329e.SQ());
        for (int i = 0; i < 2; i++) {
            c0329e.Tr().IK(new byte[C0453h.Re(c0329e)]);
        }
    }

    public static int Re(C0329e c0329e) {
        Size Gv = c0329e.Tn().Gv();
        return ((Gv.height * Gv.width) * 3) / 2;
    }

    private static SharedPreferences Rh(C0329e c0329e) {
        return c0329e.SS();
    }
}
