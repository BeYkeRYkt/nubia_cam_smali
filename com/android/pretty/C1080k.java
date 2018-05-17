package com.android.pretty;

import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.TouchDelegate;
import android.view.View;
import java.util.ArrayList;

class C1080k extends TouchDelegate {
    private TouchDelegate auf;
    private ArrayList aug;
    final /* synthetic */ LargeMultipleTouchableRelativeLayout auh;

    public C1080k(LargeMultipleTouchableRelativeLayout largeMultipleTouchableRelativeLayout, View view) {
        this.auh = largeMultipleTouchableRelativeLayout;
        super(new Rect(), view);
    }

    public void aHS(TouchDelegate touchDelegate) {
        if (this.aug == null) {
            this.aug = new ArrayList();
        }
        this.aug.remove(touchDelegate);
        this.aug.add(touchDelegate);
    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        TouchDelegate touchDelegate;
        boolean z;
        switch (motionEvent.getAction()) {
            case 0:
                if (this.aug != null) {
                    for (TouchDelegate touchDelegate2 : this.aug) {
                        if (touchDelegate2 != null && touchDelegate2.onTouchEvent(motionEvent)) {
                            this.auf = touchDelegate2;
                            return true;
                        }
                    }
                }
                touchDelegate2 = null;
                break;
            case 1:
            case 3:
                touchDelegate2 = this.auf;
                this.auf = null;
                break;
            case 2:
                touchDelegate2 = this.auf;
                break;
            default:
                touchDelegate2 = null;
                break;
        }
        if (touchDelegate2 == null) {
            z = false;
        } else {
            z = touchDelegate2.onTouchEvent(motionEvent);
        }
        return z;
    }
}
