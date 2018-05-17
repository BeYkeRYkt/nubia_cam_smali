.class public Lcn/qcom/camera/QCOMMediaRecorderEx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/cameradevice/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public JL(Landroid/media/MediaRecorder;)V
    .registers 6

    .prologue
    .line 17
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string/jumbo v1, "pause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 18
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 19
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_18} :catch_51
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_18} :catch_35
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_18} :catch_19

    .line 15
    :goto_18
    return-void

    .line 24
    :catch_19
    move-exception v0

    .line 25
    const-string/jumbo v1, "QCOMMediaRecorderEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pause method invoke error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 22
    :catch_35
    move-exception v0

    .line 23
    const-string/jumbo v1, "QCOMMediaRecorderEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pause method Access error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18

    .line 20
    :catch_51
    move-exception v0

    .line 21
    const-string/jumbo v1, "QCOMMediaRecorderEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no pause method error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method public JM(Landroid/media/MediaRecorder;I)V
    .registers 3

    .prologue
    .line 30
    return-void
.end method

.method public JN(Landroid/media/MediaRecorder;IZ)V
    .registers 4

    .prologue
    .line 36
    return-void
.end method
