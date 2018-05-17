.class Lcom/android/panorama/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aOx:Lcom/android/panorama/a;


# direct methods
.method private constructor <init>(Lcom/android/panorama/a;)V
    .registers 2

    .prologue
    .line 255
    iput-object p1, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/panorama/a;Lcom/android/panorama/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/panorama/b;-><init>(Lcom/android/panorama/a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beV(Lcom/android/panorama/a;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 260
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beU(Lcom/android/panorama/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jy:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_4c

    .line 261
    :cond_16
    const-string/jumbo v0, "PanoramaFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsPaused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v2}, Lcom/android/panorama/a;->beV(Lcom/android/panorama/a;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v2}, Lcom/android/panorama/a;->beU(Lcom/android/panorama/a;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    return-void

    .line 264
    :cond_4c
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_da

    .line 258
    :cond_51
    :goto_51
    return-void

    .line 266
    :pswitch_52
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beX(Lcom/android/panorama/a;)Lcom/android/panorama/PanoPreviewView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v1}, Lcom/android/panorama/a;->beY(Lcom/android/panorama/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/panorama/PanoPreviewView;->beB([B)V

    .line 267
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beZ(Lcom/android/panorama/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_51

    .line 268
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beZ(Lcom/android/panorama/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v1}, Lcom/android/panorama/a;->beY(Lcom/android/panorama/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    goto :goto_51

    .line 275
    :pswitch_81
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beW(Lcom/android/panorama/a;)Lcom/android/panorama/d;

    move-result-object v0

    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->acX()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/panorama/d;->bfe(Z)V

    .line 276
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beW(Lcom/android/panorama/a;)Lcom/android/panorama/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/panorama/d;->bff()V

    goto :goto_51

    .line 279
    :pswitch_a0
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beW(Lcom/android/panorama/a;)Lcom/android/panorama/d;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v1}, Lcom/android/panorama/a;->beY(Lcom/android/panorama/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/panorama/d;->bfg([B)V

    .line 280
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beZ(Lcom/android/panorama/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v1}, Lcom/android/panorama/a;->beY(Lcom/android/panorama/a;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KW([B)V

    goto :goto_51

    .line 283
    :pswitch_c3
    const-string/jumbo v0, "PanoramaFragment"

    const-string/jumbo v1, "MSG_PANO_ERROR"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_51

    .line 286
    :pswitch_cd
    iget-object v0, p0, Lcom/android/panorama/b;->aOx:Lcom/android/panorama/a;

    invoke-static {v0}, Lcom/android/panorama/a;->beW(Lcom/android/panorama/a;)Lcom/android/panorama/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/panorama/d;->bfh(I)V

    goto/16 :goto_51

    .line 264
    nop

    :pswitch_data_da
    .packed-switch 0x0
        :pswitch_81
        :pswitch_a0
        :pswitch_c3
        :pswitch_cd
        :pswitch_52
    .end packed-switch
.end method
