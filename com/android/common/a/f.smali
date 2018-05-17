.class Lcom/android/common/a/f;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private I:Landroid/os/Looper;

.field private J:Landroid/os/ConditionVariable;

.field final synthetic K:Lcom/android/common/a/a;


# direct methods
.method public constructor <init>(Lcom/android/common/a/a;)V
    .registers 3

    .prologue
    .line 780
    iput-object p1, p0, Lcom/android/common/a/f;->K:Lcom/android/common/a/a;

    .line 781
    const-string/jumbo v0, "MonitorCameraFrameThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 777
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/common/a/f;->J:Landroid/os/ConditionVariable;

    .line 782
    iget-object v0, p0, Lcom/android/common/a/f;->J:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 780
    return-void
.end method


# virtual methods
.method public ai()V
    .registers 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/common/a/f;->J:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 796
    return-void
.end method

.method public quit()V
    .registers 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/common/a/f;->I:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 800
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 787
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "MonitorCameraFrameThread run"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 788
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 789
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/a/f;->I:Landroid/os/Looper;

    .line 790
    iget-object v0, p0, Lcom/android/common/a/f;->K:Lcom/android/common/a/a;

    new-instance v1, Landroid/graphics/SurfaceTexture;

    iget-object v2, p0, Lcom/android/common/a/f;->K:Lcom/android/common/a/a;

    invoke-static {v2}, Lcom/android/common/a/a;->O(Lcom/android/common/a/a;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v0, v1}, Lcom/android/common/a/a;->R(Lcom/android/common/a/a;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 791
    iget-object v0, p0, Lcom/android/common/a/f;->J:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 792
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 793
    const-string/jumbo v0, "RenderThread"

    const-string/jumbo v1, "MonitorCameraFrameThread quit"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    return-void
.end method
