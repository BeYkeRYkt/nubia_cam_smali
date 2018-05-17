.class final Lcom/android/captureCamera/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/storagemanager/h;


# instance fields
.field final synthetic azv:Lcom/android/captureCamera/CaptureCameraService;


# direct methods
.method constructor <init>(Lcom/android/captureCamera/CaptureCameraService;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public agP(JZ)V
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 130
    const-string/jumbo v0, "CaptureCameraService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUpdateStorageFinish "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOr(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result v0

    if-nez v0, :cond_50

    .line 132
    const-string/jumbo v0, "CaptureCameraService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsServiceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v2}, Lcom/android/captureCamera/CaptureCameraService;->aOr(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void

    .line 135
    :cond_50
    if-nez p3, :cond_5c

    .line 136
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "It is have no storage!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void

    .line 139
    :cond_5c
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOq(Lcom/android/captureCamera/CaptureCameraService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOA(Lcom/android/captureCamera/CaptureCameraService;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 142
    :try_start_6f
    const-string/jumbo v0, "CaptureCameraService"

    const-string/jumbo v1, "startCamera"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOH(Lcom/android/captureCamera/CaptureCameraService;)V

    .line 144
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/captureCamera/CaptureCameraService;->aOy(Lcom/android/captureCamera/CaptureCameraService;Z)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_83} :catch_89

    .line 160
    :cond_83
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOI(Lcom/android/captureCamera/CaptureCameraService;)V

    .line 129
    return-void

    .line 145
    :catch_89
    move-exception v0

    .line 146
    iget-object v1, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v1, v3}, Lcom/android/captureCamera/CaptureCameraService;->aOG(Lcom/android/captureCamera/CaptureCameraService;Z)V

    .line 147
    const-string/jumbo v1, "CaptureCameraService"

    const-string/jumbo v2, "startCamera failed"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOp(Lcom/android/captureCamera/CaptureCameraService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/h;->apG(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 150
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOp(Lcom/android/captureCamera/CaptureCameraService;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0a02d0

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 157
    :goto_b4
    return-void

    .line 153
    :cond_b5
    iget-object v0, p0, Lcom/android/captureCamera/i;->azv:Lcom/android/captureCamera/CaptureCameraService;

    invoke-static {v0}, Lcom/android/captureCamera/CaptureCameraService;->aOp(Lcom/android/captureCamera/CaptureCameraService;)Landroid/content/Context;

    move-result-object v0

    .line 154
    const v1, 0x7f0a03b4

    .line 153
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_b4
.end method
