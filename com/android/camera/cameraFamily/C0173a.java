package com.android.camera.cameraFamily;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import com.android.camera.R;
import com.android.common.appService.CameraMember;
import java.lang.reflect.Array;
import java.util.Locale;

public class C0173a {
    public static final int[][] aEV;
    public static final Uri aEW = Uri.parse("content://nubia.camera.family/directory");
    private static String[][] aEX;

    static {
        r0 = new int[31][];
        r0[1] = new int[]{R.string.front_camera_title, R.string.contents_frontcamera, CameraMember.FRONT.aan()};
        r0[2] = new int[]{R.string.pro_electronic_fno_title, R.string.contents_electronicfno, CameraMember.ELETRONIC.aan()};
        r0[3] = new int[]{R.string.pro_slow_shutter_title, R.string.contents_slowshutter, CameraMember.SLOWSHUTTER.aan()};
        r0[4] = new int[]{R.string.fun_effects_title, R.string.contents_effect, CameraMember.FUNEFFECT.aan()};
        r0[5] = new int[]{R.string.intervalometer_title, R.string.contents_intervalometer, CameraMember.INTERVALOMETER.aan()};
        r0[6] = new int[]{R.string.multi_exposure_title, R.string.contents_multiexposure, CameraMember.MULTIEXPOSURE.aan()};
        r0[7] = new int[]{R.string.trajectory_title, R.string.contents_trajectory, CameraMember.TRAJECTORY.aan()};
        r0[8] = new int[]{R.string.light_painting_title, R.string.contents_lightdraw, CameraMember.LIGHTDRAW.aan()};
        r0[9] = new int[]{R.string.video_maker_title, R.string.contents_videomaker, CameraMember.VIDEOMAKER.aan()};
        r0[10] = new int[]{R.string.panorama_title, R.string.contents_panorama, CameraMember.PANORAMA.aan()};
        r0[11] = new int[]{R.string.pip_title, R.string.contents_pip, CameraMember.PIP.aan()};
        r0[12] = new int[]{R.string.object_clear_title, R.string.contents_objectclear, CameraMember.OBJECTCLEAR.aan()};
        r0[13] = new int[]{R.string.star_track_title, R.string.contents_starmode, CameraMember.STARTRACK.aan()};
        r0[14] = new int[]{R.string.pintu_title, R.string.contents_pintu, CameraMember.PINTU.aan()};
        r0[15] = new int[]{R.string.fun_super_night_title, R.string.contents_supernight, CameraMember.SUPERNIGHT.aan()};
        r0[16] = new int[]{R.string.fun_crystal_title, R.string.contents_crystal, CameraMember.CRYSTAL.aan()};
        r0[17] = new int[]{R.string.galaxy_photoing_title, R.string.contents_starcloud, CameraMember.STARCLOUD.aan()};
        r0[18] = new int[]{R.string.video_record_title, R.string.contents_video, CameraMember.VIDEO_RECORD.aan()};
        r0[19] = new int[]{R.string.video_slomo_title, R.string.contents_slomovideo, CameraMember.VIDEO_SLOMO.aan()};
        r0[20] = new int[]{R.string.demister, R.string.contents_demister, CameraMember.DEMISTER.aan()};
        r0[21] = new int[]{R.string.dng_title, R.string.contents_dng, CameraMember.DNG.aan()};
        r0[22] = new int[]{R.string.clone_title, R.string.contents_clone, CameraMember.CLONE.aan()};
        r0[23] = new int[]{R.string.mono_title, R.string.contents_mono, CameraMember.MONO.aan()};
        r0[24] = new int[]{R.string.microspur_title, R.string.contents_microspur, CameraMember.MICROSPUR.aan()};
        r0[25] = new int[]{R.string.big_aperature_title, R.string.contents_bigApertrue, CameraMember.BIG_APERTURE.aan()};
        r0[26] = new int[]{R.string.vr_title, R.string.contents_vr, CameraMember.VR_CAMERA.aan()};
        r0[27] = new int[]{R.string.portrait_title, R.string.contents_portraitcamera, CameraMember.PRETTYCAMERA.aan()};
        r0[28] = new int[]{R.string.triaxial_title, R.string.contents_triaxial, CameraMember.TRIAXIAL.aan()};
        r0[29] = new int[]{R.string.zoomblur_title, R.string.contents_zoomblur, CameraMember.ZOOMBLUR.aan()};
        r0[30] = new int[]{R.string.photo3d_title, R.string.contents_photo3d, CameraMember.PHOTO3D.aan()};
        aEV = r0;
    }

    public static Cursor aUf(Context context) {
        Cursor matrixCursor = new MatrixCursor(new String[]{"photo_album", "album_path_en", "album_path_zh", "album_member"});
        C0173a.aUe(context);
        for (int i = 0; i < aEV.length; i++) {
            matrixCursor.addRow(new String[]{context.getString(aEV[i][0]), aEX[i][0], aEX[i][1], "" + aEV[i][2]});
        }
        return matrixCursor;
    }

    private static void aUe(Context context) {
        if (aEX == null) {
            int i;
            Resources resources = context.getResources();
            aEX = (String[][]) Array.newInstance(String.class, new int[]{aEV.length, 2});
            Configuration configuration = new Configuration(resources.getConfiguration());
            configuration.locale = Locale.US;
            Context createConfigurationContext = context.createConfigurationContext(configuration);
            for (i = 0; i < aEV.length; i++) {
                aEX[i][0] = createConfigurationContext.getString(aEV[i][1]);
            }
            configuration.locale = Locale.PRC;
            createConfigurationContext = context.createConfigurationContext(configuration);
            for (i = 0; i < aEV.length; i++) {
                aEX[i][1] = createConfigurationContext.getString(aEV[i][1]);
            }
            String str = "/DCIM/Camera/";
            for (i = 0; i < aEV.length; i++) {
                if (aEX[i][0].equals(aEX[i][1])) {
                    aEX[i][1] = "";
                } else {
                    aEX[i][1] = str + aEX[i][1];
                }
                aEX[i][0] = str + aEX[i][0];
            }
        }
    }
}
