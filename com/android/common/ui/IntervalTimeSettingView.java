package com.android.common.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View.BaseSavedState;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.android.camera.R;

public class IntervalTimeSettingView extends FrameLayout {
    private C0745U te;
    private Paint tf;
    private nubiaWheelView tg;
    private nubiaWheelView th;
    private nubiaWheelView ti;
    private nubiaWheelView tj;
    private ImageView tk;

    public class SaveState extends BaseSavedState {
        private final int tl;
        private final int tm;

        private SaveState(Parcelable parcelable, int i, int i2) {
            super(parcelable);
            this.tl = i;
            this.tm = i2;
        }

        public int qL() {
            return this.tl;
        }

        public int qM() {
            return this.tm;
        }

        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.tl);
            parcel.writeInt(this.tm);
        }
    }

    public IntervalTimeSettingView(Context context) {
        super(context);
        this.tf = null;
        this.tf = new Paint();
    }

    public IntervalTimeSettingView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.tf = null;
        this.tf = new Paint();
    }

    public void qG() {
        this.tg = (nubiaWheelView) findViewById(R.id.start_hour_spinner);
        this.tg.hk(getContext().getResources().getDimensionPixelSize(R.dimen.dimens_25));
        this.tg.gV(0);
        this.tg.gW(23);
        this.tg.gX(new bg(this));
        this.th = (nubiaWheelView) findViewById(R.id.start_minute_spinner);
        this.th.hk(getContext().getResources().getDimensionPixelSize(R.dimen.dimens_25));
        this.th.gV(0);
        this.th.gW(59);
        this.th.gX(new bh(this));
        this.ti = (nubiaWheelView) findViewById(R.id.stop_hour_spinner);
        this.ti.hk(getContext().getResources().getDimensionPixelSize(R.dimen.dimens_25));
        this.ti.gV(0);
        this.ti.gW(23);
        this.tj = (nubiaWheelView) findViewById(R.id.stop_minute_spinner);
        this.tj.hk(getContext().getResources().getDimensionPixelSize(R.dimen.dimens_25));
        this.tj.gV(0);
        this.tj.gW(59);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        setBackgroundColor(Color.argb(136, 0, 0, 0));
        qG();
    }

    public IntervalTimeSettingView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.tf = null;
    }

    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (this.th != null) {
            int height = this.tk == null ? 0 : this.tk.getHeight() + getResources().getDimensionPixelSize(R.dimen.dimens_6);
            int gY = this.th.gY() + height;
            height += this.th.gZ();
            this.tf.setColor(Color.parseColor("#90000000"));
            canvas.drawRect(0.0f, (float) gY, (float) getRight(), (float) height, this.tf);
        }
    }

    public void qH() {
        if (this.te != null) {
            this.te.qK(this, qE(), qF());
        }
    }

    public int qE() {
        return this.tg.ha();
    }

    public int qF() {
        return this.th.ha();
    }

    public void qI(Integer num) {
        if (num != null || num.intValue() != qE()) {
            this.tg.hb(num.intValue());
        }
    }

    public void qJ(Integer num) {
        if (num != null || num.intValue() != qF()) {
            this.th.hb(num.intValue());
        }
    }

    protected void onRestoreInstanceState(Parcelable parcelable) {
        SaveState saveState = (SaveState) parcelable;
        super.onRestoreInstanceState(saveState.getSuperState());
        qI(Integer.valueOf(saveState.qL()));
        qJ(Integer.valueOf(saveState.qM()));
    }

    protected Parcelable onSaveInstanceState() {
        return new SaveState(super.onSaveInstanceState(), qE(), qF());
    }
}
