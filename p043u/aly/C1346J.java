package p043u.aly;

import android.content.Context;
import android.os.Environment;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class C1346J extends cO {
    private static final Pattern bvl = Pattern.compile("UTDID\">([^<]+)");
    private Context bvm;

    public C1346J(Context context) {
        super("utdid");
        this.bvm = context;
    }

    public String mo1006f() {
        return m781g();
    }

    private String m781g() {
        InputStream fileInputStream;
        File h = m782h();
        if (h == null || !h.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(h);
            String b = m780b(bu.m1123a(fileInputStream));
            bu.bVS(fileInputStream);
            return b;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        } catch (Throwable th) {
            bu.bVS(fileInputStream);
        }
    }

    private String m780b(String str) {
        if (str == null) {
            return null;
        }
        Matcher matcher = bvl.matcher(str);
        if (matcher.find()) {
            return matcher.group(1);
        }
        return null;
    }

    private File m782h() {
        if (C1394e.m1245a(this.bvm, "android.permission.WRITE_EXTERNAL_STORAGE") && Environment.getExternalStorageState().equals("mounted")) {
            try {
                return new File(Environment.getExternalStorageDirectory().getCanonicalPath(), ".UTSystemConfig/Global/Alvin2.xml");
            } catch (Exception e) {
            }
        }
        return null;
    }
}
