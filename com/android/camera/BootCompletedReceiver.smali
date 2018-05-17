.class public Lcom/android/camera/BootCompletedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private aAw(Landroid/content/Context;)V
    .registers 5

    .prologue
    .line 27
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "nubia.camera.bigApertureService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v1, "com.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    const-string/jumbo v1, "stop-after-task-done"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 26
    :cond_26
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/camera/BootCompletedReceiver;->aAw(Landroid/content/Context;)V

    .line 22
    new-instance v0, Lcom/android/camera/e;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/e;-><init>(Lcom/android/camera/BootCompletedReceiver;Landroid/content/Context;)V

    .line 23
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/camera/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 20
    return-void
.end method
