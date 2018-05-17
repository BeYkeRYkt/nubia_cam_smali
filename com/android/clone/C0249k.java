package com.android.clone;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.camera.R;

public class C0249k {
    private Context aoA = null;
    private ImageView aoB = null;
    private LinearLayout aoC = null;
    private TextView aoD = null;
    private ImageView aox = null;
    private LinearLayout aoy = null;
    private TextView aoz = null;

    public C0249k(View view, Context context) {
        this.aoA = context;
        this.aoC = (LinearLayout) view.findViewById(R.id.draw_button);
        this.aoB = (ImageView) view.findViewById(R.id.draw_button_icon);
        this.aoD = (TextView) view.findViewById(R.id.draw_button_text);
        this.aoy = (LinearLayout) view.findViewById(R.id.clean_button);
        this.aox = (ImageView) view.findViewById(R.id.clean_button_icon);
        this.aoz = (TextView) view.findViewById(R.id.clean_button_text);
        aAu();
    }

    public void aAv(OnClickListener onClickListener) {
        this.aoC.setOnClickListener(onClickListener);
        this.aoy.setOnClickListener(onClickListener);
    }

    public void aAu() {
        this.aoC.setBackgroundResource(R.drawable.clone_make_bg_press);
        this.aoB.setImageResource(R.drawable.clone_draw_press);
        this.aoD.setTextColor(this.aoA.getResources().getColor(R.color.clone_edit_text_color_pressed));
        this.aoy.setBackgroundResource(R.drawable.clone_make_bg_no_press);
        this.aox.setImageResource(R.drawable.clone_clean_no_press);
        this.aoz.setTextColor(this.aoA.getResources().getColor(R.color.clone_edit_text_color_no_pressed));
        aAw(true);
    }

    public void aAt() {
        this.aoC.setBackgroundResource(R.drawable.clone_make_bg_no_press);
        this.aoB.setImageResource(R.drawable.clone_draw_no_press);
        this.aoD.setTextColor(this.aoA.getResources().getColor(R.color.clone_edit_text_color_no_pressed));
        this.aoy.setBackgroundResource(R.drawable.clone_make_bg_press);
        this.aox.setImageResource(R.drawable.clone_clean_press);
        this.aoz.setTextColor(this.aoA.getResources().getColor(R.color.clone_edit_text_color_pressed));
        aAw(true);
    }

    public void aAs() {
        this.aoC.setBackgroundResource(R.drawable.clone_make_bg_enable);
        this.aoB.setImageResource(R.drawable.clone_draw_enable);
        this.aoD.setTextColor(this.aoA.getResources().getColor(R.color.clone_edit_text_color_enabled));
        this.aoy.setBackgroundResource(R.drawable.clone_make_bg_enable);
        this.aox.setImageResource(R.drawable.clone_clean_enable);
        this.aoz.setTextColor(this.aoA.getResources().getColor(R.color.clone_edit_text_color_enabled));
        aAw(false);
    }

    private void aAw(boolean z) {
        this.aoC.setEnabled(z);
        this.aoy.setEnabled(z);
    }
}
