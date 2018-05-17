.class Lcom/android/videomaker/service/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final aKl:Ljava/util/List;


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/videomaker/service/b;->aKl:Ljava/util/List;

    .line 45
    return-void
.end method


# virtual methods
.method public declared-synchronized aZJ(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;
    .registers 5

    .prologue
    monitor-enter p0

    .line 54
    :try_start_1
    invoke-virtual {p0}, Lcom/android/videomaker/service/b;->aZL()Landroid/content/Intent;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    .line 56
    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aZK(Landroid/content/Intent;)V
    .registers 3

    .prologue
    monitor-enter p0

    .line 85
    :try_start_1
    iget-object v0, p0, Lcom/android/videomaker/service/b;->aKl:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 84
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aZL()Landroid/content/Intent;
    .registers 4

    .prologue
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/android/videomaker/service/b;->aKl:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_37

    .line 65
    iget-object v0, p0, Lcom/android/videomaker/service/b;->aKl:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 67
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2e

    goto :goto_1e

    :catchall_2e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 71
    :cond_31
    const/4 v1, 0x0

    :try_start_32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_2e

    monitor-exit p0

    .line 72
    return-object v0

    .line 74
    :cond_37
    :try_start_37
    const-string/jumbo v0, "IntentPool"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 75
    const-string/jumbo v0, "IntentPool"

    const-string/jumbo v1, "Pool enlarged"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :cond_4a
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V
    :try_end_4f
    .catchall {:try_start_37 .. :try_end_4f} :catchall_2e

    monitor-exit p0

    return-object v0
.end method
