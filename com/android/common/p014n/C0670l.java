package com.android.common.p014n;

import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.android.camera.R;
import com.android.common.camerastate.UIState;
import com.android.common.custom.C0421M;
import com.android.common.setting.IconListPreference;
import com.android.common.setting.ListPreference;
import com.android.common.ui.RotateTextView;
import com.p010a.C0090a;

class C0670l extends BaseAdapter {
    boolean acX = false;
    final /* synthetic */ C0117j acY;

    public C0670l(C0117j c0117j) {
        this.acY = c0117j;
        c0117j.acF = C0421M.dC().dD().bx();
    }

    public int getCount() {
        return this.acY.acF.length;
    }

    public Object getItem(int i) {
        return Integer.valueOf(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (view == null) {
            view = this.acY.getActivity().getLayoutInflater().inflate(R.layout.second_setting_item, null);
        }
        C0090a.bvo("AbstractFamilyMemberFragment", "parent.getChildCount(), position = " + viewGroup.getChildCount() + " " + i + "; key: " + this.acY.acF[i]);
        RotateTextView rotateTextView = (RotateTextView) view.findViewById(R.id.second_setting_item);
        ListPreference tp = this.acY.adA.SR().tp(this.acY.acF[i]);
        if (tp == null) {
            return view;
        }
        rotateTextView.setText(tp.zq());
        if (tp instanceof IconListPreference) {
            int[] uP;
            if ("pref_camera_recordlocation_key".equals(this.acY.acF[i]) && !this.acY.ajA()) {
                tp.va("off");
            }
            boolean aku = this.acY.ajD(this.acY.acF[i]);
            if (aku) {
                uP = ((IconListPreference) tp).uP();
                rotateTextView.setTextColor(Color.argb(137, 255, 255, 255));
            } else {
                uP = ((IconListPreference) tp).uT();
                rotateTextView.setTextColor(Color.argb(66, 255, 255, 255));
            }
            int vc = tp.vc();
            if (vc < uP.length && vc >= 0) {
                rotateTextView.setCompoundDrawablesWithIntrinsicBounds(null, this.acY.getResources().getDrawable(uP[tp.vc()]), null, null);
            } else if (aku) {
                throw new ArrayIndexOutOfBoundsException("key:" + this.acY.acF[i] + "; selectIn: " + vc);
            } else {
                rotateTextView.setCompoundDrawablesWithIntrinsicBounds(null, this.acY.getResources().getDrawable(uP[0]), null, null);
            }
        }
        rotateTextView.fc(this.acY.adA.To(), this.acX);
        rotateTextView.setHeight(this.acY.getResources().getDimensionPixelSize(R.dimen.dimens_99));
        return view;
    }

    private void akF(int i, boolean z) {
        if (this.acY.alq() == UIState.SETTING) {
            this.acX = z;
        } else {
            this.acX = false;
        }
        if (this.acY.acl != null) {
            this.acY.acl.notifyDataSetChanged();
        }
    }
}
