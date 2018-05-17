.class final Lcom/android/dng/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/K;


# instance fields
.field final synthetic aBp:Lcom/android/dng/j;


# direct methods
.method constructor <init>(Lcom/android/dng/j;)V
    .registers 2

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nT([ILcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 5

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/dng/B;

    invoke-direct {v1, p0, p2}, Lcom/android/dng/B;-><init>(Lcom/android/dng/z;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method

.method public nU()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 236
    iget-object v0, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pB()V

    .line 237
    iget-object v0, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sl()V

    .line 238
    iget-object v0, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    iget-object v1, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v1}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qD()Lcom/android/common/cameradevice/g;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qG(Lcom/android/common/cameradevice/g;)V

    .line 239
    iget-object v0, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-virtual {v0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_38

    .line 240
    const-string/jumbo v0, "DngFragment"

    const-string/jumbo v1, "while switching camera this activity has stop so return!"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void

    .line 243
    :cond_38
    iget-object v0, p0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-virtual {v0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->ats()Lcom/android/common/a/g;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/android/common/a/g;->ay()V

    .line 245
    invoke-virtual {v0, v2}, Lcom/android/common/a/g;->aB(Z)V

    .line 246
    invoke-virtual {v0, v2}, Lcom/android/common/a/g;->ak(Z)V

    .line 248
    invoke-virtual {v0}, Lcom/android/common/a/g;->ap()Lcom/android/common/a/i;

    move-result-object v1

    .line 249
    new-instance v2, Lcom/android/dng/A;

    invoke-direct {v2, p0, v0}, Lcom/android/dng/A;-><init>(Lcom/android/dng/z;Lcom/android/common/a/g;)V

    .line 248
    invoke-virtual {v1, v2}, Lcom/android/common/a/i;->aR(Lcom/android/common/a/j;)V

    .line 235
    return-void
.end method
