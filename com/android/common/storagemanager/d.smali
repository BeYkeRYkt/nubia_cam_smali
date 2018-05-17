.class public Lcom/android/common/storagemanager/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private aal:Z

.field private aam:Ljava/util/LinkedList;

.field private aan:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;Landroid/os/Handler;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 21
    const-string/jumbo v0, "StorageThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object v1, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/storagemanager/d;->aal:Z

    .line 16
    iput-object v1, p0, Lcom/android/common/storagemanager/d;->aan:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    .line 23
    iput-object p2, p0, Lcom/android/common/storagemanager/d;->aan:Landroid/os/Handler;

    .line 20
    return-void
.end method


# virtual methods
.method public agt()V
    .registers 5

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/common/storagemanager/d;->aal:Z

    if-eqz v0, :cond_2a

    .line 66
    const-string/jumbo v0, "StorageThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/storagemanager/d;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has stoped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void

    .line 69
    :cond_2a
    iget-object v1, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    monitor-enter v1

    .line 70
    const/4 v0, 0x1

    :try_start_2e
    iput-boolean v0, p0, Lcom/android/common/storagemanager/d;->aal:Z

    .line 71
    iget-object v0, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notifyAll()V
    :try_end_35
    .catchall {:try_start_2e .. :try_end_35} :catchall_37

    monitor-exit v1

    .line 64
    return-void

    .line 69
    :catchall_37
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public run()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 28
    const-string/jumbo v0, "StorageThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/storagemanager/d;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_26
    :goto_26
    iget-boolean v0, p0, Lcom/android/common/storagemanager/d;->aal:Z

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    :goto_30
    if-nez v0, :cond_42

    .line 31
    iget-object v1, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    monitor-enter v1

    .line 32
    :try_start_35
    iget-boolean v0, p0, Lcom/android/common/storagemanager/d;->aal:Z

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_80

    move-result v0

    if-eqz v0, :cond_6c

    monitor-exit v1

    .line 60
    :cond_42
    iput-object v4, p0, Lcom/android/common/storagemanager/d;->aan:Landroid/os/Handler;

    .line 61
    const-string/jumbo v0, "StorageThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/storagemanager/d;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void

    .line 30
    :cond_6a
    const/4 v0, 0x0

    goto :goto_30

    .line 35
    :cond_6c
    :try_start_6c
    iget-object v0, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_71
    .catchall {:try_start_6c .. :try_end_71} :catchall_80

    move-result v0

    if-eqz v0, :cond_83

    .line 37
    :try_start_74
    iget-object v0, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->wait()V
    :try_end_79
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_79} :catch_7b
    .catchall {:try_start_74 .. :try_end_79} :catchall_80

    :goto_79
    monitor-exit v1

    goto :goto_26

    .line 38
    :catch_7b
    move-exception v0

    .line 39
    :try_start_7c
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_7f
    .catchall {:try_start_7c .. :try_end_7f} :catchall_80

    goto :goto_79

    .line 31
    :catchall_80
    move-exception v0

    monitor-exit v1

    throw v0

    .line 43
    :cond_83
    :try_start_83
    const-string/jumbo v0, "StorageThread"

    const-string/jumbo v2, "request queue remove first"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iget-object v0, p0, Lcom/android/common/storagemanager/d;->aam:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/b/g;
    :try_end_94
    .catchall {:try_start_83 .. :try_end_94} :catchall_80

    monitor-exit v1

    .line 47
    if-eqz v0, :cond_26

    .line 48
    invoke-interface {v0}, Lcom/android/common/b/g;->bg()Lcom/android/common/storagemanager/c;

    move-result-object v1

    .line 49
    invoke-interface {v0, v1}, Lcom/android/common/b/g;->bh(Lcom/android/common/storagemanager/c;)V

    .line 51
    if-eqz v1, :cond_26

    .line 52
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 53
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 54
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 55
    iget-object v1, p0, Lcom/android/common/storagemanager/d;->aan:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_26
.end method
