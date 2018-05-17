package com.android.common.p014n;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.setting.ListPreference;
import com.p010a.C0090a;

class C0673o extends BaseAdapter {
    private ImageView adw = null;
    private ListPreference adx = null;
    private TextView ady = null;
    final /* synthetic */ C0672n adz;

    public C0673o(C0672n c0672n, ListPreference listPreference) {
        this.adz = c0672n;
        this.adx = listPreference;
    }

    public int getCount() {
        return this.adx.vb().length;
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        C0090a.bvo(C0672n.TAG, "getView position :" + i + ";mPref.getEntries().length = " + this.adx.vb().length);
        if (view == null) {
            view = this.adz.getActivity().getLayoutInflater().inflate(R.layout.expand_list_item, null);
        }
        this.ady = (TextView) view.findViewById(R.id.expand_item_text);
        this.adw = (ImageView) view.findViewById(R.id.expand_item_image);
        C0090a.bvo(C0672n.TAG, "getView ,text :" + this.adx.vb()[i]);
        this.ady.setText(this.adx.vb()[i]);
        if (i == this.adx.vc()) {
            this.adw.setVisibility(0);
            this.ady.setTextColor(this.adz.getActivity().getResources().getColor(R.color.expand_list_green));
        } else {
            this.adw.setVisibility(8);
            this.ady.setTextColor(this.adz.getActivity().getResources().getColor(R.color.alpha90_black));
        }
        return view;
    }
}
