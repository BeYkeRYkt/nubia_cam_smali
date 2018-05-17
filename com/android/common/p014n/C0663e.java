package com.android.common.p014n;

import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.camera.R;
import com.android.common.ui.C0730q;
import com.android.common.ui.RotateTextView;
import com.android.common.ui.ah;
import java.util.ArrayList;
import java.util.List;

class C0663e extends BaseAdapter {
    private List abB;
    final /* synthetic */ C0659a abC;

    private List aiD(List list) {
        List arrayList = new ArrayList();
        for (C0730q c0730q : list) {
            if (!(c0730q instanceof ah) || ((ah) c0730q).rQ() != 0) {
                arrayList.add(c0730q);
            }
        }
        return arrayList;
    }

    public C0663e(C0659a c0659a, List list) {
        this.abC = c0659a;
        this.abB = aiD(list);
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        C0664f c0664f;
        if (view == null) {
            view = this.abC.getActivity().getLayoutInflater().inflate(R.layout.highsetting_status_item, null);
            c0664f = new C0664f();
            c0664f.abD = (RotateTextView) view.findViewById(R.id.highsetting_item);
            view.setTag(c0664f);
        } else {
            c0664f = (C0664f) view.getTag();
        }
        int size = (this.abC.abe.size() - 1) - i;
        c0664f.abD.setText(((C0730q) this.abC.abe.get(size)).kn());
        c0664f.abD.setCompoundDrawablesWithIntrinsicBounds(null, this.abC.getResources().getDrawable(((C0730q) this.abC.abe.get(size)).kl()), null, null);
        return view;
    }

    public int getCount() {
        return this.abB.size();
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }
}
