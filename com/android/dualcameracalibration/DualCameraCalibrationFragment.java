package com.android.dualcameracalibration;

import android.app.AlertDialog.Builder;
import android.os.Bundle;
import android.os.Environment;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.android.camera.R;
import com.android.common.ActivityBase;
import com.android.common.cameradevice.C0384o;
import com.android.common.camerastate.DeviceState;
import com.android.common.p014n.C0111p;
import com.android.common.ui.RotateImageView;
import com.p010a.C0090a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;

public class DualCameraCalibrationFragment extends C0111p implements OnClickListener {
    String awj = "十字图";
    private RotateImageView awk = null;
    private int awl = 5;
    private RotateImageView awm = null;
    private RotateImageView awn = null;
    private TextView awo = null;
    File awp = null;
    private Message awq = null;
    private C0818h awr = null;
    private int aws = 0;
    private RelativeLayout awt = null;
    String awu = "3D图";
    String awv = null;

    public native int checkInfo();

    public native int getAlign();

    public native double getRx();

    public native double getRy();

    public native double getRz();

    private void aKl() {
        if (this.adA.SX().JV() == DeviceState.IDLE) {
            this.adA.UM(C0384o.Jr().Js()).tE(-1);
            this.adA.UM(C0384o.Jr().Jx()).tE(-1);
            C0090a.m0d("DualCameraCalibrationFragment", "setParameterWhenIdle");
            return;
        }
        this.awq = this.awr.obtainMessage();
        this.awq.what = 1234;
        this.awr.sendMessageDelayed(this.awq, 10);
    }

    public void aKm() {
        this.awq = this.awr.obtainMessage();
        this.awq.what = 4321;
        this.awr.sendMessageDelayed(this.awq, 1000);
    }

    static {
        C0090a.m1e("DualCameraCalibration", "System.loadLibrary");
        System.loadLibrary("DualCamera_Calibration");
    }

    public DualCameraCalibrationFragment(int i) {
        super(i);
    }

    public static DualCameraCalibrationFragment aKe() {
        return new DualCameraCalibrationFragment(1);
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        super.onCreateView(layoutInflater, viewGroup, bundle);
        this.awr = new C0818h();
        aKl();
        if (this.adB) {
            return null;
        }
        if (getActivity().getIntent().getBooleanExtra("dualcalibrationautotest", false)) {
            C0090a.m0d("DualCameraCalibrationFragment", "is auto(fragment)");
            this.awl = 4;
        }
        View inflate = layoutInflater.inflate(R.layout.dualcameracalibrationfragment_layout, viewGroup, false);
        aKj(inflate);
        return inflate;
    }

    public void onResume() {
        super.onResume();
        if (!this.adB && getActivity().getIntent().getBooleanExtra("dualcalibrationautotest", false)) {
            aKm();
        }
    }

    public void onPause() {
        super.onPause();
        if (!this.adB) {
        }
    }

    private void aKj(View view) {
        this.awt = (RelativeLayout) view.findViewById(R.id.dualcameracalibration_cancel_done_layout);
        this.awk = (RotateImageView) view.findViewById(R.id.btn_cancel);
        this.awm = (RotateImageView) view.findViewById(R.id.btn_done);
        this.awo = (TextView) view.findViewById(R.id.dualcameracalibration_hint);
        this.awn = (RotateImageView) view.findViewById(R.id.dualcameracalibration_exitCamera);
        this.awo.setText(getActivity().getResources().getString(R.string.pref_camera_dualcameracalibrationtip, new Object[]{Integer.valueOf(this.awl), this.awj}));
        this.awk.setOnClickListener(this);
        this.awm.setOnClickListener(this);
        this.awn.setOnClickListener(this);
        this.awo.setVisibility(0);
        aKi();
    }

    public void onClick(View view) {
        if (this.awm == view) {
            ((ActivityBase) getActivity()).setResult(this.aws);
            ((ActivityBase) getActivity()).finish();
        } else if (this.awk != view && this.awn == view) {
            ((ActivityBase) getActivity()).setResult(0);
            ((ActivityBase) getActivity()).finish();
        }
    }

    public void aKf() {
        this.awl--;
        if (this.awp == null) {
            this.awp = new File(Environment.getExternalStorageDirectory() + "/3DTest");
            if (!this.awp.exists()) {
                if (this.awp.mkdir()) {
                    C0090a.m1e("DualCameraCalibration", "mkdir success");
                } else {
                    C0090a.m1e("DualCameraCalibration", "mkdir failed");
                }
            }
        }
        C0090a.m1e("DualCameraCalibration", "mCaptureTimes===" + this.awl);
        if (this.awl == 4) {
            this.awn.setVisibility(8);
            this.awo.setText(getActivity().getResources().getString(R.string.pref_camera_dualcameracalibrationtip, new Object[]{Integer.valueOf(this.awl), "" + this.awu}));
            aKh("/data/misc/camera/main_1728x972.yuv", Environment.getExternalStorageDirectory() + "/3DTest/00000_COLOR4.raw");
            aKh("/data/misc/camera/sub_1728x972.yuv", Environment.getExternalStorageDirectory() + "/3DTest/00000_MONO4.raw");
            aKh("/data/misc/camera/aux_eeprom_data.dat", Environment.getExternalStorageDirectory() + "/3DTest/Slave_EEPROM.txt");
            aKh("/data/misc/camera/main_eeprom_data.dat", Environment.getExternalStorageDirectory() + "/3DTest/Master_EEPROM.txt");
            aKg("/data/misc/camera/main_eeprom_data.dat", "/data/misc/camera/aux_eeprom_data.dat", Environment.getExternalStorageDirectory() + "/3DTest/aux_eeprom_data.dat");
            aKn();
        } else if (this.awl == 3) {
            if (getActivity().getIntent().getBooleanExtra("dualcalibrationautotest", false)) {
                aKh("/data/misc/camera/aux_eeprom_data.dat", Environment.getExternalStorageDirectory() + "/3DTest/Slave_EEPROM.txt");
                aKh("/data/misc/camera/main_eeprom_data.dat", Environment.getExternalStorageDirectory() + "/3DTest/Master_EEPROM.txt");
            }
            this.awo.setText(getActivity().getResources().getString(R.string.pref_camera_dualcameracalibrationtip, new Object[]{Integer.valueOf(this.awl), "40cm " + this.awu}));
        } else if (this.awl == 2) {
            this.awo.setText(getActivity().getResources().getString(R.string.pref_camera_dualcameracalibrationtip, new Object[]{Integer.valueOf(this.awl), "80cm " + this.awu}));
            aKh("/data/misc/camera/00000_COLOR.raw", Environment.getExternalStorageDirectory() + "/3DTest/K40m.raw");
            aKh("/data/misc/camera/00000_MONO.raw", Environment.getExternalStorageDirectory() + "/3DTest/K40s.raw");
        } else if (this.awl == 1) {
            this.awo.setText(getActivity().getResources().getString(R.string.pref_camera_dualcameracalibrationtip, new Object[]{Integer.valueOf(this.awl), "200cm " + this.awu}));
            aKh("/data/misc/camera/00000_COLOR.raw", Environment.getExternalStorageDirectory() + "/3DTest/K80m.raw");
            aKh("/data/misc/camera/00000_MONO.raw", Environment.getExternalStorageDirectory() + "/3DTest/K80s.raw");
        } else if (this.awl == 0) {
            this.awo.setText(getActivity().getResources().getString(R.string.pref_camera_dualcameracalibrationtip_testend));
            aKh("/data/misc/camera/00000_COLOR.raw", Environment.getExternalStorageDirectory() + "/3DTest/K200m.raw");
            aKh("/data/misc/camera/00000_MONO.raw", Environment.getExternalStorageDirectory() + "/3DTest/K200s.raw");
            this.awm.setVisibility(0);
            if (getActivity().getIntent().getBooleanExtra("dualcalibrationautotest", false)) {
                aKo("TakePictureSuccess");
                ((ActivityBase) getActivity()).finish();
            }
        }
    }

    private void aKo(String str) {
        File file = new File(Environment.getExternalStorageDirectory() + "/3DTest/" + str + ".txt");
        if (!file.exists()) {
            try {
                file.createNewFile();
            } catch (Exception e) {
            }
        }
    }

    private void aKi() {
        File file = new File(Environment.getExternalStorageDirectory() + "/3DTest/TakePictureSuccess.txt");
        if (file.exists()) {
            file.delete();
        }
    }

    private void aKh(String str, String str2) {
        try {
            C0090a.m1e("DualCameraCalibration", str2);
            if (Environment.getExternalStorageState().equals("mounted")) {
            }
            if (new File(str).exists()) {
                C0090a.m1e("DualCameraCalibration", "exist");
                InputStream fileInputStream = new FileInputStream(str);
                FileOutputStream fileOutputStream = new FileOutputStream(str2);
                byte[] bArr = new byte[1444];
                while (true) {
                    int read = fileInputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.flush();
                        fileInputStream.close();
                        return;
                    }
                }
            }
            C0090a.m1e("DualCameraCalibration", str + "not exist!!!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void aKg(String str, String str2, String str3) {
        try {
            C0090a.m1e("DualCameraCalibration", str3);
            if (Environment.getExternalStorageState().equals("mounted")) {
                C0090a.m1e("DualCameraCalibration", str3 + "mounted");
            }
            File file = new File(str);
            File file2 = new File(str2);
            if (file.exists() && file2.exists()) {
                int read;
                C0090a.m1e("DualCameraCalibration", "exist");
                InputStream fileInputStream = new FileInputStream(str);
                FileOutputStream fileOutputStream = new FileOutputStream(str3);
                byte[] bArr = new byte[1444];
                while (true) {
                    read = fileInputStream.read(bArr);
                    if (read == -1) {
                        break;
                    }
                    fileOutputStream.write(bArr, 0, read);
                }
                fileInputStream = new FileInputStream(str2);
                while (true) {
                    read = fileInputStream.read(bArr);
                    if (read != -1) {
                        fileOutputStream.write(bArr, 0, read);
                    } else {
                        fileOutputStream.flush();
                        fileInputStream.close();
                        return;
                    }
                }
            }
            C0090a.m1e("DualCameraCalibration", "sourcePath not exist!!!");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void aKn() {
        double[] dArr = new double[3];
        int checkInfo = checkInfo();
        int align;
        if (checkInfo == 0) {
            align = getAlign();
            if (align == 0) {
                dArr[0] = getRx();
                dArr[1] = getRy();
                dArr[2] = getRz();
                C0090a.m1e("DualCameraCalibration", dArr[0] + "  " + dArr[1] + "  " + dArr[2] + "  ");
                new Builder(getActivity()).setTitle("角度测试结果").setMessage(dArr[0] + "  " + dArr[1] + "  " + dArr[2]).show();
            } else if (align == 3333) {
                new Builder(getActivity()).setTitle("角度测试结果").setMessage("Not Open 00000_COLOR4.raw").show();
            } else if (align == 4444) {
                new Builder(getActivity()).setTitle("角度测试结果").setMessage("Not Open 00000_MONO4.raw").show();
            } else {
                new Builder(getActivity()).setTitle("角度测试结果").setMessage("getAlign() ERR=0x" + Integer.toHexString(align)).show();
            }
        } else if (checkInfo == 1111) {
            new Builder(getActivity()).setTitle("角度测试结果").setMessage("Not Open aux_eeprom_data.dat").show();
            align = -1;
        } else if (checkInfo == 2222) {
            new Builder(getActivity()).setTitle("角度测试结果").setMessage("Not Open aux_eeprom_data.dat").show();
            align = -1;
        } else {
            new Builder(getActivity()).setTitle("角度测试结果").setMessage("checkInfo() ERR=0x" + Integer.toHexString(checkInfo)).show();
            align = -1;
        }
        if (checkInfo == 0 && r0 == 0 && aKk(dArr[0]) && aKk(dArr[1]) && aKk(dArr[2])) {
            this.aws = -1;
        } else {
            this.aws = 0;
        }
    }

    private boolean aKk(double d) {
        return d > -2.0d && d < 2.0d;
    }
}
