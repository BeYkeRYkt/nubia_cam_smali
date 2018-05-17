.class public final Lcom/android/common/e/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private UT:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    .line 19
    iput-object p1, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    .line 18
    return-void
.end method

.method private Za([BLjava/lang/String;)V
    .registers 6

    .prologue
    .line 52
    const-string/jumbo v0, "JpegPictureCallbackForThirdParty"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "saveJpeg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 54
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 55
    invoke-virtual {v1, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 56
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 51
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    const-string/jumbo v0, "JpegPictureCallbackForThirdParty"

    const-string/jumbo v1, "JpegPictureCallbackForThirdParty"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 27
    return-void

    .line 29
    :cond_14
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->qb(I)V

    .line 30
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qd()I

    move-result v1

    if-ne v0, v1, :cond_2c

    .line 31
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qe()V

    .line 33
    :cond_2c
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    if-ne v0, v3, :cond_63

    .line 34
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/H;->mJ(Z)V

    .line 35
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pD([B)V

    .line 37
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "autotest"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_64

    .line 38
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 47
    :goto_5a
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mK()V

    .line 24
    :cond_63
    return-void

    .line 41
    :cond_64
    :try_start_64
    const-string/jumbo v0, "AutoTest.jpeg"

    invoke-direct {p0, p1, v0}, Lcom/android/common/e/a;->Za([BLjava/lang/String;)V
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6a} :catch_76

    .line 45
    :goto_6a
    iget-object v0, p0, Lcom/android/common/e/a;->UT:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    goto :goto_5a

    .line 42
    :catch_76
    move-exception v0

    .line 43
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6a
.end method
