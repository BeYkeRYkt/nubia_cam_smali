package com.android.common.p014n;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.animation.PathInterpolator;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.appService.C0329e;
import com.android.common.appService.C0349y;
import com.android.common.setting.ListPreference;
import com.android.common.setting.RecordLocationPreference;
import com.android.common.ui.C0737M;
import com.android.common.ui.InterruptedRelativeLayout;
import com.p010a.C0090a;

public class C0672n extends C0111p {
    private static String TAG = "MoreSettingsFragment";
    private ImageView ada = null;
    private TextView adb = null;
    private TextView adc = null;
    private RelativeLayout add = null;
    private ObjectAnimator ade = null;
    private String adf = null;
    private LinearLayout adg = null;
    private C0673o adh = null;
    private ListView adi = null;
    private ObjectAnimator adj = null;
    private C0737M adk = null;
    private boolean adl = false;
    private boolean adm = false;
    private boolean adn = false;
    private InterruptedRelativeLayout ado = null;
    private ListView adp = null;
    private C0349y adq = null;
    private C0672n adr = null;
    private TextView ads = null;
    private Toast adt = null;
    private String[] adu = null;
    private View adv = null;

    public C0672n(int i) {
        super(i);
    }

    public static C0672n akI() {
        return new C0672n(1);
    }

    public boolean onBackPressed() {
        if (this.add == null || this.add.getVisibility() != 0) {
            return false;
        }
        akO();
        return true;
    }

    public void akK(boolean z) {
        this.adn = z;
    }

    public void akL(boolean z) {
        this.adm = z;
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        if (this.adB) {
            return null;
        }
        C0090a.m0d(TAG, "onCreateView");
        this.adv = layoutInflater.inflate(R.layout.more_settings_layout, viewGroup, false);
        akQ(this.adv);
        return this.adv;
    }

    private void akP() {
        this.adu = C0616j.apC(this.adA.SR());
        this.adq = new C0349y(getActivity(), this.adA, this.adu, this);
        this.adp = (ListView) this.adv.findViewById(R.id.more_settings_list);
        this.adp.setAdapter(this.adq);
        this.adp.setSelector(R.drawable.more_setting_bottom_expanding_without_corner);
        this.adp.setOnItemClickListener(new C0641E(this));
    }

    public void ahM() {
        C0090a.bvo(TAG, "initAfterCameraOpen");
        akP();
    }

    public void onResume() {
        if (this.adB) {
            super.onResume();
            return;
        }
        C0090a.m0d(TAG, "onResume");
        super.onResume();
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
            C0090a.m0d(TAG, "onPause");
            akO();
            akN();
            if (this.adt != null) {
                this.adt.cancel();
                this.adt = null;
            }
        }
    }

    public void akN() {
        if (this.adk != null) {
            this.adk.pK();
        }
    }

    public void akJ(C0329e c0329e) {
        this.adA = c0329e;
    }

    private void akR(String str) {
        this.adh = new C0673o(this, this.adA.SR().tp(str));
        this.adi.setAdapter(this.adh);
        this.adi.setSelector(R.drawable.more_setting_bottom_expanding_without_corner);
        this.adg.measure(MeasureSpec.makeMeasureSpec(0, Integer.MIN_VALUE), MeasureSpec.makeMeasureSpec(536870911, Integer.MIN_VALUE));
        C0090a.m0d(TAG, "mExpandLayout.getHeight()=" + this.adg.getMeasuredHeight());
        this.adj = ObjectAnimator.ofFloat(this.adg, "translationY", new float[]{(float) this.adg.getMeasuredHeight(), 0.0f});
        this.adj.addUpdateListener(new C0642F(this));
        this.adj.addListener(new C0643G(this));
        this.adj.setDuration(300);
        this.adj.setInterpolator(new PathInterpolator(0.215f, 0.61f, 0.355f, 1.0f));
        this.adj.start();
    }

    private void akO() {
        C0090a.bvo(TAG, "hideExpandListView");
        if (this.add != null && this.adi != null) {
            this.adh = null;
            this.adi.setAdapter(null);
            this.ade = ObjectAnimator.ofFloat(this.adg, "translationY", new float[]{0.0f, (float) this.adg.getHeight()});
            this.ade.addUpdateListener(new C0644H(this));
            this.ade.addListener(new C0645I(this));
            this.ade.setDuration(250);
            this.ade.start();
        }
    }

    private void akQ(View view) {
        this.ado = (InterruptedRelativeLayout) view.findViewById(R.id.more_settings_layout);
        this.ado.setOnTouchListener(new C0646J(this));
        this.ado.lk(new C0648K(this));
        if (!this.adn) {
            akP();
        }
        OnClickListener c0649l = new C0649L(this);
        OnTouchListener c0650m = new C0650M(this);
        this.adb = (TextView) view.findViewById(R.id.camera_setting_txt);
        this.adb.setOnClickListener(c0649l);
        this.adb.setOnTouchListener(c0650m);
        this.ada = (ImageView) view.findViewById(R.id.camera_settings_arraw);
        this.ada.setOnClickListener(c0649l);
        this.ada.setOnTouchListener(c0650m);
        this.ads = (TextView) view.findViewById(R.id.restore_txt);
        this.ads.setOnClickListener(new C0651N(this));
        this.add = (RelativeLayout) view.findViewById(R.id.expand_dialog_layout);
        this.add.setOnTouchListener(new C0652O(this));
        this.adi = (ListView) view.findViewById(R.id.expand_list);
        this.adi.setOnItemClickListener(new C0653P(this));
        this.adc = (TextView) view.findViewById(R.id.cancel_btn);
        this.adc.setOnClickListener(new C0654Q(this));
        this.adg = (LinearLayout) view.findViewById(R.id.expand_layout);
        this.adk = new C0737M(this.adA, this.adq);
    }

    public void akH() {
        if (getActivity().checkSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0) {
            C0090a.bvo(TAG, "Request Location permission");
            requestPermissions(new String[]{"android.permission.ACCESS_COARSE_LOCATION"}, 1);
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        switch (i) {
            case 1:
                ListPreference tp = this.adA.SR().tp("pref_camera_recordlocation_key");
                if (iArr.length <= 0 || iArr[0] != 0) {
                    tp.va("off");
                    C0090a.bvj(TAG, "Location permission is denied");
                } else {
                    tp.va("on");
                    C0090a.bvo(TAG, "Location permission is granted");
                }
                this.adA.Tq().agf(RecordLocationPreference.tv(this.adA.SS(), null));
                notifyDataSetChanged();
                return;
            default:
                return;
        }
    }

    public void notifyDataSetChanged() {
        if (this.adq != null) {
            this.adq.notifyDataSetChanged();
        }
        this.adu = C0616j.apC(this.adA.SR());
    }

    public void onHiddenChanged(boolean z) {
        super.onHiddenChanged(z);
        C0090a.m0d(TAG, "onHiddenChanged " + z);
        if (this.adt != null) {
            this.adt.cancel();
        }
    }

    public Animator onCreateAnimator(int i, boolean z, int i2) {
        C0090a.m0d(TAG, "onCreateAnimator");
        if (i2 == 0) {
            C0090a.bvo(TAG, "transit " + i + " enter " + z + " nextAnim " + i2);
            return super.onCreateAnimator(i, z, i2);
        }
        Animator loadAnimator = AnimatorInflater.loadAnimator(getActivity(), i2);
        loadAnimator.addListener(new C0655R(this));
        return loadAnimator;
    }

    public boolean akM() {
        return this.adl;
    }
}
