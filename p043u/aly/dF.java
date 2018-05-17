package p043u.aly;

import com.umeng.analytics.AnalyticsConfig;
import java.lang.Thread.UncaughtExceptionHandler;

public class dF implements UncaughtExceptionHandler {
    private UncaughtExceptionHandler bBE;
    private C1308o bBF;

    public dF() {
        if (Thread.getDefaultUncaughtExceptionHandler() != this) {
            this.bBE = Thread.getDefaultUncaughtExceptionHandler();
            Thread.setDefaultUncaughtExceptionHandler(this);
        }
    }

    public void cbK(C1308o c1308o) {
        this.bBF = c1308o;
    }

    public void uncaughtException(Thread thread, Throwable th) {
        m1215a(th);
        if (this.bBE != null && this.bBE != Thread.getDefaultUncaughtExceptionHandler()) {
            this.bBE.uncaughtException(thread, th);
        }
    }

    private void m1215a(Throwable th) {
        if (AnalyticsConfig.CATCH_EXCEPTION) {
            this.bBF.mo963a(th);
        } else {
            this.bBF.mo963a(null);
        }
    }
}
