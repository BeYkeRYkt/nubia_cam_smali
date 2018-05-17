.class final Lcom/android/common/ui/bp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic EB:Lcom/android/common/ui/NubiaProgressWheel;


# direct methods
.method constructor <init>(Lcom/android/common/ui/NubiaProgressWheel;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide v6, 0x3fd3333340000000L    # 0.30000001192092896

    .line 60
    :cond_5
    :goto_5
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FW(Lcom/android/common/ui/NubiaProgressWheel;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 62
    :try_start_d
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->Gb(Lcom/android/common/ui/NubiaProgressWheel;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 64
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FW(Lcom/android/common/ui/NubiaProgressWheel;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 65
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FY(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v2

    iget-object v1, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v1}, Lcom/android/common/ui/NubiaProgressWheel;->FZ(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->Gd(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 66
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->Ga(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v2

    add-double/2addr v2, v6

    invoke-static {v0, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->Gf(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 67
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FY(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpl-double v0, v0, v2

    if-gez v0, :cond_50

    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FY(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_64

    .line 68
    :cond_50
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FZ(Lcom/android/common/ui/NubiaProgressWheel;)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-nez v0, :cond_8c

    .line 69
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    const-wide v2, -0x402cccccc0000000L    # -0.30000001192092896

    invoke-static {v0, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->Ge(Lcom/android/common/ui/NubiaProgressWheel;D)D

    .line 74
    :cond_64
    :goto_64
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FX(Lcom/android/common/ui/NubiaProgressWheel;)Ljava/lang/Boolean;

    move-result-object v1

    monitor-enter v1
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_6b} :catch_89

    .line 75
    :try_start_6b
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-static {v0}, Lcom/android/common/ui/NubiaProgressWheel;->FX(Lcom/android/common/ui/NubiaProgressWheel;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_86

    .line 76
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    invoke-virtual {v0}, Lcom/android/common/ui/NubiaProgressWheel;->postInvalidate()V

    .line 77
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/ui/NubiaProgressWheel;->Gc(Lcom/android/common/ui/NubiaProgressWheel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_86
    .catchall {:try_start_6b .. :try_end_86} :catchall_97

    :cond_86
    :try_start_86
    monitor-exit v1

    goto/16 :goto_5

    .line 81
    :catch_89
    move-exception v0

    goto/16 :goto_5

    .line 71
    :cond_8c
    iget-object v0, p0, Lcom/android/common/ui/bp;->EB:Lcom/android/common/ui/NubiaProgressWheel;

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    invoke-static {v0, v2, v3}, Lcom/android/common/ui/NubiaProgressWheel;->Ge(Lcom/android/common/ui/NubiaProgressWheel;D)D

    goto :goto_64

    .line 74
    :catchall_97
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9a} :catch_89

    .line 59
    :cond_9a
    return-void
.end method
