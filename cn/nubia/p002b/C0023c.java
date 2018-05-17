package cn.nubia.p002b;

import android.hardware.fingerprint.FingerprintManager.AuthenticationCallback;
import android.hardware.fingerprint.FingerprintManager.AuthenticationResult;
import android.os.Message;
import com.p010a.C0090a;

final class C0023c extends AuthenticationCallback {
    final /* synthetic */ C0021a bpZ;

    C0023c(C0021a c0021a) {
        this.bpZ = c0021a;
    }

    public void onAuthenticationSucceeded(AuthenticationResult authenticationResult) {
        C0090a.bvo("Fingerprint", "onAuthenticationSucceeded result = " + authenticationResult);
    }

    public void onAuthenticationFailed() {
        C0090a.bvo("Fingerprint", "onAuthenticationFailed");
    }

    public void onAuthenticationError(int i, CharSequence charSequence) {
        C0090a.bvo("Fingerprint", "onAuthenticationError errMsgId = " + i + "; errString = " + charSequence);
        if (this.bpZ.bpW != null) {
            Message message = new Message();
            message.what = 111;
            message.obj = charSequence;
            this.bpZ.bMg(message);
            this.bpZ.bMh();
        }
    }

    public void onAuthenticationHelp(int i, CharSequence charSequence) {
        C0090a.bvo("Fingerprint", "onAuthenticationHelp helpMsgId = " + i + "; helpString = " + charSequence);
    }

    public void onAuthenticationAcquired(int i) {
        C0090a.bvo("Fingerprint", "onAuthenticationAcquired acquiredInfo = " + i);
        this.bpZ.bMf(103);
    }
}
