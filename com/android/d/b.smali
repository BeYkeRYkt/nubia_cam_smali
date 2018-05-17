.class public Lcom/android/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private aFE:Lcom/android/common/appService/W;

.field private aFF:I

.field private aFG:Lcom/android/d/f;


# direct methods
.method public constructor <init>(ILcom/android/common/appService/W;Lcom/android/d/f;)V
    .registers 4

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/android/d/b;->aFF:I

    .line 23
    iput-object p2, p0, Lcom/android/d/b;->aFE:Lcom/android/common/appService/W;

    .line 24
    iput-object p3, p0, Lcom/android/d/b;->aFG:Lcom/android/d/f;

    .line 21
    return-void
.end method

.method private aUA(ILjava/lang/String;)I
    .registers 5

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/d/b;->aFE:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    const/4 v0, -0x1

    .line 47
    if-eqz v1, :cond_11

    .line 48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    :cond_11
    return v0
.end method

.method private aUB()I
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/d/b;->aFE:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lj()I

    move-result v0

    return v0
.end method

.method private aUz()Lcn/nubia/bigAperture/f;
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/d/b;->aFE:Lcom/android/common/appService/W;

    iget v1, p0, Lcom/android/d/b;->aFF:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "altek-back-sub-crop-size"

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcn/nubia/bigAperture/a;->bIW(Ljava/lang/String;)Lcn/nubia/bigAperture/f;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 10

    .prologue
    .line 29
    const-string/jumbo v0, "Photo3DRawPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Raw onPictureTaken mCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/d/b;->aFF:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/d/b;->aFE:Lcom/android/common/appService/W;

    iget v1, p0, Lcom/android/d/b;->aFF:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->ql(I)Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 33
    iget-object v0, p0, Lcom/android/d/b;->aFE:Lcom/android/common/appService/W;

    iget v1, p0, Lcom/android/d/b;->aFF:I

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 35
    iget v0, p0, Lcom/android/d/b;->aFF:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-ne v0, v2, :cond_68

    .line 36
    iget-object v0, p0, Lcom/android/d/b;->aFG:Lcom/android/d/f;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    .line 37
    iget v1, p0, Lcom/android/d/b;->aFF:I

    const-string/jumbo v4, "cur-dac"

    invoke-direct {p0, v1, v4}, Lcom/android/d/b;->aUA(ILjava/lang/String;)I

    move-result v4

    invoke-direct {p0}, Lcom/android/d/b;->aUB()I

    move-result v5

    iget-object v1, p0, Lcom/android/d/b;->aFE:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pV()I

    move-result v6

    move-object v1, p1

    .line 36
    invoke-virtual/range {v0 .. v6}, Lcom/android/d/f;->aUF([BIIIII)V

    .line 28
    :goto_67
    return-void

    .line 39
    :cond_68
    iget-object v0, p0, Lcom/android/d/b;->aFG:Lcom/android/d/f;

    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    .line 40
    iget v1, p0, Lcom/android/d/b;->aFF:I

    const-string/jumbo v4, "cur-dac-aux"

    invoke-direct {p0, v1, v4}, Lcom/android/d/b;->aUA(ILjava/lang/String;)I

    move-result v4

    invoke-direct {p0}, Lcom/android/d/b;->aUz()Lcn/nubia/bigAperture/f;

    move-result-object v5

    move-object v1, p1

    .line 39
    invoke-virtual/range {v0 .. v5}, Lcom/android/d/f;->aUG([BIIILcn/nubia/bigAperture/f;)V

    goto :goto_67
.end method
