package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.camera.R;

public class TimePickerView extends FrameLayout {
    private nubiaWheelView iC;
    private nubiaWheelView iD;
    Paint iE = new Paint();
    private nubiaWheelView iF;
    private ImageView iG;

    public class SaveState extends BaseSavedState {
        private final int iH;
        private final int iI;
        private final int iJ;

        private SaveState(Parcelable parcelable, int i, int i2, int i3) {
            super(parcelable);
            this.iH = i;
            this.iI = i2;
            this.iJ = i3;
        }

        public int gS() {
            return this.iH;
        }

        public int gT() {
            return this.iI;
        }

        public int gU() {
            return this.iJ;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.iH);
            parcel.writeInt(this.iI);
            parcel.writeInt(this.iJ);
        }
    }

    public TimePickerView(Context context) {
        super(context);
    }

    public TimePickerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public TimePickerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.nubia_res_time_picker, this, true);
        setBackgroundColor(Color.argb(136, 0, 0, 0));
        this.iC = (nubiaWheelView) findViewById(R.id.nubia_res_hour_spinner);
        this.iC.gV(0);
        this.iC.gW(23);
        this.iC.gX(new aq(this));
        this.iD = (nubiaWheelView) findViewById(R.id.nubia_res_minute_spinner);
        this.iD.gV(0);
        this.iD.gW(59);
        this.iD.gX(new ar(this));
        this.iF = (nubiaWheelView) findViewById(R.id.nubia_res_second_spinner);
        this.iF.gV(0);
        this.iF.gW(59);
        this.iF.gX(new as(this));
        this.iG = (ImageView) findViewById(R.id.setting_switch);
        this.iG.setClickable(true);
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.iD != null) {
            int height = this.iG == null ? 0 : this.iG.getHeight() + getResources().getDimensionPixelSize(R.dimen.dimens_6);
            int gY = this.iD.gY() + height;
            height += this.iD.gZ();
            this.iE.setColor(Color.parseColor("#90000000"));
            canvas.drawRect(0.0f, (float) gY, (float) getRight(), (float) height, this.iE);
        }
    }

    public int gM() {
        return this.iC.ha();
    }

    public int gN() {
        return this.iD.ha();
    }

    public int gO() {
        return this.iF.ha();
    }

    public void gP(Integer num) {
        if (num != null || num.intValue() != gM()) {
            this.iC.hb(num.intValue());
        }
    }

    public void gQ(Integer num) {
        if (num != null || num.intValue() != gN()) {
            this.iD.hb(num.intValue());
        }
    }

    public void gR(Integer num) {
        if (num != null || num.intValue() != gO()) {
            this.iF.hb(num.intValue());
        }
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SaveState saveState = (SaveState) parcelable;
        super.onRestoreInstanceState(saveState.getSuperState());
        gP(Integer.valueOf(saveState.gS()));
        gQ(Integer.valueOf(saveState.gT()));
        gR(Integer.valueOf(saveState.gU()));
    }

    protected Parcelable onSaveInstanceState() {
        return new SaveState(super.onSaveInstanceState(), gM(), gN(), gO());
    }
}
