package com.android.common.setting;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;

public class C0713o {
    private static final Class[] zS = new Class[]{Context.class, AttributeSet.class, SharedPreferences.class};
    private static final String zT = C0713o.class.getPackage().getName();
    private static final HashMap zW = new HashMap();
    private Context zU;
    private SharedPreferences zV;

    public C0713o(Context context) {
        this.zU = context;
    }

    public C0702t xw(int i, SharedPreferences sharedPreferences) {
        this.zV = sharedPreferences;
        return xx(this.zU.getResources().getXml(i));
    }

    private C0702t xy(String str, Object[] objArr) {
        String str2 = zT + "." + str;
        Constructor constructor = (Constructor) zW.get(str2);
        if (constructor == null) {
            try {
                constructor = this.zU.getClassLoader().loadClass(str2).getConstructor(zS);
                zW.put(str2, constructor);
            } catch (Throwable e) {
                throw new InflateException("Error inflating class " + str2, e);
            } catch (Throwable e2) {
                throw new InflateException("No such class: " + str2, e2);
            } catch (Throwable e22) {
                throw new InflateException("While create instance of" + str2, e22);
            }
        }
        return (C0702t) constructor.newInstance(objArr);
    }

    private C0702t xx(XmlPullParser xmlPullParser) {
        AttributeSet asAttributeSet = Xml.asAttributeSet(xmlPullParser);
        ArrayList arrayList = new ArrayList();
        Object[] objArr = new Object[]{this.zU, asAttributeSet, this.zV};
        try {
            int next = xmlPullParser.next();
            while (next != 1) {
                if (next == 2) {
                    C0702t xy = xy(xmlPullParser.getName(), objArr);
                    next = xmlPullParser.getDepth();
                    if (next > arrayList.size()) {
                        arrayList.add(xy);
                    } else {
                        arrayList.set(next - 1, xy);
                    }
                    if (next > 1) {
                        ((PreferenceGroup) arrayList.get(next - 2)).tq(xy);
                    }
                }
                next = xmlPullParser.next();
            }
            if (arrayList.size() != 0) {
                return (C0702t) arrayList.get(0);
            }
            throw new InflateException("No root element found");
        } catch (Throwable e) {
            throw new InflateException(e);
        } catch (Throwable e2) {
            throw new InflateException(xmlPullParser.getPositionDescription(), e2);
        }
    }
}
