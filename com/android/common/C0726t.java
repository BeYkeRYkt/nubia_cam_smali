package com.android.common;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.ui.ag;
import com.p010a.C0090a;

public class C0726t {
    private String TAG = "IntervalometerManager";
    private C0727u aik = null;
    private Context ail = null;
    private TextView aim = null;
    private SeekBar ain = null;
    private LinearLayout aio = null;
    private RelativeLayout aip = null;
    private TextView aiq = null;
    private TextView air = null;
    private SharedPreferences ais = null;
    private TextView ait = null;
    private C0769v aiu = new C0769v();

    public C0726t(View view, SharedPreferences sharedPreferences, C0727u c0727u) {
        C0090a.bvo(this.TAG, "IntervalometerManager");
        this.ais = sharedPreferences;
        this.aik = c0727u;
        arq(view);
    }

    public void show() {
        C0090a.bvo(this.TAG, "show");
        if (this.aip != null) {
            this.aip.setVisibility(0);
        }
    }

    public void aro() {
        C0090a.bvo(this.TAG, "hide");
        if (this.aip != null) {
            this.aip.setVisibility(8);
        }
    }

    private void arq(View view) {
        this.aip = (RelativeLayout) view.findViewById(R.id.interval_shortcut_layout);
        this.aiq = (TextView) view.findViewById(R.id.interval_shortcut_view);
        this.aiq.setOnClickListener(new C0269K(this));
        arp(view);
    }

    private void arp(View view) {
        this.air = (TextView) view.findViewById(R.id.interval_left);
        this.air.setText("0");
        this.ait = (TextView) view.findViewById(R.id.interval_right);
        this.ait.setText("60S");
        Object string = this.ais.getString("pref_camera_interval_pro", "0");
        this.aim = (TextView) view.findViewById(R.id.interval_process);
        this.aim.setText(string);
        this.ain = (SeekBar) view.findViewById(R.id.interval_seek_bar);
        this.ain.setProgress(Integer.parseInt(string));
        this.aio = (LinearLayout) view.findViewById(R.id.interval_seekbar_layout);
        this.aio.setOnTouchListener(new ag(this.aio, this.ain, this.aiu));
        this.ain.setOnSeekBarChangeListener(this.aiu);
    }
}
