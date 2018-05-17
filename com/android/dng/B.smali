.class final Lcom/android/dng/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aBs:Lcom/android/dng/z;

.field final synthetic aBt:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;


# direct methods
.method constructor <init>(Lcom/android/dng/z;Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;)V
    .registers 3

    .prologue
    .line 267
    iput-object p1, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iput-object p2, p0, Lcom/android/dng/B;->aBt:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qy(Lcom/android/common/cameradevice/g;)V

    .line 272
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 274
    iget-object v0, p0, Lcom/android/dng/B;->aBt:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kv:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    if-ne v0, v1, :cond_3d

    .line 275
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    iget-object v1, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v1, v1, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-virtual {v1}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a022b

    invoke-static {v1, v2}, Lcom/android/common/h;->aqk(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dng/j;->aPX(Lcom/android/dng/j;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 276
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPS(Lcom/android/dng/j;)Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 277
    return-void

    .line 278
    :cond_3d
    iget-object v0, p0, Lcom/android/dng/B;->aBt:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    sget-object v1, Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;->kw:Lcom/android/common/appService/CameraStartUpThread$CameraOpenState;

    if-ne v0, v1, :cond_67

    .line 279
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    iget-object v1, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v1, v1, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-virtual {v1}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a03b4

    invoke-static {v1, v2}, Lcom/android/common/h;->aqk(Landroid/app/Activity;I)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/dng/j;->aPX(Lcom/android/dng/j;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 280
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPS(Lcom/android/dng/j;)Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 281
    return-void

    .line 284
    :cond_67
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dB()V

    .line 285
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->ee()V

    .line 286
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aQa(Lcom/android/dng/j;)V

    .line 288
    iget-object v0, p0, Lcom/android/dng/B;->aBs:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qJ()Lcom/android/common/appService/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/i;->iK()V

    .line 270
    return-void
.end method
