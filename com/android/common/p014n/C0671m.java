package com.android.common.p014n;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.CameraMember;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.setting.ListPreference;
import com.android.common.setting.RecordLocationPreference;
import com.p010a.C0090a;

class C0671m implements OnItemClickListener {
    final /* synthetic */ C0117j acZ;

    private C0671m(C0117j c0117j) {
        this.acZ = c0117j;
    }

    public void onItemClick(AdapterView adapterView, View view, int i, long j) {
        if (this.acZ.alq() != UIState.SETTING) {
            C0090a.bvo("AbstractFamilyMemberFragment", "SecondSettingItemClick getUIState() = " + this.acZ.alq().toString());
            return;
        }
        String[] akh = this.acZ.acF;
        if (this.acZ.ajD(akh[i])) {
            if (this.acZ.acI != null) {
                this.acZ.acI.cancel();
            }
            ListPreference tp = this.acZ.adA.SR().tp(akh[i]);
            tp.uY((tp.vc() + 1) % tp.vb().length);
            if (this.acZ.acl != null) {
                this.acZ.acl.notifyDataSetChanged();
            }
            if (akh[i].equals("pref_camera_ae_bracket_hdr_key") || akh[i].equals("pref_third_arith_hdr_key")) {
                if (this.acZ.adA.SP() == CameraMember.NORMAL && !this.acZ.adA.TC() && C0421M.dC().dD().ck()) {
                    if (!"off".equals(this.acZ.als().getString("pref_live_photo_key", "off"))) {
                        this.acZ.alv().tp("pref_live_photo_key").va("off");
                        this.acZ.Sl();
                    }
                }
                this.acZ.ajg();
                C0616j.apa(this.acZ.getActivity(), "HDR", tp.tw());
            } else if (akh[i].equals("pref_video_sensor_hdr_key")) {
                this.acZ.ajN();
            } else if (akh[i].equals("pref_camera_interval_switch")) {
                if (!this.acZ.adA.SY().ty()) {
                    if (!"off".equals(this.acZ.als().getString("pref_camera_delay_shoot_key", "off"))) {
                        this.acZ.adA.SR().tp("pref_camera_delay_shoot_key").va("off");
                    }
                }
                this.acZ.RG();
                this.acZ.So();
                this.acZ.Sn();
                this.acZ.Sp();
                C0616j.apa(this.acZ.getActivity(), "INTERVAL", tp.tw());
            } else if (akh[i].equals("pref_capture_focus_key")) {
                C0616j.apa(this.acZ.getActivity(), "CAPTURE_FOCUS", tp.tw());
            } else if (akh[i].equals("pref_camera_grid_key")) {
                this.acZ.acA = true;
                C0616j.apa(this.acZ.getActivity(), "GRID", tp.tw());
            } else if (akh[i].equals("pref_camera_facedetection_key")) {
                C0616j.apa(this.acZ.getActivity(), "FACE", tp.tw());
            } else if (akh[i].equals("pref_camera_shutter_sound_key")) {
                C0616j.apa(this.acZ.getActivity(), "SOUND", tp.tw());
            } else if (akh[i].equals("pref_camera_gradienter_key")) {
                C0616j.apa(this.acZ.getActivity(), "GRADIENTER", tp.tw());
            } else if (akh[i].equals("pref_camera_picture_ratio_key")) {
                C0616j.apa(this.acZ.getActivity(), "RATIO", tp.tw());
            }
            if (akh[i].equals("pref_camera_recordlocation_key") && !this.acZ.ajA() && RecordLocationPreference.tv(this.acZ.als(), null)) {
                this.acZ.ajL();
            } else {
                this.acZ.adA.Tz().sendEmptyMessage(60);
            }
            return;
        }
        C0090a.bvo("AbstractFamilyMemberFragment", "SecondSettingItemClickListener " + akh[i] + "onItemClick: NOT USEFUL");
        if (this.acZ.acI == null) {
            this.acZ.acI = Toast.makeText(this.acZ.getActivity(), this.acZ.getString(R.string.unavailable_in_current_mode), 0);
            this.acZ.acI.setGravity(17, 0, this.acZ.getResources().getDimensionPixelSize(R.dimen.dimens_160));
        }
        this.acZ.acI.show();
    }
}
