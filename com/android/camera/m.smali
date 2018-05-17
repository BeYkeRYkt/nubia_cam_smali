.class final Lcom/android/camera/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic app:Lcom/android/camera/a;


# direct methods
.method constructor <init>(Lcom/android/camera/a;)V
    .registers 2

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 7

    .prologue
    const/4 v3, 0x1

    .line 275
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 276
    const-string/jumbo v0, "MemberScrollerManager"

    const-string/jumbo v1, "onTouch is invoked after activity pause"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return v3

    .line 279
    :cond_17
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hq()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 280
    const-string/jumbo v0, "MemberScrollerManager"

    const-string/jumbo v1, "CommandManager can\'t add"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    return v3

    .line 283
    :cond_2b
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->aAb(Lcom/android/camera/a;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 284
    const-string/jumbo v0, "MemberScrollerManager"

    const-string/jumbo v1, "DisableScollerForAWhile"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    return v3

    .line 287
    :cond_3d
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_62

    .line 288
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-eq v0, v1, :cond_62

    .line 292
    :cond_61
    return v3

    .line 289
    :cond_62
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_61

    .line 290
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_98

    .line 291
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azX(Lcom/android/camera/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_61

    .line 294
    :cond_98
    iget-object v0, p0, Lcom/android/camera/m;->app:Lcom/android/camera/a;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/camera/a;->aAj(Lcom/android/camera/a;FF)Z

    move-result v0

    if-eqz v0, :cond_a9

    .line 295
    return v3

    .line 297
    :cond_a9
    const/4 v0, 0x0

    return v0
.end method
