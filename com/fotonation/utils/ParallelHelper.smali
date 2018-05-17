.class public Lcom/fotonation/utils/ParallelHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ParallelHelper"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static executeAndWait(Landroid/opengl/GLSurfaceView;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .registers 7

    .prologue
    .line 29
    new-instance v0, Ljava/util/concurrent/FutureTask;

    invoke-direct {v0, p1}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 33
    const-string/jumbo v1, "ParallelHelper"

    const-string/jumbo v2, "ParallelHelper - executeAndWait() - queueEvent() - before"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, v0}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 35
    const-string/jumbo v1, "ParallelHelper"

    const-string/jumbo v2, "ParallelHelper - executeAndWait() - queueEvent() - after"

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const/4 v1, 0x0

    .line 42
    :try_start_1b
    const-string/jumbo v2, "ParallelHelper"

    const-string/jumbo v3, "ParallelHelper - executeAndWait() - get() - before"

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    .line 44
    const-string/jumbo v0, "ParallelHelper"

    const-string/jumbo v2, "ParallelHelper - executeAndWait() - get() - after"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_31
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1b .. :try_end_31} :catch_52
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_31} :catch_32

    .line 55
    :goto_31
    return-object v1

    .line 51
    :catch_32
    move-exception v0

    .line 52
    const-string/jumbo v2, "ParallelHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "executeAndWait() - InterruptedException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31

    .line 47
    :catch_52
    move-exception v0

    .line 48
    const-string/jumbo v2, "ParallelHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "executeAndWait() - ExecutionException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method
