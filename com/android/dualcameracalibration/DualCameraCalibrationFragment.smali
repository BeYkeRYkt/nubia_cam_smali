.class public Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field bbK:Ljava/lang/String;

.field private bbL:Lcom/android/common/ui/RotateImageView;

.field private bbM:I

.field private bbN:Lcom/android/common/ui/RotateImageView;

.field private bbO:Lcom/android/common/ui/RotateImageView;

.field private bbP:Landroid/widget/TextView;

.field bbQ:Ljava/io/File;

.field private bbR:Landroid/os/Message;

.field private bbS:Lcom/android/dualcameracalibration/h;

.field private bbT:I

.field private bbU:Landroid/widget/RelativeLayout;

.field bbV:Ljava/lang/String;

.field bbW:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 94
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "System.loadLibrary"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v0, "DualCamera_Calibration"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 31
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 107
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbL:Lcom/android/common/ui/RotateImageView;

    .line 35
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbN:Lcom/android/common/ui/RotateImageView;

    .line 36
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbU:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 38
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbO:Lcom/android/common/ui/RotateImageView;

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    .line 40
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbW:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "\u5341\u5b57\u56fe"

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbK:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "3D\u56fe"

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbV:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbQ:Ljava/io/File;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbT:I

    .line 46
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    .line 50
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    .line 106
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 34
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbL:Lcom/android/common/ui/RotateImageView;

    .line 35
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbN:Lcom/android/common/ui/RotateImageView;

    .line 36
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbU:Landroid/widget/RelativeLayout;

    .line 37
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 38
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbO:Lcom/android/common/ui/RotateImageView;

    .line 39
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    .line 40
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbW:Ljava/lang/String;

    .line 41
    const-string/jumbo v0, "\u5341\u5b57\u56fe"

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbK:Ljava/lang/String;

    .line 42
    const-string/jumbo v0, "3D\u56fe"

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbV:Ljava/lang/String;

    .line 43
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbQ:Ljava/io/File;

    .line 44
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbT:I

    .line 46
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    .line 50
    iput-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    .line 110
    return-void
.end method

.method public static bsX()Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;
    .registers 2

    .prologue
    .line 115
    new-instance v0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;-><init>(I)V

    return-object v0
.end method

.method private bsZ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v5, -0x1

    .line 298
    :try_start_1
    const-string/jumbo v0, "DualCameraCalibration"

    invoke-static {v0, p3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 300
    const-string/jumbo v0, "DualCameraCalibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    :cond_2e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 306
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "exist"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 308
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 309
    const/16 v2, 0x5a4

    new-array v2, v2, [B

    .line 310
    :goto_5b
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v5, :cond_6b

    .line 311
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_65} :catch_66

    goto :goto_5b

    .line 323
    :catch_66
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 296
    :goto_6a
    return-void

    .line 313
    :cond_6b
    :try_start_6b
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 314
    :goto_70
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v3, v5, :cond_7b

    .line 315
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_70

    .line 317
    :cond_7b
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 318
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_6a

    .line 320
    :cond_82
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "sourcePath not exist!!!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_8b} :catch_66

    goto :goto_6a
.end method

.method private bta(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 270
    :try_start_0
    const-string/jumbo v0, "DualCameraCalibration"

    invoke-static {v0, p2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 275
    :cond_13
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 277
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 278
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "exist"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 280
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 281
    const/16 v2, 0x5a4

    new-array v2, v2, [B

    .line 282
    :goto_35
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_46

    .line 283
    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_41

    goto :goto_35

    .line 291
    :catch_41
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 268
    :goto_45
    return-void

    .line 285
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 286
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_45

    .line 288
    :cond_4d
    const-string/jumbo v0, "DualCameraCalibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "not exist!!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_67} :catch_41

    goto :goto_45
.end method

.method private btb()V
    .registers 4

    .prologue
    .line 262
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/TakePictureSuccess.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 261
    :cond_26
    return-void
.end method

.method private btc(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    .line 155
    const v0, 0x7f1000c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbU:Landroid/widget/RelativeLayout;

    .line 156
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbL:Lcom/android/common/ui/RotateImageView;

    .line 157
    const v0, 0x7f100046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbN:Lcom/android/common/ui/RotateImageView;

    .line 159
    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 161
    const v0, 0x7f1000c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbO:Lcom/android/common/ui/RotateImageView;

    .line 167
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 168
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbK:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const v3, 0x7f0a0260

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbL:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbN:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbO:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    invoke-direct {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btb()V

    .line 154
    return-void
.end method

.method private btd(D)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 375
    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    cmpl-double v1, p1, v2

    if-lez v1, :cond_e

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v1, p1, v2

    if-gez v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method private bte()V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 75
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_3b

    .line 76
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->adt:Lcom/android/common/appService/W;

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/common/setting/o;->XS(I)V

    .line 77
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->adt:Lcom/android/common/appService/W;

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/common/setting/o;->XS(I)V

    .line 78
    const-string/jumbo v0, "DualCameraCalibrationFragment"

    const-string/jumbo v1, "setParameterWhenIdle"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_3a
    return-void

    .line 80
    :cond_3b
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    invoke-virtual {v0}, Lcom/android/dualcameracalibration/h;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    .line 81
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    const/16 v1, 0x4d2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 82
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    iget-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dualcameracalibration/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_3a
.end method

.method private btg()V
    .registers 12

    .prologue
    const/4 v1, -0x1

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 331
    const/4 v0, 0x3

    new-array v2, v0, [D

    .line 332
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->checkInfo()I

    move-result v3

    .line 333
    if-nez v3, :cond_129

    .line 334
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getAlign()I

    move-result v0

    .line 335
    if-nez v0, :cond_ba

    .line 336
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getRx()D

    move-result-wide v4

    aput-wide v4, v2, v8

    .line 337
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getRy()D

    move-result-wide v4

    aput-wide v4, v2, v9

    .line 338
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getRz()D

    move-result-wide v4

    aput-wide v4, v2, v10

    .line 339
    const-string/jumbo v4, "DualCameraCalibration"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, v2, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "\u89d2\u5ea6\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-wide v6, v2, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v9

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v2, v10

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 364
    :goto_9b
    if-nez v3, :cond_19d

    if-nez v0, :cond_19d

    .line 365
    aget-wide v4, v2, v8

    invoke-direct {p0, v4, v5}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btd(D)Z

    move-result v0

    .line 364
    if-eqz v0, :cond_19d

    .line 366
    aget-wide v4, v2, v9

    invoke-direct {p0, v4, v5}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btd(D)Z

    move-result v0

    .line 364
    if-eqz v0, :cond_19d

    .line 367
    aget-wide v2, v2, v10

    invoke-direct {p0, v2, v3}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btd(D)Z

    move-result v0

    .line 364
    if-eqz v0, :cond_19d

    .line 368
    iput v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbT:I

    .line 328
    :goto_b9
    return-void

    .line 342
    :cond_ba
    const/16 v4, 0xd05

    if-ne v0, v4, :cond_d9

    .line 343
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "\u89d2\u5ea6\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string/jumbo v5, "Not Open 00000_COLOR4.raw"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_9b

    .line 345
    :cond_d9
    const/16 v4, 0x115c

    if-ne v0, v4, :cond_f8

    .line 346
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "\u89d2\u5ea6\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string/jumbo v5, "Not Open 00000_MONO4.raw"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_9b

    .line 349
    :cond_f8
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v5, "\u89d2\u5ea6\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getAlign() ERR=0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_9b

    .line 354
    :cond_129
    const/16 v0, 0x457

    if-ne v3, v0, :cond_14a

    .line 355
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "\u89d2\u5ea6\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v4, "Not Open aux_eeprom_data.dat"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    goto/16 :goto_9b

    .line 357
    :cond_14a
    const/16 v0, 0x8ae

    if-ne v3, v0, :cond_16b

    .line 358
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "\u89d2\u5ea6\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string/jumbo v4, "Not Open aux_eeprom_data.dat"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    goto/16 :goto_9b

    .line 361
    :cond_16b
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v4, "\u89d2\u5ea6\u6d4b\u8bd5\u7ed3\u679c"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "checkInfo() ERR=0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v1

    goto/16 :goto_9b

    .line 370
    :cond_19d
    iput v8, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbT:I

    goto/16 :goto_b9
.end method

.method private bth(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 252
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

    .line 253
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_31

    .line 255
    :try_start_2e
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_32

    .line 251
    :cond_31
    :goto_31
    return-void

    .line 256
    :catch_32
    move-exception v0

    goto :goto_31
.end method

.method static synthetic bti(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic btj(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)I
    .registers 2

    iget v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    return v0
.end method

.method static synthetic btk(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Landroid/os/Message;
    .registers 2

    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic btl(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)Lcom/android/dualcameracalibration/h;
    .registers 2

    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    return-object v0
.end method

.method static synthetic btm(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;Landroid/os/Message;)Landroid/os/Message;
    .registers 2

    iput-object p1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic btn(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bte()V

    return-void
.end method


# virtual methods
.method public bsY()V
    .registers 8

    .prologue
    const v6, 0x7f0a0260

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    iget v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    .line 194
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbQ:Ljava/io/File;

    if-nez v0, :cond_48

    .line 195
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbQ:Ljava/io/File;

    .line 196
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_48

    .line 197
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbQ:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_140

    .line 198
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "mkdir success"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_48
    :goto_48
    const-string/jumbo v0, "DualCameraCalibration"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCaptureTimes==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_14b

    .line 206
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbO:Lcom/android/common/ui/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 208
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 207
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const-string/jumbo v0, "/data/misc/camera/main_1728x972.yuv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/00000_COLOR4.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string/jumbo v0, "/data/misc/camera/sub_1728x972.yuv"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/00000_MONO4.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string/jumbo v0, "/data/misc/camera/aux_eeprom_data.dat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/Slave_EEPROM.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string/jumbo v0, "/data/misc/camera/main_eeprom_data.dat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/Master_EEPROM.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string/jumbo v0, "/data/misc/camera/main_eeprom_data.dat"

    const-string/jumbo v1, "/data/misc/camera/aux_eeprom_data.dat"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "/3DTest/aux_eeprom_data.dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-direct {p0, v0, v1, v2}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bsZ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-direct {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btg()V

    .line 192
    :cond_13f
    :goto_13f
    return-void

    .line 200
    :cond_140
    const-string/jumbo v0, "DualCameraCalibration"

    const-string/jumbo v1, "mkdir failed"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_48

    .line 217
    :cond_14b
    iget v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1d2

    .line 218
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dualcalibrationautotest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_19d

    .line 219
    const-string/jumbo v0, "/data/misc/camera/aux_eeprom_data.dat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/Slave_EEPROM.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "/data/misc/camera/main_eeprom_data.dat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/Master_EEPROM.txt"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_19d
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 223
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "40cm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 222
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_13f

    .line 226
    :cond_1d2
    iget v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    if-ne v0, v3, :cond_247

    .line 227
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 228
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "80cm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    const-string/jumbo v0, "/data/misc/camera/00000_COLOR.raw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/K40m.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    const-string/jumbo v0, "/data/misc/camera/00000_MONO.raw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/K40s.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13f

    .line 231
    :cond_247
    iget v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    if-ne v0, v5, :cond_2bc

    .line 232
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 233
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "200cm "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbV:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v6, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 232
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 234
    const-string/jumbo v0, "/data/misc/camera/00000_COLOR.raw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/K80m.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    const-string/jumbo v0, "/data/misc/camera/00000_MONO.raw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/K80s.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13f

    .line 237
    :cond_2bc
    iget v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    if-nez v0, :cond_13f

    .line 238
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbP:Landroid/widget/TextView;

    .line 239
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0261

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    const-string/jumbo v0, "/data/misc/camera/00000_COLOR.raw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/K200m.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string/jumbo v0, "/data/misc/camera/00000_MONO.raw"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/3DTest/K200s.raw"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bta(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbN:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 243
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dualcalibrationautotest"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13f

    .line 244
    const-string/jumbo v0, "TakePictureSuccess"

    invoke-direct {p0, v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bth(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    goto/16 :goto_13f
.end method

.method public btf()V
    .registers 5

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    invoke-virtual {v0}, Lcom/android/dualcameracalibration/h;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    .line 88
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    const/16 v1, 0x10e1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 90
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    iget-object v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbR:Landroid/os/Message;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/dualcameracalibration/h;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 86
    return-void
.end method

.method public native checkInfo()I
.end method

.method public native getAlign()I
.end method

.method public native getRx()D
.end method

.method public native getRy()D
.end method

.method public native getRz()D
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbN:Lcom/android/common/ui/RotateImageView;

    if-ne v0, p1, :cond_19

    .line 180
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    iget v1, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbT:I

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->setResult(I)V

    .line 181
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    .line 178
    :cond_18
    :goto_18
    return-void

    .line 182
    :cond_19
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbL:Lcom/android/common/ui/RotateImageView;

    if-eq v0, p1, :cond_18

    .line 184
    iget-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbO:Lcom/android/common/ui/RotateImageView;

    if-ne v0, p1, :cond_18

    .line 185
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->setResult(I)V

    .line 186
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    goto :goto_18
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 124
    new-instance v0, Lcom/android/dualcameracalibration/h;

    invoke-direct {v0, p0, v1}, Lcom/android/dualcameracalibration/h;-><init>(Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;Lcom/android/dualcameracalibration/h;)V

    iput-object v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbS:Lcom/android/dualcameracalibration/h;

    .line 125
    invoke-direct {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bte()V

    .line 126
    iget-boolean v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->adu:Z

    if-eqz v0, :cond_14

    .line 127
    return-object v1

    .line 129
    :cond_14
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dualcalibrationautotest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 130
    const-string/jumbo v0, "DualCameraCalibrationFragment"

    const-string/jumbo v1, "is auto(fragment)"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->bbM:I

    .line 133
    :cond_31
    const v0, 0x7f040029

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 134
    invoke-direct {p0, v0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btc(Landroid/view/View;)V

    .line 135
    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 150
    iget-boolean v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 148
    :cond_8
    return-void
.end method

.method public onResume()V
    .registers 4

    .prologue
    .line 140
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 141
    iget-boolean v0, p0, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 142
    :cond_8
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "dualcalibrationautotest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 143
    invoke-virtual {p0}, Lcom/android/dualcameracalibration/DualCameraCalibrationFragment;->btf()V

    .line 139
    :cond_1d
    return-void
.end method
