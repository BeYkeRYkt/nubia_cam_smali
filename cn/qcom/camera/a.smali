.class Lcn/qcom/camera/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# instance fields
.field private bti:Landroid/hardware/Camera$FaceDetectionListener;

.field private btj:J

.field final synthetic btk:Lcn/qcom/camera/QCOMCameraDeviceEx;


# direct methods
.method private constructor <init>(Lcn/qcom/camera/QCOMCameraDeviceEx;)V
    .registers 4

    .prologue
    .line 104
    iput-object p1, p0, Lcn/qcom/camera/a;->btk:Lcn/qcom/camera/QCOMCameraDeviceEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/qcom/camera/a;->bti:Landroid/hardware/Camera$FaceDetectionListener;

    .line 106
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/qcom/camera/a;->btj:J

    .line 104
    return-void
.end method

.method synthetic constructor <init>(Lcn/qcom/camera/QCOMCameraDeviceEx;Lcn/qcom/camera/a;)V
    .registers 3

    invoke-direct {p0, p1}, Lcn/qcom/camera/a;-><init>(Lcn/qcom/camera/QCOMCameraDeviceEx;)V

    return-void
.end method

.method private bQi([Landroid/hardware/Camera$Face;)Z
    .registers 9

    .prologue
    const/16 v6, 0x28

    const/4 v2, 0x0

    move v1, v2

    move v3, v2

    .line 139
    :goto_5
    array-length v0, p1

    if-ge v1, v0, :cond_82

    .line 140
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agb:Z

    if-eqz v0, :cond_75

    .line 141
    const-string/jumbo v0, "org.codeaurora.camera.QCFace"

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/hardware/Camera$Face;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 142
    const-string/jumbo v0, "org.codeaurora.camera.ExtendedFace"

    aget-object v4, p1, v1

    invoke-virtual {v4}, Landroid/hardware/Camera$Face;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 141
    if-eqz v0, :cond_7e

    .line 144
    :cond_32
    :try_start_32
    aget-object v0, p1, v1

    invoke-virtual {v0}, Landroid/hardware/Camera$Face;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v4, "getSmileDegree"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 145
    aget-object v4, p1, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v0, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_50
    .catch Ljava/lang/NoSuchMethodException; {:try_start_32 .. :try_end_50} :catch_6a
    .catch Ljava/lang/IllegalAccessException; {:try_start_32 .. :try_end_50} :catch_5f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_32 .. :try_end_50} :catch_54

    move-result v3

    .line 153
    :goto_51
    if-le v3, v6, :cond_7e

    .line 154
    return v2

    .line 150
    :catch_54
    move-exception v0

    .line 151
    const-string/jumbo v0, "QCOMCameraDeviceEx"

    const-string/jumbo v4, "InvocationTargetException when invoke method getSmileDegree"

    invoke-static {v0, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 148
    :catch_5f
    move-exception v0

    .line 149
    const-string/jumbo v0, "QCOMCameraDeviceEx"

    const-string/jumbo v4, "cant access method getSmileDegree"

    invoke-static {v0, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 146
    :catch_6a
    move-exception v0

    .line 147
    const-string/jumbo v0, "QCOMCameraDeviceEx"

    const-string/jumbo v4, "cant find method getSmileDegree"

    invoke-static {v0, v4}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 158
    :cond_75
    aget-object v0, p1, v1

    invoke-static {v0}, Lcom/android/common/independentutil/IndependenceUtil;->anq(Landroid/hardware/Camera$Face;)I

    move-result v3

    .line 159
    if-le v3, v6, :cond_7e

    .line 160
    return v2

    .line 139
    :cond_7e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_5

    .line 164
    :cond_82
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public bQj(Landroid/hardware/Camera$FaceDetectionListener;)V
    .registers 2

    .prologue
    .line 109
    iput-object p1, p0, Lcn/qcom/camera/a;->bti:Landroid/hardware/Camera$FaceDetectionListener;

    .line 108
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .registers 11

    .prologue
    const-wide/16 v6, 0x0

    .line 113
    iget-object v0, p0, Lcn/qcom/camera/a;->bti:Landroid/hardware/Camera$FaceDetectionListener;

    if-eqz v0, :cond_b

    .line 114
    iget-object v0, p0, Lcn/qcom/camera/a;->bti:Landroid/hardware/Camera$FaceDetectionListener;

    invoke-interface {v0, p1, p2}, Landroid/hardware/Camera$FaceDetectionListener;->onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V

    .line 116
    :cond_b
    iget-object v0, p0, Lcn/qcom/camera/a;->btk:Lcn/qcom/camera/QCOMCameraDeviceEx;

    invoke-static {v0}, Lcn/qcom/camera/QCOMCameraDeviceEx;->bQh(Lcn/qcom/camera/QCOMCameraDeviceEx;)Z

    move-result v0

    if-eqz v0, :cond_6e

    .line 117
    iget-object v0, p0, Lcn/qcom/camera/a;->btk:Lcn/qcom/camera/QCOMCameraDeviceEx;

    invoke-static {v0}, Lcn/qcom/camera/QCOMCameraDeviceEx;->bQg(Lcn/qcom/camera/QCOMCameraDeviceEx;)Lcom/android/common/cameradevice/a;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 118
    array-length v0, p1

    if-eqz v0, :cond_24

    invoke-direct {p0, p1}, Lcn/qcom/camera/a;->bQi([Landroid/hardware/Camera$Face;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 119
    :cond_24
    iput-wide v6, p0, Lcn/qcom/camera/a;->btj:J

    .line 120
    return-void

    .line 122
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    iget-wide v2, p0, Lcn/qcom/camera/a;->btj:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_34

    .line 124
    iput-wide v0, p0, Lcn/qcom/camera/a;->btj:J

    .line 125
    return-void

    .line 127
    :cond_34
    iget-wide v2, p0, Lcn/qcom/camera/a;->btj:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x384

    cmp-long v2, v2, v4

    if-lez v2, :cond_6d

    .line 128
    const-string/jumbo v2, "QCOMCameraDeviceEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "call onSmile because has smile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/qcom/camera/a;->btj:J

    sub-long/2addr v0, v4

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcn/qcom/camera/a;->btk:Lcn/qcom/camera/QCOMCameraDeviceEx;

    invoke-static {v0}, Lcn/qcom/camera/QCOMCameraDeviceEx;->bQg(Lcn/qcom/camera/QCOMCameraDeviceEx;)Lcom/android/common/cameradevice/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/a;->tJ()V

    .line 130
    iput-wide v6, p0, Lcn/qcom/camera/a;->btj:J

    .line 112
    :cond_6d
    :goto_6d
    return-void

    .line 133
    :cond_6e
    iput-wide v6, p0, Lcn/qcom/camera/a;->btj:J

    goto :goto_6d
.end method
