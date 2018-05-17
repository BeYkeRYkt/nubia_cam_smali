package com.android.dualcameracalibration;

import android.app.Service;
import android.content.Intent;
import android.hardware.Camera;
import android.hardware.Camera.Parameters;
import android.os.Environment;
import android.os.IBinder;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.android.camera.R;
import com.p010a.C0090a;
import java.io.DataInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Timer;

public class DualCameraCalibrationService extends Service {
    private Camera awd = null;
    private File awe = null;
    private Message awf = null;
    private Parameters awg = null;
    private C0817g awh = null;

    public DualCameraCalibrationService() {
        C0090a.m1e("DualCameraCalibration", "service oncreate");
        this.awd = Camera.open(2);
        this.awg = this.awd.getParameters();
        this.awh = new C0817g(this);
        this.awe = new File(Environment.getExternalStorageDirectory() + "/3DTest/Slave_EEPROM_New.txt");
    }

    public IBinder onBind(Intent intent) {
        return null;
    }

    private void aJX(Toast toast, int i, String str) {
        View inflate = LayoutInflater.from(getApplicationContext()).inflate(R.layout.dual_camera_test_toast, null);
        ((TextView) inflate.findViewById(R.id.dual_camera_service)).setText(str);
        toast.setView(inflate);
        toast.setDuration(1);
        Timer timer = new Timer();
        timer.schedule(new C0821k(this, toast), 0, 3000);
        new Timer().schedule(new C0822l(this, toast, timer), (long) i);
    }

    private void aJV() {
        File file = new File(Environment.getExternalStorageDirectory() + "/3DTest/WriteSuccess.txt");
        File file2 = new File(Environment.getExternalStorageDirectory() + "/3DTest/WriteFail.txt");
        File file3 = new File(Environment.getExternalStorageDirectory() + "/3DTest/NoEepromFile.txt");
        if (file.exists()) {
            file.delete();
        }
        if (file2.exists()) {
            file2.delete();
        }
        if (file3.exists()) {
            file3.delete();
        }
    }

    public int onStartCommand(Intent intent, int i, int i2) {
        C0090a.m1e("DualCameraCalibration", "onStartCommand");
        aJV();
        if (this.awe.exists()) {
            this.awg.set("eeprom-calibration", "1");
            this.awd.setParameters(this.awg);
            aJX(new Toast(getApplicationContext()), 15000, "正在写EEPROM信息，需15秒，请勿做其他操作！！");
            this.awf = this.awh.obtainMessage();
            this.awf.what = 1;
            this.awh.sendMessageDelayed(this.awf, 15000);
            C0090a.m1e("DualCameraCalibration", "sendMessageDelayed");
        } else {
            aJX(new Toast(getApplicationContext()), 3000, "新EEPROM信息不存在！！请重新校准！");
            this.awd.release();
            this.awd = null;
            aJY("NoEepromFile");
            stopSelf();
        }
        return super.onStartCommand(intent, i, i2);
    }

    public void onCreate() {
        super.onCreate();
    }

    public void onDestroy() {
        if (this.awd != null) {
            this.awd.release();
            this.awd = null;
        }
        super.onDestroy();
    }

    private void aJY(String str) {
        File file = new File(Environment.getExternalStorageDirectory() + "/3DTest/" + str + ".txt");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Exception e) {
            }
        }
    }

    private String aJW() {
        try {
            InputStream fileInputStream = new FileInputStream("data/misc/camera/Result.txt");
            if (!new File("data/misc/camera/Result.txt").exists()) {
                return "read result failed";
            }
            DataInputStream dataInputStream = new DataInputStream(fileInputStream);
            byte[] bArr = new byte[dataInputStream.available()];
            dataInputStream.read(bArr);
            String str = new String(bArr, Charset.forName("UTF-8"));
            fileInputStream.close();
            return str;
        } catch (IOException e) {
            e.printStackTrace();
            return "IOException when read file ";
        }
    }
}
