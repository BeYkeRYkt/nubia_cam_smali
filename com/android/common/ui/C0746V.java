package com.android.common.ui;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import java.lang.reflect.Field;

public class C0746V {
    public static Toast qN(Context context, int i, int i2) {
        return C0746V.qP(context, Integer.valueOf(i), i2);
    }

    private static Toast qP(Context context, Object obj, int i) {
        Toast toast = new Toast(context);
        View inflate = ((LayoutInflater) context.getSystemService("layout_inflater")).inflate(R.layout.nubia_toast_layout, null);
        TextView textView = (TextView) inflate.findViewById(R.id.toast_text);
        if (obj instanceof Integer) {
            textView.setText(((Integer) obj).intValue());
        } else {
            textView.setText(obj + "");
        }
        toast.setView(inflate);
        toast.setGravity(17, 0, 500);
        toast.setDuration(i);
        C0746V.qQ(toast);
        return toast;
    }

    private static void qQ(Toast toast) {
        try {
            Object qO = C0746V.qO(toast, "mTN");
            if (qO != null) {
                qO = C0746V.qO(qO, "mParams");
                if (qO != null && (qO instanceof LayoutParams)) {
                    ((LayoutParams) qO).windowAnimations = R.style.NubiaToastTheme;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static Object qO(Object obj, String str) {
        if (obj == null || TextUtils.isEmpty(str)) {
            return null;
        }
        Field declaredField = obj.getClass().getDeclaredField(str);
        if (declaredField == null) {
            return null;
        }
        declaredField.setAccessible(true);
        return declaredField.get(obj);
    }
}
