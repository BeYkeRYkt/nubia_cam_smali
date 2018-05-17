package com.android.common.effects;

import android.content.Context;
import android.util.Log;
import com.android.camera.R;
import com.android.common.effects.p026a.C0477B;
import com.android.common.effects.p026a.C0478C;
import com.android.common.effects.p026a.C0479D;
import com.android.common.effects.p026a.C0480a;
import com.android.common.effects.p026a.C0481b;
import com.android.common.effects.p026a.C0482c;
import com.android.common.effects.p026a.C0483d;
import com.android.common.effects.p026a.C0484e;
import com.android.common.effects.p026a.C0485f;
import com.android.common.effects.p026a.C0487h;
import com.android.common.effects.p026a.C0488i;
import com.android.common.effects.p026a.C0489j;
import com.android.common.effects.p026a.C0490k;
import com.android.common.effects.p026a.C0491l;
import com.android.common.effects.p026a.C0492m;
import com.android.common.effects.p026a.C0493n;
import com.android.common.effects.p026a.C0494o;
import com.android.common.effects.p026a.C0495p;
import com.android.common.effects.p026a.C0496q;
import com.android.common.effects.p026a.C0497r;
import com.android.common.effects.p026a.C0498s;
import com.android.common.effects.p026a.C0499t;
import com.android.common.effects.p026a.C0500u;
import com.android.common.effects.p026a.C0501v;
import com.android.common.effects.p026a.C0502w;
import com.android.common.effects.p026a.C0503x;
import com.android.common.effects.p026a.C0505z;
import com.p010a.C0090a;
import java.util.HashMap;

public class C0506b {
    final String TAG = "EffectFactory";
    HashMap gO = new HashMap();
    private boolean gP = Log.isLoggable("EffectFactory", 3);
    float[][] gQ = new float[][]{new float[]{1.0f, 0.0f, 0.0f}, new float[]{1.0f, 0.25f, 0.75f}, new float[]{1.0f, 0.75f, 0.25f}, new float[]{1.0f, 0.25f, 1.0f}, new float[]{1.0f, 0.08f, 1.0f}};

    private void fw(String str) {
        if (this.gP) {
            C0090a.bvo("EffectFactory", str);
        }
    }

    public C0475a fx(Context context, String str, int i, int i2) {
        if (this.gO.containsKey(str + i)) {
            fw("return exist effect " + str + " " + i);
            C0475a c0475a = (C0475a) this.gO.get(str + i);
            c0475a.fc(i2, false);
            return c0475a;
        }
        fw("generate Effect " + str + " " + i);
        C0475a c0475a2 = null;
        if (str.equals("negative-effect")) {
            c0475a2 = new C0485f(context);
            this.gO.put("negative-effect" + i, c0475a2);
        } else if (str.equals("fill-light")) {
            c0475a2 = new C0494o(context);
            this.gO.put("fill-light" + i, c0475a2);
        } else if (str.equals("gray-scale")) {
            c0475a2 = new C0492m(context);
            this.gO.put("gray-scale" + i, c0475a2);
        } else if (str.equals("cross-process")) {
            c0475a2 = new C0478C(context);
            this.gO.put("cross-process" + i, c0475a2);
        } else if (str.equals("temperature")) {
            c0475a2 = new C0487h(context);
            this.gO.put("temperature" + i, c0475a2);
        } else if (str.equals("fish-eye")) {
            c0475a2 = new C0495p(context);
            this.gO.put("fish-eye" + i, c0475a2);
        } else if (str.equals("sketch")) {
            c0475a2 = new C0489j(context);
            this.gO.put("sketch" + i, c0475a2);
        } else if (str.equals("sepia")) {
            c0475a2 = new C0501v(context);
            this.gO.put("sepia" + i, c0475a2);
        } else if (str.equals("Ocean_effect")) {
            c0475a2 = new C0484e(context);
            this.gO.put("Ocean_effect" + i, c0475a2);
        } else if (str.equals("area_effect")) {
            c0475a2 = new C0483d(context);
            this.gO.put("area_effect" + i, c0475a2);
        } else if (str.equals("rotate_effect")) {
            c0475a2 = new C0499t(context);
            this.gO.put("rotate_effect" + i, c0475a2);
        } else if (str.equals("mosaic_effect")) {
            c0475a2 = new C0502w(context);
            this.gO.put("mosaic_effect" + i, c0475a2);
        } else if (str.equals("emboss_effect")) {
            c0475a2 = new C0477B(context);
            this.gO.put("emboss_effect" + i, c0475a2);
        } else if (str.equals("summer_effect")) {
            c0475a2 = new C0481b(context);
            this.gO.put("summer_effect" + i, c0475a2);
        } else if (str.equals("newsketch_effect")) {
            c0475a2 = new C0497r(context);
            this.gO.put("newsketch_effect" + i, c0475a2);
        } else if (str.equals("colorpaint_effect")) {
            c0475a2 = new C0498s(context);
            this.gO.put("colorpaint_effect" + i, c0475a2);
        } else if (str.equals("LOMO_effect")) {
            c0475a2 = new C0500u(context);
            this.gO.put("LOMO_effect" + i, c0475a2);
        } else if (str.equals("nature")) {
            c0475a2 = new C0505z(context);
            this.gO.put("nature" + i, c0475a2);
        } else if (str.equals("miniature")) {
            c0475a2 = new C0488i(context);
            this.gO.put("miniature" + i, c0475a2);
        } else if (str.equals("film_effect")) {
            c0475a2 = new C0503x(context);
            c0475a2.fc(i2, false);
            this.gO.put("film_effect" + i, c0475a2);
        } else if (str.equals("pink")) {
            c0475a2 = new C0482c(context);
            this.gO.put("pink" + i, c0475a2);
        } else if (str.equals("PrettySweet")) {
            c0475a2 = new C0480a(context, R.raw.beautysweet_fs, i);
            this.gO.put("PrettySweet" + i, c0475a2);
        } else if (str.equals("PrettyNature")) {
            c0475a2 = new C0480a(context, R.raw.beautynature_fs, i);
            this.gO.put("PrettyNature" + i, c0475a2);
        } else if (str.equals("PrettyBlue")) {
            c0475a2 = new C0480a(context, R.raw.beautyblue_fs, i);
            this.gO.put("PrettyBlue" + i, c0475a2);
        } else if (str.equals("PrettyMoonlight")) {
            c0475a2 = new C0480a(context, R.raw.beautymoonlight_fs, i);
            this.gO.put("PrettyMoonlight" + i, c0475a2);
        } else if (str.equals("PrettyWhiteDew")) {
            c0475a2 = new C0480a(context, R.raw.beautywhitedew_fs, i);
            this.gO.put("PrettyWhiteDew" + i, c0475a2);
        } else if (str.equals("PrettyBeautiful")) {
            c0475a2 = new C0491l(context, i);
            this.gO.put("PrettyBeautiful" + i, c0475a2);
        } else if (str.equals("PrettyPink")) {
            c0475a2 = new C0493n(context, i);
            this.gO.put("PrettyPink" + i, c0475a2);
        } else if (str.equals("PrettyJapan")) {
            c0475a2 = new C0479D(context, i);
            this.gO.put("PrettyJapan" + i, c0475a2);
        } else if (str.equals("BlackRect")) {
            c0475a2 = new C0490k(context);
            ((C0490k) c0475a2).ek(-16777216);
            this.gO.put("BlackRect" + i, c0475a2);
        } else if (str.equals("pragueZero")) {
            c0475a2 = new C0496q(context, this.gQ[0], 0, R.raw.prague_fsthree);
            this.gO.put("pragueZero" + i, c0475a2);
        } else if (str.equals("pragueOne")) {
            c0475a2 = new C0496q(context, this.gQ[1], 1, R.raw.prague_fsthree);
            this.gO.put("pragueOne" + i, c0475a2);
        } else if (str.equals("pragueTwo")) {
            c0475a2 = new C0496q(context, this.gQ[2], 2, R.raw.prague_fsthree);
            this.gO.put("pragueTwo" + i, c0475a2);
        } else if (str.equals("pragueThree")) {
            c0475a2 = new C0496q(context, this.gQ[3], 3, R.raw.prague_fstwo);
            this.gO.put("pragueThree" + i, c0475a2);
        } else if (str.equals("pragueFour")) {
            c0475a2 = new C0496q(context, this.gQ[4], 4, R.raw.prague_fstwo);
            this.gO.put("pragueFour" + i, c0475a2);
        }
        return c0475a2;
    }

    public void release() {
        C0090a.bvo("EffectFactory", "release");
        for (Object obj : this.gO.keySet()) {
            ((C0473c) this.gO.get(obj)).release();
        }
        this.gO.clear();
    }
}
