package com.android.common.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.GridView;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.C0616j;
import com.android.common.setting.IconListPreference;
import com.p010a.C0090a;
import java.util.ArrayList;
import java.util.HashMap;

public class ZtemtSlidingDrawer extends RelativeLayout {
    private final String TAG = "ZtemtSlidingDrawer";
    private HorizontalScrollView kF;
    private int[] kG;
    private CharSequence[] kH;
    private C0757i kI;
    private GridView kJ;
    private LinearLayout kK;
    private TextView kL;
    private ImageView kM;
    private C0758j kN;
    ArrayList kO = null;
    private ad kP;
    private boolean kQ = true;
    private int kR = -1;
    private IconListPreference kS;
    private int kT = -1;
    private SimpleAdapter kU = null;
    private boolean kV = false;
    private boolean kW = true;

    public ZtemtSlidingDrawer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void iI(C0757i c0757i) {
        this.kI = c0757i;
    }

    public void iJ(C0758j c0758j) {
        this.kN = c0758j;
    }

    protected void onDetachedFromWindow() {
        iB();
        super.onDetachedFromWindow();
    }

    public void notifyDataSetChanged() {
        if (this.kS != null) {
            this.kT = this.kS.uW(this.kS.tw());
            if (this.kT != -1) {
                this.kL.setText(this.kH[this.kT]);
                this.kU.notifyDataSetChanged();
            }
        }
    }

    private void iB() {
        if (this.kP != null) {
            this.kP.release();
            this.kP = null;
        }
    }

    public void iL(int i, boolean z) {
        this.kR = i;
        this.kV = z;
        if (this.kU != null) {
            this.kU.notifyDataSetChanged();
        }
    }

    private void iE() {
        if (this.kP == null) {
            Object[] objArr = new Object[]{this.kF, this.kK};
            this.kP = new ad(objArr, "translationY", 0.0f, (float) this.kF.getHeight(), 500);
            this.kP.rF(new aH(this));
        }
    }

    public void iF(IconListPreference iconListPreference, Context context, boolean z) {
        this.kW = z;
        this.kS = iconListPreference;
        this.kG = this.kS.uP();
        this.kH = this.kS.vb();
        if (this.kS.tw() != null) {
            this.kT = this.kS.uW(this.kS.tw());
        } else {
            this.kS.uY(0);
            this.kT = 0;
        }
        this.kL.setText(this.kH[this.kT]);
        iG(context);
    }

    public void iK(boolean z) {
        if (this.kJ != null) {
            C0090a.bvo("ZtemtSlidingDrawer", "mDrawerLists.isFocusable = " + this.kJ.isFocusable());
            this.kJ.setFocusable(z);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.kK = (LinearLayout) findViewById(R.id.handler);
        this.kL = (TextView) findViewById(R.id.handler_text);
        this.kM = (ImageView) findViewById(R.id.handler_arrow);
        this.kF = (HorizontalScrollView) findViewById(R.id.list_container);
        this.kJ = (GridView) findViewById(R.id.drawer_lists);
        this.kK.setOnClickListener(new aI(this));
    }

    private void iH() {
        if (!this.kQ) {
            iE();
            this.kP.rE();
        }
    }

    private void close() {
        if (this.kQ) {
            iE();
            this.kP.start();
        }
    }

    private void iG(Context context) {
        iD();
        this.kJ.setNumColumns(this.kG.length);
        this.kJ.setColumnWidth(C0616j.aoT(64));
        Context context2 = context;
        this.kU = new C0759k(this, context2, this.kO, R.layout.drawer_icon, new String[]{"DrawerListIcon", "DrawerListTitle"}, new int[]{R.id.icon, R.id.title});
        this.kJ.setAdapter(this.kU);
        this.kJ.setOnItemClickListener(new aJ(this));
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        this.kK.setEnabled(z);
        this.kJ.setEnabled(z);
    }

    public void iC(int i) {
        this.kS.uY(i);
        this.kL.setText(this.kH[i]);
        this.kT = i;
        this.kU.notifyDataSetChanged();
        if (this.kN != null) {
            this.kN.iX(i);
        }
        if (this.kW) {
            close();
        }
    }

    private void iD() {
        if (this.kO == null) {
            this.kO = new ArrayList();
        }
        this.kO.clear();
        for (int i = 0; i < this.kG.length; i++) {
            HashMap hashMap = new HashMap();
            hashMap.put("DrawerListIcon", Integer.valueOf(this.kG[i]));
            hashMap.put("DrawerListTitle", this.kH[i]);
            this.kO.add(hashMap);
        }
    }
}
