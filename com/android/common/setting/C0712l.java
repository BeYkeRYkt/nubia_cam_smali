package com.android.common.setting;

import android.content.Context;
import android.hardware.Camera.CameraInfo;
import android.hardware.Camera.Size;
import android.util.FloatMath;
import android.util.SparseArray;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.CameraMember;
import com.android.common.cameradevice.C0086j;
import com.android.common.cameradevice.C0379e;
import com.android.common.cameradevice.C0384o;
import com.android.common.custom.C0405a;
import com.android.common.custom.C0421M;
import com.android.common.independentutil.IndependenceUtil;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

public class C0712l {
    private CameraInfo[] zI;
    private Context zJ = null;
    private SparseArray zK = new SparseArray();
    private C0713o zL = null;
    private ArrayList zM;

    public C0712l(Context context, ArrayList arrayList) {
        this.zJ = context;
        this.zL = new C0713o(this.zJ);
        this.zI = C0384o.Jr().Ju();
        this.zM = arrayList;
    }

    private void vw(int i, CameraMember cameraMember, C0710j c0710j) {
        C0086j Jz = C0384o.Jr().Jz(i);
        if (this.zM != null && this.zM.size() >= 1 && Jz != null) {
            PreferenceGroup preferenceGroup = (PreferenceGroup) this.zL.xw(((Integer) this.zM.get(0)).intValue(), c0710j);
            for (int i2 = 1; i2 < this.zM.size(); i2++) {
                PreferenceGroup preferenceGroup2 = (PreferenceGroup) this.zL.xw(((Integer) this.zM.get(i2)).intValue(), c0710j);
                for (int i3 = 0; i3 < preferenceGroup2.tu(); i3++) {
                    preferenceGroup.tq(preferenceGroup2.tr(i3));
                }
            }
            this.zK.put(i, preferenceGroup);
            vE(preferenceGroup, Jz, i);
        }
    }

    public void vq(int i, CameraMember cameraMember, C0710j c0710j) {
        PreferenceGroup preferenceGroup = (PreferenceGroup) this.zK.get(i);
        if (preferenceGroup == null) {
            vw(i, cameraMember, c0710j);
        } else {
            preferenceGroup.ts();
        }
    }

    public void vs(int i) {
        PreferenceGroup preferenceGroup = (PreferenceGroup) this.zK.get(i);
        if (preferenceGroup != null) {
            preferenceGroup.ts();
        } else {
            C0090a.bvo("CameraSettings", "restore error. preferencegroup is null");
        }
    }

    public PreferenceGroup vr(int i) {
        return (PreferenceGroup) this.zK.get(i);
    }

    private void vE(PreferenceGroup preferenceGroup, C0086j c0086j, int i) {
        ListPreference tp = preferenceGroup.tp("pref_video_quality_key");
        ListPreference tp2 = preferenceGroup.tp("pref_front_video_quality_key");
        ListPreference tp3 = preferenceGroup.tp("pref_video_slomo_quality_key");
        ListPreference tp4 = preferenceGroup.tp("pref_camera_picturesize_key");
        ListPreference tp5 = preferenceGroup.tp("pref_camera_whitebalance_key");
        ListPreference tp6 = preferenceGroup.tp("pref_camera_scenemode_key");
        ListPreference tp7 = preferenceGroup.tp("pref_camera_flashmode_key");
        ListPreference tp8 = preferenceGroup.tp("pref_camera_focusmode_key");
        ListPreference tp9 = preferenceGroup.tp("pref_camera_exposure_key");
        ListPreference tp10 = preferenceGroup.tp("pref_camera_video_flashmode_key");
        ListPreference tp11 = preferenceGroup.tp("pref_camera_pictureformat_key");
        ListPreference tp12 = preferenceGroup.tp("pref_camera_picture_ratio_key");
        ListPreference tp13 = preferenceGroup.tp("pref_third_arith_hdr_key");
        if (tp11 != null) {
            vx(preferenceGroup, tp11, vB(c0086j));
        }
        if (tp != null) {
            vz(preferenceGroup, tp, vC(C0384o.Jr().Js()));
        }
        if (tp2 != null) {
            vx(preferenceGroup, tp2, vC(C0384o.Jr().Jt()));
        }
        if (tp3 != null) {
            vx(preferenceGroup, tp3, vA(i, c0086j, "120"));
        }
        if (tp4 != null) {
            vy(preferenceGroup, tp4, vJ(c0086j.GG()), i, c0086j);
        }
        if (tp5 != null) {
            vx(preferenceGroup, tp5, vD(c0086j));
        }
        if (tp6 != null) {
            vx(preferenceGroup, tp6, c0086j.GJ());
        }
        if (tp7 != null) {
            vx(preferenceGroup, tp7, c0086j.GB());
        }
        if (tp8 != null && c0086j.Gk() == 0) {
            vx(preferenceGroup, tp8, c0086j.GC());
        }
        if (tp10 != null) {
            vx(preferenceGroup, tp10, c0086j.GB());
        }
        if (tp9 != null) {
            vt(preferenceGroup, tp9, c0086j);
        }
        if (tp12 != null) {
            vv(preferenceGroup, tp12, c0086j, i);
        }
        if (!(tp13 == null || !C0421M.dC().dD().cT() || C0421M.dC().dD().cS())) {
            List arrayList = new ArrayList();
            arrayList.add("off");
            arrayList.add("on");
            vx(preferenceGroup, tp13, arrayList);
        }
        if (i == C0384o.Jr().Jt()) {
            vu(preferenceGroup, c0086j);
        } else {
            vH(preferenceGroup, "pref_camera_backlight_flashmode_key");
            vH(preferenceGroup, "pref_camera_front_flashmode_key");
        }
        vG(preferenceGroup, c0086j);
        vK(preferenceGroup, c0086j, i);
    }

    private void vG(PreferenceGroup preferenceGroup, C0086j c0086j) {
        ListPreference tp = preferenceGroup.tp("pref_camera_facedetection_key");
        preferenceGroup.tp("pref_camera_autoexposure_key");
        ListPreference tp2 = preferenceGroup.tp("pref_camera_antibanding_key");
        ListPreference tp3 = preferenceGroup.tp("pref_camera_iso_key");
        ListPreference tp4 = preferenceGroup.tp("pref_camera_denoise_key");
        ListPreference tp5 = preferenceGroup.tp("pref_video_denoise_key");
        preferenceGroup.tp("pref_camera_ae_bracket_hdr_key");
        preferenceGroup.tp("pref_camera_jpegquality_key");
        IconListPreference iconListPreference = (IconListPreference) preferenceGroup.tp("pref_camera_stabilization_key");
        IconListPreference iconListPreference2 = (IconListPreference) preferenceGroup.tp("pref_camera_volume_key");
        if ((IndependenceUtil.afZ || IndependenceUtil.agh) && tp3 != null) {
            vx(preferenceGroup, tp3, c0086j.HQ());
        }
        if (IndependenceUtil.afZ || IndependenceUtil.agf) {
            if (tp4 != null) {
                tp4.vg(C0421M.dC().dD().bi());
                vx(preferenceGroup, tp4, c0086j.HR());
            }
            if (tp5 != null) {
                vx(preferenceGroup, tp5, c0086j.HR());
            }
        }
        if (tp2 != null) {
            vx(preferenceGroup, tp2, c0086j.GA());
        }
        if (iconListPreference != null) {
            iconListPreference.vg(C0421M.dC().dD().bl());
        }
        if (iconListPreference2 != null) {
            iconListPreference2.vg(C0421M.dC().dD().bn());
        }
        if (tp == null) {
            return;
        }
        if (IndependenceUtil.agm || c0086j.Gj() > 0) {
            tp.vg(C0421M.dC().dD().bj());
        } else {
            vH(preferenceGroup, tp.vd());
        }
    }

    private void vK(PreferenceGroup preferenceGroup, C0086j c0086j, int i) {
        if (!IndependenceUtil.afZ) {
            ListPreference tp = preferenceGroup.tp("pref_key_capture_camera");
            ListPreference tp2 = preferenceGroup.tp("pref_camera_ae_bracket_hdr_key");
            ListPreference tp3 = preferenceGroup.tp("pref_camera_shutter_sound_key");
            ListPreference tp4 = preferenceGroup.tp("pref_camera_multishot_key");
            ListPreference tp5 = preferenceGroup.tp("pref_camera_colorfilter_key");
            ListPreference tp6 = preferenceGroup.tp("pref_fengzhi_focus_key");
            ListPreference tp7 = preferenceGroup.tp("pref_capture_focus_key");
            if (!(tp == null || IndependenceUtil.anv())) {
                vH(preferenceGroup, tp.vd());
            }
            if (tp2 != null) {
                if (!IndependenceUtil.ago) {
                    vH(preferenceGroup, tp2.vd());
                } else if (!C0616j.apT("hdr", c0086j.GJ())) {
                    vH(preferenceGroup, tp2.vd());
                }
            }
            if (tp3 != null) {
                if (!IndependenceUtil.agp) {
                    vH(preferenceGroup, tp3.vd());
                } else if (!this.zI[i].canDisableShutterSound) {
                    vH(preferenceGroup, tp3.vd());
                }
            }
            if (!(tp4 == null || (IndependenceUtil.agq && IndependenceUtil.afZ))) {
                List arrayList = new ArrayList();
                String string = this.zJ.getString(R.string.pref_camera_multishot_entryvalue_quality_priority);
                for (CharSequence charSequence : tp4.uX()) {
                    if (!string.equals(charSequence.toString())) {
                        arrayList.add(charSequence.toString());
                    }
                }
                vx(preferenceGroup, tp4, arrayList);
            }
            if (!(tp5 == null || IndependenceUtil.anq())) {
                vH(preferenceGroup, tp5.vd());
            }
            if (!(tp6 == null || IndependenceUtil.agn)) {
                vH(preferenceGroup, tp6.vd());
            }
            if (!(tp7 == null || C0421M.dC().dD().cU())) {
                vH(preferenceGroup, tp7.vd());
            }
        }
    }

    private List vB(C0086j c0086j) {
        List GF = c0086j.GF();
        if (GF == null) {
            return C0616j.aql("jpeg,raw", ",");
        }
        return GF;
    }

    private void vx(PreferenceGroup preferenceGroup, ListPreference listPreference, List list) {
        if (list == null || list.size() <= 1) {
            vH(preferenceGroup, listPreference.vd());
            return;
        }
        listPreference.uQ(list);
        if (listPreference.vb().length <= 1) {
            vH(preferenceGroup, listPreference.vd());
        } else {
            vI(listPreference);
        }
    }

    private boolean vH(PreferenceGroup preferenceGroup, String str) {
        int tu = preferenceGroup.tu();
        for (int i = 0; i < tu; i++) {
            C0702t tr = preferenceGroup.tr(i);
            if ((tr instanceof PreferenceGroup) && vH((PreferenceGroup) tr, str)) {
                return true;
            }
            if ((tr instanceof ListPreference) && ((ListPreference) tr).vd().equals(str)) {
                preferenceGroup.tt(i);
                return true;
            }
        }
        return false;
    }

    private void vI(ListPreference listPreference) {
        String tw = listPreference.tw();
        if (!C0616j.apu(tw, "manual-cct") && listPreference.uW(tw) == -1) {
            listPreference.uY(0);
        }
    }

    private ArrayList vC(int i) {
        return C0379e.FI().FH().JL(i);
    }

    private void vz(PreferenceGroup preferenceGroup, ListPreference listPreference, List list) {
        if (list == null || list.size() <= 1) {
            vH(preferenceGroup, listPreference.vd());
            return;
        }
        int i;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int length = listPreference.uX().length;
        for (i = 0; i < length; i++) {
            Object charSequence = listPreference.uX()[i].toString();
            if (C0421M.dC().dD().bB() && charSequence.contains(":")) {
                String[] split = charSequence.split(":");
                charSequence = split[0];
                C0090a.bvo("CameraSettings", "fps = " + split[1] + " quality= " + split[0] + "supported");
            }
            if (list.indexOf(charSequence) >= 0) {
                arrayList.add(listPreference.vb()[i]);
                arrayList2.add(listPreference.uX()[i]);
            }
        }
        i = arrayList.size();
        listPreference.vi((CharSequence[]) arrayList.toArray(new CharSequence[i]));
        listPreference.vj((CharSequence[]) arrayList2.toArray(new CharSequence[i]));
        if (listPreference.vb().length <= 1) {
            vH(preferenceGroup, listPreference.vd());
        }
    }

    private List vA(int i, C0086j c0086j, String str) {
        return C0379e.FI().FH().JM(i, c0086j, str);
    }

    private List vJ(List list) {
        List arrayList = new ArrayList();
        for (Size size : list) {
            arrayList.add(String.format(Locale.ENGLISH, "%dx%d", new Object[]{Integer.valueOf(size.width), Integer.valueOf(size.height)}));
        }
        return arrayList;
    }

    private void vy(PreferenceGroup preferenceGroup, ListPreference listPreference, List list, int i, C0086j c0086j) {
        if (list == null || list.size() <= 1) {
            vH(preferenceGroup, listPreference.vd());
            return;
        }
        listPreference.uQ(list);
        if (listPreference.vb().length <= 1) {
            vH(preferenceGroup, listPreference.vd());
            return;
        }
        if (i == C0384o.Jr().Js()) {
            vF(preferenceGroup, listPreference, c0086j);
        }
    }

    private void vF(PreferenceGroup preferenceGroup, ListPreference listPreference, C0086j c0086j) {
        Iterable<Size> GG = c0086j.GG();
        if (GG == null) {
            C0090a.bvo("CameraSettings", "overrideDefaultPictureRatio supported == null");
            return;
        }
        double d = 0.0d;
        Size size = (Size) GG.get(0);
        Size size2 = size;
        for (Size size3 : GG) {
            double d2 = (double) (size3.height * size3.width);
            if (d2 > d) {
                d = d2;
            } else {
                size3 = size2;
            }
            size2 = size3;
        }
        C0090a.bvo("CameraSettings", "maxPictureSize = " + size2.width + "x" + size2.height);
        double d3 = ((double) size2.width) / ((double) size2.height);
        if (Math.abs(d3 - 1.3333333333333333d) < 0.10000000149011612d) {
            C0090a.bvo("CameraSettings", "picture ratio default 4:3");
            preferenceGroup.tp("pref_camera_picture_ratio_key").vg("4:3");
        } else if (Math.abs(d3 - 1.7777777777777777d) < 0.10000000149011612d) {
            C0090a.bvo("CameraSettings", "picture ratio default 16:9");
            preferenceGroup.tp("pref_camera_picture_ratio_key").vg("16:9");
        } else {
            C0090a.bvo("CameraSettings", "picture ratio default 1:1");
            preferenceGroup.tp("pref_camera_picture_ratio_key").vg("1:1");
        }
    }

    private List vD(C0086j c0086j) {
        List GL = c0086j.GL();
        C0405a dD = C0421M.dC().dD();
        if (dD.cl()) {
            GL.add("manual-cct");
        }
        if (dD.cm()) {
            GL.add("measure");
        }
        if (dD.cD()) {
            GL.add("point-measure");
        }
        return GL;
    }

    private void vt(PreferenceGroup preferenceGroup, ListPreference listPreference, C0086j c0086j) {
        int Gi = c0086j.Gi();
        int Gn = c0086j.Gn();
        if (Gi == 0 && Gn == 0) {
            vH(preferenceGroup, listPreference.vd());
            return;
        }
        float Gb = c0086j.Gb();
        int floor = (int) FloatMath.floor(((float) Gi) * Gb);
        Gi = (int) FloatMath.ceil(((float) Gn) * Gb);
        CharSequence[] charSequenceArr = new CharSequence[((floor - Gi) + 1)];
        CharSequence[] charSequenceArr2 = new CharSequence[((floor - Gi) + 1)];
        while (Gi <= floor) {
            charSequenceArr2[floor + Gi] = Integer.toString(Math.round(((float) Gi) / Gb));
            StringBuilder stringBuilder = new StringBuilder();
            if (Gi > 0) {
                stringBuilder.append('+');
            }
            charSequenceArr[floor + Gi] = stringBuilder.append(Gi).toString();
            Gi++;
        }
        listPreference.vi(charSequenceArr);
        listPreference.vj(charSequenceArr2);
    }

    private void vv(PreferenceGroup preferenceGroup, ListPreference listPreference, C0086j c0086j, int i) {
        if (listPreference != null && i == C0384o.Jr().Js()) {
            Object obj;
            for (Size size : c0086j.GG()) {
                if (((double) Math.abs((((float) size.width) / ((float) size.height)) - 1.0f)) < 0.10000000149011612d) {
                    obj = 1;
                    break;
                }
            }
            obj = null;
            if (obj == null) {
                List arrayList = new ArrayList();
                arrayList.add("16:9");
                arrayList.add("4:3");
                vx(preferenceGroup, listPreference, arrayList);
            }
        }
    }

    private void vu(PreferenceGroup preferenceGroup, C0086j c0086j) {
        ListPreference tp = preferenceGroup.tp("pref_camera_front_flashmode_key");
        if (tp != null) {
            vx(preferenceGroup, tp, c0086j.GB());
        }
        tp = preferenceGroup.tp("pref_camera_backlight_flashmode_key");
        if (tp != null) {
            vx(preferenceGroup, tp, c0086j.GE());
        }
    }
}
