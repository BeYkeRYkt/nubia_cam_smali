package com.android.common.appService;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.custom.C0421M;
import com.android.common.p014n.C0672n;
import com.android.common.setting.ListPreference;
import com.android.common.setting.RecordLocationPreference;
import com.android.common.ui.C0348Q;
import com.android.common.ui.SettingsExpandHeader;
import com.android.common.ui.SettingsHeader;
import com.android.common.ui.ZtemtInlineSettingSwitch;
import com.p010a.C0090a;

public class C0349y extends BaseAdapter implements C0348Q {
    private static String TAG = "MoreSettingsAdapter";
    private C0329e RF = null;
    private LayoutInflater RG = null;
    private C0672n RH = null;
    private String[] RI;

    public C0349y(Context context, C0329e c0329e, String[] strArr, C0672n c0672n) {
        this.RI = strArr;
        this.RG = LayoutInflater.from(context);
        this.RF = c0329e;
        this.RH = c0672n;
    }

    public int getCount() {
        return this.RI.length;
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public static boolean ZT(String str) {
        return ("pref_camera_recordlocation_key".equals(str) || "pref_shutter_key_into_camera_key".equals(str) || "pref_key_capture_camera".equals(str) || "pref_camera_interval_switch".equals(str) || "pref_snapshot_mirror_key".equals(str) || "pref_water_mark_key".equals(str) || "pref_water_mark_time_key".equals(str) || "pref_capture_focus_key".equals(str) || "pref_fengzhi_focus_key".equals(str) || "pref_camrea_fingerprint_shutter_key".equals(str) || "pref_camera_front_smile_shoot".equals(str) || "pref_camera_facedetection_key".equals(str) || "pref_live_photo_key".equals(str) || "pref_camera_best_photo_key".equals(str) || "pref_camera_shutter_sound_key".equals(str) || "pref_camera_gradienter_key".equals(str) || "pref_intelligent_noise_reduction_key".equals(str) || "pref_zoom_function_key".equals(str) || "pref_fusion_key".equals(str) || "pref_thirdparty_vid_pretty_switch_key".equals(str) || "pref_eis_key".equals(str) || "pref_bokeh_level_adjustable".equals(str) || "pref_refocus_after_capture".equals(str)) ? true : "pref_intelligent_power_saving".equals(str);
    }

    public static boolean ZQ(String str) {
        if ("pref_video_quality_key".equals(str) || "pref_front_video_quality_key".equals(str) || "pref_camera_storage_path".equals(str)) {
            return true;
        }
        return "pref_picture_artist_info".equals(str);
    }

    public static boolean ZS(String str) {
        if ("more_setting_basic".equals(str)) {
            return true;
        }
        return "more_setting_high".equals(str);
    }

    private int ZP(String str) {
        if (C0349y.ZQ(str)) {
            return R.layout.setting_expand_header;
        }
        if (C0349y.ZT(str)) {
            return R.layout.ztemt_setting_switch_header;
        }
        return R.layout.setting_header;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        String str = this.RI[i];
        C0090a.bvo(TAG, "key:" + str);
        ListPreference ZN = ZN(str);
        if (ZN == null) {
            return null;
        }
        View view2;
        if (view != null) {
            if (C0349y.ZS(str)) {
                if (!(view instanceof SettingsHeader)) {
                    view2 = null;
                    if (view2 == null) {
                        view2 = this.RG.inflate(ZP(str), null);
                    }
                    if (!C0349y.ZS(str)) {
                        ((SettingsHeader) view2).rq(ZN);
                        if (str.equals("more_setting_high")) {
                            ((SettingsHeader) view2).rr();
                        }
                        view2.setClickable(false);
                        view2.setOnTouchListener(new as(this));
                    } else if (!C0349y.ZQ(str)) {
                        ((SettingsExpandHeader) view2).qh(ZN);
                    } else if (C0349y.ZT(str)) {
                        ((SettingsHeader) view2).rq(ZN);
                    } else {
                        if ("pref_camera_recordlocation_key".equals(str) && !ZR()) {
                            ZN.va("off");
                        }
                        ((ZtemtInlineSettingSwitch) view2).qi(ZN);
                        ((ZtemtInlineSettingSwitch) view2).qj(this);
                    }
                    return view2;
                }
            } else if (C0349y.ZQ(str)) {
                if (!(view instanceof SettingsExpandHeader)) {
                    view2 = null;
                    if (view2 == null) {
                        view2 = this.RG.inflate(ZP(str), null);
                    }
                    if (!C0349y.ZS(str)) {
                        ((SettingsHeader) view2).rq(ZN);
                        if (str.equals("more_setting_high")) {
                            ((SettingsHeader) view2).rr();
                        }
                        view2.setClickable(false);
                        view2.setOnTouchListener(new as(this));
                    } else if (!C0349y.ZQ(str)) {
                        ((SettingsExpandHeader) view2).qh(ZN);
                    } else if (C0349y.ZT(str)) {
                        ((SettingsHeader) view2).rq(ZN);
                    } else {
                        ZN.va("off");
                        ((ZtemtInlineSettingSwitch) view2).qi(ZN);
                        ((ZtemtInlineSettingSwitch) view2).qj(this);
                    }
                    return view2;
                }
            } else if (C0349y.ZT(str) && !(view instanceof ZtemtInlineSettingSwitch)) {
                view2 = null;
                if (view2 == null) {
                    view2 = this.RG.inflate(ZP(str), null);
                }
                if (!C0349y.ZS(str)) {
                    ((SettingsHeader) view2).rq(ZN);
                    if (str.equals("more_setting_high")) {
                        ((SettingsHeader) view2).rr();
                    }
                    view2.setClickable(false);
                    view2.setOnTouchListener(new as(this));
                } else if (!C0349y.ZQ(str)) {
                    ((SettingsExpandHeader) view2).qh(ZN);
                } else if (C0349y.ZT(str)) {
                    ZN.va("off");
                    ((ZtemtInlineSettingSwitch) view2).qi(ZN);
                    ((ZtemtInlineSettingSwitch) view2).qj(this);
                } else {
                    ((SettingsHeader) view2).rq(ZN);
                }
                return view2;
            }
        }
        view2 = view;
        if (view2 == null) {
            view2 = this.RG.inflate(ZP(str), null);
        }
        if (!C0349y.ZS(str)) {
            ((SettingsHeader) view2).rq(ZN);
            if (str.equals("more_setting_high")) {
                ((SettingsHeader) view2).rr();
            }
            view2.setClickable(false);
            view2.setOnTouchListener(new as(this));
        } else if (!C0349y.ZQ(str)) {
            ((SettingsExpandHeader) view2).qh(ZN);
        } else if (C0349y.ZT(str)) {
            ((SettingsHeader) view2).rq(ZN);
        } else {
            ZN.va("off");
            ((ZtemtInlineSettingSwitch) view2).qi(ZN);
            ((ZtemtInlineSettingSwitch) view2).qj(this);
        }
        return view2;
    }

    private ListPreference ZN(String str) {
        if (this.RF.SR() == null) {
            return null;
        }
        return this.RF.SR().tp(str);
    }

    public void qn(String str) {
        if (str.equals("pref_snapshot_mirror_key") || str.equals("pref_camera_best_photo_key") || str.equals("pref_camera_facedetection_key") || str.equals("pref_camera_front_smile_shoot")) {
            this.RF.Tz().sendEmptyMessage(60);
        } else if (str.equals("pref_thirdparty_vid_pretty_switch_key")) {
            this.RF.WG();
            this.RF.Tr().IQ(this.RF.Tn());
        } else if (str.equals("pref_camera_interval_switch")) {
            if (!this.RF.SY().ty()) {
                if (!this.RF.TC()) {
                    this.RF.SU().Rq();
                }
                if (!"off".equals(ZO().getString("pref_camera_delay_shoot_key", "off"))) {
                    this.RF.SR().tp("pref_camera_delay_shoot_key").va("off");
                }
            }
            this.RF.SU().RG();
            this.RF.SU().Sa();
            this.RF.SU().Sn();
            this.RF.SU().Sp();
            this.RF.Tz().sendEmptyMessage(60);
        } else if (!str.equals("pref_camrea_fingerprint_shutter_key") || !C0421M.dC().dD().bV()) {
            if (str.equals("pref_key_capture_camera")) {
                this.RF.Xj();
            } else if (str.equals("pref_camera_recordlocation_key")) {
                boolean tv = RecordLocationPreference.tv(ZO(), null);
                if (!tv || ZR()) {
                    this.RF.Tq().agf(tv);
                } else {
                    this.RH.akH();
                }
            } else if (str.equals("pref_live_photo_key")) {
                this.RF.SU().RY();
            } else if (str.equals("pref_intelligent_power_saving")) {
                C0090a.bvo(TAG, "Power saving change:" + ZO().getString("pref_intelligent_power_saving", this.RF.Tb(R.string.pref_intelligent_power_saving_default)));
                this.RF.SM().onUserInteraction();
            }
        }
    }

    private SharedPreferences ZO() {
        return this.RF.SS();
    }

    public void notifyDataSetChanged() {
        C0090a.bvo(TAG, "notifyDataSetChanged");
        this.RI = C0616j.apC(this.RF.SR());
        super.notifyDataSetChanged();
    }

    private boolean ZR() {
        return this.RF.SN().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
    }
}
