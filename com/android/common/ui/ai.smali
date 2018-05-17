.class public Lcom/android/common/ui/ai;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final AP:Landroid/os/Handler;

.field private final AQ:Ljava/lang/Runnable;


# virtual methods
.method public cancel()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/common/ui/ai;->AP:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/common/ui/ai;->AQ:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 92
    return-void
.end method
