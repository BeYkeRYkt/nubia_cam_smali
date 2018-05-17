package com.android.common;

import android.app.Activity;
import android.content.res.Resources;
import android.graphics.Color;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.android.camera.R;

public class C0259A {
    static String TAG = "ToastUtil";

    public static void avE(Activity activity, int i) {
        C0259A.avD(activity, activity.getString(i));
    }

    public static void avD(Activity activity, String str) {
        ViewGroup viewGroup = (ViewGroup) activity.getWindow().getDecorView();
        View view = (TextView) viewGroup.findViewWithTag(TAG);
        if (view == null) {
            view = C0259A.avG(activity);
            viewGroup.addView(view);
        }
        view.setText(str);
        Animation animation = view.getAnimation();
        if (animation == null) {
            animation = C0259A.avF(view);
        }
        animation.cancel();
        view.setVisibility(0);
        animation.start();
    }

    private static TextView avG(Activity activity) {
        Resources resources = activity.getResources();
        TextView textView = new TextView(activity);
        textView.setTag(TAG);
        textView.setGravity(17);
        textView.setTextColor(Color.argb(224, 0, 0, 0));
        textView.setTextSize(16.0f);
        textView.setPadding(resources.getDimensionPixelSize(R.dimen.dimens_25), 0, resources.getDimensionPixelSize(R.dimen.dimens_25), 0);
        textView.setBackgroundResource(R.drawable.visit_toast);
        LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, resources.getDimensionPixelSize(R.dimen.dimens_42));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = resources.getDimensionPixelSize(R.dimen.dimens_120);
        textView.setLayoutParams(layoutParams);
        return textView;
    }

    private static Animation avF(View view) {
        Animation alphaAnimation = new AlphaAnimation(0.0f, 1.0f);
        alphaAnimation.setDuration(300);
        Animation alphaAnimation2 = new AlphaAnimation(1.0f, 0.0f);
        alphaAnimation2.setDuration(300);
        alphaAnimation2.setStartOffset(1700);
        Animation animationSet = new AnimationSet(true);
        animationSet.addAnimation(alphaAnimation);
        animationSet.addAnimation(alphaAnimation2);
        animationSet.setAnimationListener(new al(view));
        view.setAnimation(animationSet);
        return animationSet;
    }
}
