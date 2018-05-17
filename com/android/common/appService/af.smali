.class final Lcom/android/common/appService/af;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic ng:Lcom/android/common/appService/i;

.field final synthetic nh:I


# direct methods
.method constructor <init>(Lcom/android/common/appService/i;I)V
    .registers 3

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    iput p2, p0, Lcom/android/common/appService/af;->nh:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jn(Lcom/android/common/appService/i;)Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    sget-object v3, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    if-ne v0, v3, :cond_51

    const-string/jumbo v0, "[aper]"

    :goto_14
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 273
    const-string/jumbo v2, " color preview frame received, "

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 274
    iget-object v2, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    invoke-static {v2}, Lcom/android/common/appService/i;->jm(Lcom/android/common/appService/i;)Ljava/util/BitSet;

    move-result-object v2

    iget v3, p0, Lcom/android/common/appService/af;->nh:I

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 272
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/appService/i;->jp(Lcom/android/common/appService/i;Ljava/lang/String;)V

    .line 275
    iget-object v0, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jm(Lcom/android/common/appService/i;)Ljava/util/BitSet;

    move-result-object v0

    iget v1, p0, Lcom/android/common/appService/af;->nh:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 276
    iget-object v0, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 271
    :cond_50
    :goto_50
    return-void

    .line 272
    :cond_51
    const-string/jumbo v0, "[fu]"

    goto :goto_14

    .line 277
    :cond_55
    iget-object v0, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->ju(Lcom/android/common/appService/i;)V

    .line 278
    iget-object v0, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-static {v0, v1}, Lcom/android/common/appService/i;->jr(Lcom/android/common/appService/i;Lcom/android/common/camerastate/DeviceState;)V

    .line 279
    iget-object v0, p0, Lcom/android/common/appService/af;->ng:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jv(Lcom/android/common/appService/i;)V

    goto :goto_50
.end method
