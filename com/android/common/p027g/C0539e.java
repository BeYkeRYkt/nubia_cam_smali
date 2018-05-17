package com.android.common.p027g;

import android.content.Context;
import android.graphics.Rect;
import com.android.common.gles.C0550g;
import com.android.common.p016a.C0126g;
import com.android.common.p016a.C0290f;

public class C0539e implements C0126g {
    private Object Xl = new Object();
    private float[] Xm = new float[16];

    public C0539e(Context context) {
    }

    public boolean aJ(C0290f c0290f, C0550g c0550g) {
        synchronized (this.Xl) {
            Rect al = c0290f.al();
            c0290f.ae().getTransformMatrix(this.Xm);
            c0550g.Ek();
            c0550g.El(0.0f, 0.0f, -1.0f);
            float[] fArr = this.Xm;
            int i = al.left;
            int i2 = al.top;
            int width = al.width();
            int height = al.height();
            c0550g.Es(c0290f.ao(), "#extension GL_OES_EGL_image_external : require\nprecision mediump float;\nvarying vec2 vTextureCoord;\nuniform samplerExternalOES sTexture;\nvec4 color;\nfloat luminance( in vec3 color ) {\n    return 0.2126 * color.r + 0.7152 * color.g + 0.0722 * color.b;\n}\nvec4 pass2(vec2 pos, float xDistance, float yDistance)\n{\n    float s00 = luminance(texture2D( sTexture, pos + vec2(-xDistance,yDistance) ).rgb);\n\t float s10 = luminance(texture2D( sTexture, pos + vec2(-xDistance,0.0) ).rgb);\n\t float s20 = luminance(texture2D( sTexture, pos + vec2(-xDistance,-yDistance) ).rgb);\n\t float s01 = luminance(texture2D( sTexture, pos + vec2(0.0,yDistance) ).rgb);\n\t float s21 = luminance(texture2D( sTexture, pos + vec2(0.0,-yDistance) ).rgb);\n\t float s02 = luminance(texture2D( sTexture, pos + vec2(xDistance, yDistance) ).rgb);\n\t float s12 = luminance(texture2D( sTexture, pos + vec2(xDistance, 0.0) ).rgb);\n \t float s22 = luminance(texture2D( sTexture, pos + vec2(xDistance, -yDistance) ).rgb);\n    float sx = s00 + 2.0 * s10 + s20 - (s02 + 2.0 * s12 + s22);\n    float sy = s00 + 2.0 * s01 + s02 - (s20 + 2.0 * s21 + s22);\n    float dist = sx * sx + sy * sy;\n\t if( dist > 0.7)\n        return vec4(1.0, 0.0, 0.0, 1.0);\n    else\n    \t return vec4(0.0, 0.0, 0.0, 0.0);\n}\nvoid main() {\n\t float xDistance = 1.0 / 1920.0;\n\t float yDistance = 1.0 / 1080.0;\n\t vec2 pos = vTextureCoord.st;\n\t color = pass2(pos, xDistance, yDistance);\n\t gl_FragColor =color;\n}\n", fArr, i, i2, width, height);
            c0550g.Eo();
        }
        return true;
    }

    public boolean aL(C0290f c0290f, C0550g c0550g) {
        synchronized (this.Xl) {
        }
        return true;
    }

    public int aI() {
        return 100;
    }

    public void aK(C0290f c0290f) {
    }
}
