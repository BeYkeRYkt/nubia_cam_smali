.class public Lcom/android/dualcameracalibration/DualCameraCalibrationService;
.super Landroid/app/Service;
.source "SourceFile"


# instance fields
.field private bbu:Landroid/hardware/Camera;

.field private bbv:Ljava/io/File;

.field private bbw:Landroid/os/Message;

.field private bbx:Landroid/hardware/Camera$Parameters;

.field private bby:Lcom/android/dualcameracalibration/a;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 41
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    .line 33
    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbx:Landroid/hardware/Camera$Parameters;

    .line 35
    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bby:Lcom/android/dualcameracalibration/a;

    .line 36
    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbw:Landroid/os/Message;

    .line 37
    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbv:Ljava/io/File;

    .line 42
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "service oncreate"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const/4 v0, 0x2

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    .line 44
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbx:Landroid/hardware/Camera$Parameters;

    .line 45
    new-instance v0, Lcom/android/dualcameracalibration/a;

    invoke-direct {v0, p0}, Lcom/android/dualcameracalibration/a;-><init>(Lcom/android/dualcameracalibration/DualCameraCalibrationService;)V

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bby:Lcom/android/dualcameracalibration/a;

    .line 46
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/Slave_EEPROM_New.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbv:Ljava/io/File;

    .line 41
    return-void
.end method

.method private bsC()V
    .registers 6

    .prologue
    .line 80
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/WriteSuccess.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 81
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/3DTest/WriteFail.txt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 82
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/3DTest/NoEepromFile.txt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_60

    .line 84
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 86
    :cond_60
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 87
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 89
    :cond_69
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 90
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 79
    :cond_72
    return-void
.end method

.method private bsD()Ljava/lang/String;
    .registers 5

    .prologue
    .line 170
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string/jumbo v0, "data/misc/camera/Result.txt"

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 171
    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "data/misc/camera/Result.txt"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 173
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 174
    invoke-virtual {v0}, Ljava/io/DataInputStream;->available()I

    move-result v2

    .line 175
    new-array v2, v2, [B

    .line 176
    invoke-virtual {v0, v2}, Ljava/io/DataInputStream;->read([B)I

    .line 177
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 178
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 186
    :goto_33
    return-object v0

    .line 180
    :cond_34
    const-string/jumbo v0, "read result failed"
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_33

    .line 182
    :catch_38
    move-exception v0

    .line 183
    const-string/jumbo v1, "IOException when read file "

    .line 184
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    goto :goto_33
.end method

.method private bsE(Landroid/widget/Toast;ILjava/lang/String;)V
    .registers 10

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 56
    const v1, 0x7f040028

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 57
    const v0, 0x7f1000be

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 58
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 60
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Toast;->setDuration(I)V

    .line 61
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 62
    new-instance v1, Lcom/android/dualcameracalibration/i;

    invoke-direct {v1, p0, p1}, Lcom/android/dualcameracalibration/i;-><init>(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/widget/Toast;)V

    .line 68
    const-wide/16 v2, 0x0

    const-wide/16 v4, 0xbb8

    .line 62
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 69
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    new-instance v2, Lcom/android/dualcameracalibration/j;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/dualcameracalibration/j;-><init>(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/widget/Toast;Ljava/util/Timer;)V

    .line 76
    int-to-long v4, p2

    .line 69
    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 54
    return-void
.end method

.method private bsF(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 156
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    .line 159
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 155
    :cond_31
    :goto_31
    return-void

    .line 160
    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method static synthetic bsG(Lcom/android/dualcameracalibration/DualCameraCalibrationService;)Landroid/hardware/Camera;
    .registers 2

    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic bsH(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .registers 2

    iput-object p1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic bsI(Lcom/android/dualcameracalibration/DualCameraCalibrationService;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsD()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic bsJ(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Landroid/widget/Toast;ILjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsE(Landroid/widget/Toast;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic bsK(Lcom/android/dualcameracalibration/DualCameraCalibrationService;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsF(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 118
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 117
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    if-eqz v0, :cond_c

    .line 125
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 126
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    .line 128
    :cond_c
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 123
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8

    .prologue
    .line 96
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "onStartCommand"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsC()V

    .line 98
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbv:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 99
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u65b0EEPROM\u4fe1\u606f\u4e0d\u5b58\u5728\uff01\uff01\u8bf7\u91cd\u65b0\u6821\u51c6\uff01"

    const/16 v2, 0xbb8

    invoke-direct {p0, v0, v2, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsE(Landroid/widget/Toast;ILjava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    .line 102
    const-string/jumbo v0, "NoEepromFile"

    invoke-direct {p0, v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsF(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->stopSelf()V

    .line 113
    :goto_36
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 105
    :cond_3b
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbx:Landroid/hardware/Camera$Parameters;

    const-string/jumbo v1, "eeprom-calibration"

    const-string/jumbo v2, "1"

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbu:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbx:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 107
    new-instance v0, Landroid/widget/Toast;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "\u6b63\u5728\u5199EEPROM\u4fe1\u606f\uff0c\u970015\u79d2\uff0c\u8bf7\u52ff\u505a\u5176\u4ed6\u64cd\u4f5c\uff01\uff01"

    const/16 v2, 0x3a98

    invoke-direct {p0, v0, v2, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bsE(Landroid/widget/Toast;ILjava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bby:Lcom/android/dualcameracalibration/a;

    invoke-virtual {v0}, Lcom/android/dualcameracalibration/a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbw:Landroid/os/Message;

    .line 109
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbw:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 110
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bby:Lcom/android/dualcameracalibration/a;

    iget-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationService;->bbw:Landroid/os/Message;

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dualcameracalibration/a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 111
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "sendMessageDelayed"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36
.end method
