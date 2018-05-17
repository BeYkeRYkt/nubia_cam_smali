.class Lcom/android/videomaker/d;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic aKU:Lcom/android/videomaker/b;


# direct methods
.method private constructor <init>(Lcom/android/videomaker/b;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videomaker/b;Lcom/android/videomaker/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/videomaker/d;-><init>(Lcom/android/videomaker/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 52
    :goto_1
    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bai(Lcom/android/videomaker/b;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 53
    :cond_9
    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bag(Lcom/android/videomaker/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_9

    .line 56
    invoke-static {}, Lcom/android/videomaker/b;->bad()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 57
    :try_start_1b
    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bag(Lcom/android/videomaker/b;)Ljava/util/LinkedList;

    move-result-object v0

    iget-object v2, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v2}, Lcom/android/videomaker/b;->bam(Lcom/android/videomaker/b;)Lcom/android/videomaker/i;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bak(Lcom/android/videomaker/b;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2}, Lcom/android/videomaker/b;->bal(Lcom/android/videomaker/b;I)I

    .line 59
    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bak(Lcom/android/videomaker/b;)I

    move-result v0

    iget-object v2, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v2}, Lcom/android/videomaker/b;->baf(Lcom/android/videomaker/b;)I

    move-result v2

    if-lt v0, v2, :cond_4d

    .line 60
    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bah(Lcom/android/videomaker/b;)Lcom/android/videomaker/e;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/videomaker/e;->sendEmptyMessage(I)Z

    .line 62
    :cond_4d
    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bae(Lcom/android/videomaker/b;)Z

    move-result v0

    if-eqz v0, :cond_68

    iget-object v0, p0, Lcom/android/videomaker/d;->aKU:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->bag(Lcom/android/videomaker/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne v0, v3, :cond_68

    .line 63
    invoke-static {}, Lcom/android/videomaker/b;->bad()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_68
    .catchall {:try_start_1b .. :try_end_68} :catchall_6a

    :cond_68
    monitor-exit v1

    goto :goto_1

    .line 56
    :catchall_6a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 50
    :cond_6d
    return-void
.end method
