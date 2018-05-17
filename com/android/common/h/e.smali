.class public Lcom/android/common/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$FaceDetectionListener;


# instance fields
.field private XZ:Lcom/android/common/appService/W;

.field private Ya:Lcom/android/common/h/f;

.field private Yb:Lcom/android/common/appService/g;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v0, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    .line 36
    iput-object v0, p0, Lcom/android/common/h/e;->Yb:Lcom/android/common/appService/g;

    .line 39
    iput-object p1, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    .line 40
    new-instance v0, Lcom/android/common/h/f;

    invoke-direct {v0, p0}, Lcom/android/common/h/f;-><init>(Lcom/android/common/h/e;)V

    iput-object v0, p0, Lcom/android/common/h/e;->Ya:Lcom/android/common/h/f;

    .line 41
    new-instance v0, Lcom/android/common/appService/g;

    invoke-direct {v0, p1}, Lcom/android/common/appService/g;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/h/e;->Yb:Lcom/android/common/appService/g;

    .line 38
    return-void
.end method

.method private abD()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private abE()Lcom/android/common/cameradevice/j;
    .registers 2

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/common/h/e;->abD()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private abF()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/common/h/e;->abD()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method private abG()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 133
    invoke-direct {p0}, Lcom/android/common/h/e;->abD()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private abI(Landroid/graphics/Rect;)Z
    .registers 6

    .prologue
    const/16 v3, 0x3e8

    const/16 v2, -0x3e8

    const/4 v1, 0x0

    .line 117
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_16

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_16

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_16

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-nez v0, :cond_16

    .line 118
    return v1

    .line 120
    :cond_16
    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v2, :cond_1e

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-ge v0, v2, :cond_1f

    .line 121
    :cond_1e
    return v1

    .line 123
    :cond_1f
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_27

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-le v0, v3, :cond_28

    .line 124
    :cond_27
    return v1

    .line 126
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic abJ(Lcom/android/common/h/e;Landroid/graphics/Rect;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/h/e;->abI(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic abK(Lcom/android/common/h/e;)Lcom/android/common/cameradevice/j;
    .registers 2

    invoke-direct {p0}, Lcom/android/common/h/e;->abE()Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method static synthetic abL(Lcom/android/common/h/e;)Lcom/android/common/cameradevice/p;
    .registers 2

    invoke-direct {p0}, Lcom/android/common/h/e;->abF()Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abH()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/common/h/e;->Yb:Lcom/android/common/appService/g;

    invoke-virtual {v0}, Lcom/android/common/appService/g;->close()V

    .line 85
    return-void
.end method

.method public onFaceDetection([Landroid/hardware/Camera$Face;Landroid/hardware/Camera;)V
    .registers 9

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 46
    iget-object v2, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pk()Z

    move-result v2

    if-eqz v2, :cond_b

    .line 47
    return-void

    .line 50
    :cond_b
    iget-object v2, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->rt()Lcom/android/common/ui/FaceView;

    move-result-object v2

    .line 51
    iget-object v3, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    invoke-virtual {v3, p1}, Lcom/android/common/appService/W;->ru([Landroid/hardware/Camera$Face;)V

    .line 52
    invoke-direct {p0}, Lcom/android/common/h/e;->abG()Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "pref_camera_facedetection_key"

    .line 53
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/common/custom/x;->acE()Ljava/lang/String;

    move-result-object v5

    .line 52
    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v4

    .line 56
    if-eqz v2, :cond_80

    const-string/jumbo v5, "on"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    .line 57
    iget-object v3, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/appService/b;->hT()Z

    move-result v3

    .line 56
    if-eqz v3, :cond_80

    .line 58
    sget-object v3, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v4, v3, :cond_80

    .line 59
    invoke-virtual {v2, p1}, Lcom/android/common/ui/FaceView;->GG([Landroid/hardware/Camera$Face;)V

    .line 60
    iget-object v3, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->ri()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/ui/FaceView;->GD(I)V

    .line 61
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/cameradevice/m;->MS()[Landroid/hardware/Camera$CameraInfo;

    move-result-object v3

    iget-object v4, p0, Lcom/android/common/h/e;->XZ:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pv()I

    move-result v4

    aget-object v3, v3, v4

    .line 62
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v3, v0, :cond_8d

    :goto_72
    invoke-virtual {v2, v0}, Lcom/android/common/ui/FaceView;->GE(Z)V

    .line 63
    invoke-virtual {v2}, Lcom/android/common/ui/FaceView;->getVisibility()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_80

    .line 64
    invoke-virtual {v2, v1}, Lcom/android/common/ui/FaceView;->setVisibility(I)V

    .line 68
    :cond_80
    invoke-direct {p0}, Lcom/android/common/h/e;->abE()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_8c

    invoke-direct {p0}, Lcom/android/common/h/e;->abF()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-nez v0, :cond_8f

    :cond_8c
    return-void

    :cond_8d
    move v0, v1

    .line 62
    goto :goto_72

    .line 70
    :cond_8f
    iget-object v0, p0, Lcom/android/common/h/e;->Yb:Lcom/android/common/appService/g;

    invoke-virtual {v0}, Lcom/android/common/appService/g;->iD()Z

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/common/h/e;->Yb:Lcom/android/common/appService/g;

    invoke-virtual {v1}, Lcom/android/common/appService/g;->iC()Z

    move-result v1

    .line 72
    if-eqz v0, :cond_aa

    .line 73
    if-nez v1, :cond_a4

    .line 74
    iget-object v0, p0, Lcom/android/common/h/e;->Yb:Lcom/android/common/appService/g;

    invoke-virtual {v0}, Lcom/android/common/appService/g;->iE()V

    .line 82
    :cond_a4
    :goto_a4
    iget-object v0, p0, Lcom/android/common/h/e;->Ya:Lcom/android/common/h/f;

    invoke-static {v0, p1}, Lcom/android/common/h/f;->abN(Lcom/android/common/h/f;[Landroid/hardware/Camera$Face;)V

    .line 45
    return-void

    .line 77
    :cond_aa
    if-eqz v1, :cond_a4

    .line 78
    iget-object v0, p0, Lcom/android/common/h/e;->Yb:Lcom/android/common/appService/g;

    invoke-virtual {v0}, Lcom/android/common/appService/g;->close()V

    goto :goto_a4
.end method
