.class public Lcom/android/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/V;


# instance fields
.field private aFH:Lcom/android/common/appService/W;

.field private aFI:I

.field private aFJ:I

.field private aFK:Lcom/android/d/f;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/d/f;)V
    .registers 4

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    .line 25
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    iput v0, p0, Lcom/android/d/c;->aFI:I

    .line 26
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v0

    iput v0, p0, Lcom/android/d/c;->aFJ:I

    .line 27
    iput-object p2, p0, Lcom/android/d/c;->aFK:Lcom/android/d/f;

    .line 23
    return-void
.end method

.method private aUC(I)Lcom/android/common/cameradevice/j;
    .registers 3

    .prologue
    .line 68
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    return-object v0
.end method

.method private aUD(I)Lcom/android/common/cameradevice/p;
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    return-object v0
.end method

.method private aUE()Z
    .registers 5

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    .line 77
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 78
    iget-object v2, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 76
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "on"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public pa()Z
    .registers 8

    .prologue
    const/4 v1, -0x1

    const/4 v6, 0x0

    .line 32
    iget v0, p0, Lcom/android/d/c;->aFI:I

    if-eq v0, v1, :cond_a

    .line 33
    iget v0, p0, Lcom/android/d/c;->aFJ:I

    if-ne v0, v1, :cond_35

    .line 34
    :cond_a
    const-string/jumbo v0, "Photo3DCapture"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Camera id not found. ColorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/d/c;->aFI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", MonoId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/d/c;->aFJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const/4 v0, 0x0

    return v0

    .line 37
    :cond_35
    const-string/jumbo v0, "Photo3DCapture"

    const-string/jumbo v1, "takePicture"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/android/d/c;->aFI:I

    invoke-direct {p0, v0}, Lcom/android/d/c;->aUC(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/d/c;->aUE()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 40
    iget v0, p0, Lcom/android/d/c;->aFJ:I

    invoke-direct {p0, v0}, Lcom/android/d/c;->aUC(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/d/c;->aUE()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KB(Z)V

    .line 41
    iget v0, p0, Lcom/android/d/c;->aFI:I

    invoke-direct {p0, v0}, Lcom/android/d/c;->aUD(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 42
    iget v1, p0, Lcom/android/d/c;->aFJ:I

    invoke-direct {p0, v1}, Lcom/android/d/c;->aUD(I)Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 43
    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    .line 44
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 46
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    iget v3, p0, Lcom/android/d/c;->aFI:I

    invoke-virtual {v2, v3}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v2

    .line 47
    new-array v0, v0, [B

    .line 46
    invoke-virtual {v2, v0}, Lcom/android/common/cameradevice/j;->KD([B)V

    .line 48
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget v2, p0, Lcom/android/d/c;->aFJ:I

    invoke-virtual {v0, v2}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 49
    new-array v1, v1, [B

    .line 48
    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KD([B)V

    .line 51
    iget v0, p0, Lcom/android/d/c;->aFI:I

    invoke-direct {p0, v0}, Lcom/android/d/c;->aUC(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    new-instance v1, Lcom/android/common/e/b;

    iget-object v2, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/e/b;-><init>(Lcom/android/common/appService/W;)V

    .line 52
    new-instance v2, Lcom/android/d/b;

    iget v3, p0, Lcom/android/d/c;->aFI:I

    iget-object v4, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    iget-object v5, p0, Lcom/android/d/c;->aFK:Lcom/android/d/f;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/d/b;-><init>(ILcom/android/common/appService/W;Lcom/android/d/f;)V

    .line 54
    new-instance v3, Lcom/android/d/e;

    iget v4, p0, Lcom/android/d/c;->aFI:I

    iget-object v5, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    invoke-direct {v3, v4, v5}, Lcom/android/d/e;-><init>(ILcom/android/common/appService/W;)V

    .line 51
    invoke-virtual {v0, v1, v2, v6, v3}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 55
    iget v0, p0, Lcom/android/d/c;->aFJ:I

    invoke-direct {p0, v0}, Lcom/android/d/c;->aUC(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/android/d/b;

    iget v2, p0, Lcom/android/d/c;->aFJ:I

    iget-object v3, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    iget-object v4, p0, Lcom/android/d/c;->aFK:Lcom/android/d/f;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/d/b;-><init>(ILcom/android/common/appService/W;Lcom/android/d/f;)V

    .line 58
    new-instance v2, Lcom/android/d/e;

    iget v3, p0, Lcom/android/d/c;->aFJ:I

    iget-object v4, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    invoke-direct {v2, v3, v4}, Lcom/android/d/e;-><init>(ILcom/android/common/appService/W;)V

    .line 55
    invoke-virtual {v0, v6, v1, v6, v2}, Lcom/android/common/cameradevice/j;->KC(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 60
    const-string/jumbo v0, "Photo3DCapture"

    const-string/jumbo v1, "burstSnapNum: 2"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rb(I)V

    .line 62
    iget-object v0, p0, Lcom/android/d/c;->aFH:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rc()V

    .line 64
    const/4 v0, 0x1

    return v0
.end method
