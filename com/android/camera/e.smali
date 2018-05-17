.class Lcom/android/camera/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private aou:Landroid/content/Context;

.field final synthetic aov:Lcom/android/camera/BootCompletedReceiver;


# direct methods
.method public constructor <init>(Lcom/android/camera/BootCompletedReceiver;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/camera/e;->aov:Lcom/android/camera/BootCompletedReceiver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    .line 38
    return-void
.end method


# virtual methods
.method protected varargs aAx([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 44
    const-string/jumbo v0, "BootCompletedReceiver"

    const-string/jumbo v1, "BootCompletedReceiver doInBackground"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    if-nez v0, :cond_13

    .line 46
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 47
    :cond_13
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acu()Z

    move-result v0

    if-eqz v0, :cond_48

    .line 49
    new-instance v0, Lcom/android/common/setting/d;

    iget-object v1, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    invoke-direct {v0, v1, v3, v3}, Lcom/android/common/setting/d;-><init>(Landroid/content/Context;ZZ)V

    .line 50
    new-instance v0, Lcom/android/common/setting/e;

    iget-object v1, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/common/setting/e;-><init>(Landroid/content/Context;)V

    .line 51
    const-string/jumbo v1, "pref_key_capture_camera"

    const-string/jumbo v2, "off"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_48

    .line 53
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 56
    :cond_48
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected aAy(Ljava/lang/Boolean;)V
    .registers 6

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 62
    iget-object v0, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    if-nez v0, :cond_8

    .line 63
    return-void

    .line 64
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 65
    const-string/jumbo v1, "BootCompletedReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "flag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    if-eqz v0, :cond_36

    .line 68
    :try_start_28
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    .line 69
    const-class v2, Lcom/android/captureCamera/CaptureCameraService;

    .line 68
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    iget-object v1, p0, Lcom/android/camera/e;->aou:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_36} :catch_37

    .line 60
    :cond_36
    :goto_36
    return-void

    .line 71
    :catch_37
    move-exception v0

    .line 72
    const-string/jumbo v1, "BootCompletedReceiver"

    const-string/jumbo v2, "start service failed!"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_36
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/camera/e;->aAx([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 60
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/camera/e;->aAy(Ljava/lang/Boolean;)V

    return-void
.end method
