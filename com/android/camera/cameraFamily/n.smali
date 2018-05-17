.class final Lcom/android/camera/cameraFamily/n;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic amw:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/camera/cameraFamily/n;->amw:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 107
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 108
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 109
    iget-object v1, p0, Lcom/android/camera/cameraFamily/n;->amw:Lcom/android/camera/cameraFamily/a;

    iget-object v2, p0, Lcom/android/camera/cameraFamily/n;->amw:Lcom/android/camera/cameraFamily/a;

    invoke-static {v2}, Lcom/android/camera/cameraFamily/a;->awX(Lcom/android/camera/cameraFamily/a;)[Landroid/view/View;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/cameraFamily/a;->awW(Lcom/android/camera/cameraFamily/a;[Landroid/view/View;)[Landroid/view/View;

    .line 110
    iget-object v1, p0, Lcom/android/camera/cameraFamily/n;->amw:Lcom/android/camera/cameraFamily/a;

    invoke-static {v1}, Lcom/android/camera/cameraFamily/a;->awL(Lcom/android/camera/cameraFamily/a;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 106
    return-void
.end method
