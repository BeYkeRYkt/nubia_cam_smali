.class final Lcom/android/common/appService/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic ne:Lcom/android/common/appService/i;

.field final synthetic nf:I


# direct methods
.method constructor <init>(Lcom/android/common/appService/i;I)V
    .registers 3

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    iput p2, p0, Lcom/android/common/appService/ae;->nf:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 7

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[optical zoom] main camera frame received, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 218
    iget-object v2, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    invoke-static {v2}, Lcom/android/common/appService/i;->jm(Lcom/android/common/appService/i;)Ljava/util/BitSet;

    move-result-object v2

    iget v3, p0, Lcom/android/common/appService/ae;->nf:I

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    .line 217
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/appService/i;->jp(Lcom/android/common/appService/i;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jm(Lcom/android/common/appService/i;)Ljava/util/BitSet;

    move-result-object v0

    iget v1, p0, Lcom/android/common/appService/ae;->nf:I

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 220
    iget-object v0, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jl(Lcom/android/common/appService/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_40

    .line 216
    :cond_3f
    :goto_3f
    return-void

    .line 221
    :cond_40
    iget-object v0, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->js(Lcom/android/common/appService/i;)V

    .line 222
    iget-object v0, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-static {v0, v1}, Lcom/android/common/appService/i;->jr(Lcom/android/common/appService/i;Lcom/android/common/camerastate/DeviceState;)V

    .line 223
    iget-object v0, p0, Lcom/android/common/appService/ae;->ne:Lcom/android/common/appService/i;

    invoke-static {v0}, Lcom/android/common/appService/i;->jv(Lcom/android/common/appService/i;)V

    goto :goto_3f
.end method
