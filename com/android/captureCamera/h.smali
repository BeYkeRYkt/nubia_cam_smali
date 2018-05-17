.class final Lcom/android/captureCamera/h;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic azu:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 2

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .prologue
    .line 105
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v1, p1}, Lcom/android/captureCamera/CaptureCameraService;->aOx(Lcom/android/captureCamera/CaptureCameraService;Landroid/content/Context;)Landroid/content/Context;

    .line 107
    const-string/jumbo v1, "CaptureCameraService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOB(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result v0

    if-nez v0, :cond_2c

    return-void

    .line 109
    :cond_2c
    iget-object v0, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOC(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 110
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "isPhoneCalled!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 114
    :cond_3e
    invoke-static {}, Lcom/android/common/h;->apF()Z

    move-result v0

    if-nez v0, :cond_50

    iget-object v0, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-virtual {v0}, Lcom/android/captureCamera/CaptureCameraService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/common/h;->apR(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 115
    :cond_50
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "isActivityBaseStart or isTopActivity"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    return-void

    .line 118
    :cond_5a
    iget-object v0, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOw(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/d;

    move-result-object v0

    if-eqz v0, :cond_78

    iget-object v0, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOw(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/captureCamera/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/captureCamera/d;->aNA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_78

    .line 119
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "It is screen on!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void

    .line 122
    :cond_78
    iget-object v0, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOu(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/common/storagemanager/f;

    move-result-object v0

    iget-object v1, p0, Lcom/android/captureCamera/h;->azu:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v1}, Lcom/android/captureCamera/CaptureCameraService;->aOv(Lcom/android/captureCamera/CaptureCameraService;)Lcom/android/common/storagemanager/h;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 104
    return-void
.end method
