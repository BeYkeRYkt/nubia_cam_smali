.class public Lcom/android/common/storagemanager/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aaA:Lcom/android/common/storagemanager/a;

.field private final aaB:Ljava/lang/Object;

.field private aaC:Lcom/android/common/storagemanager/b;

.field private aaq:Landroid/os/HandlerThread;

.field private aar:Landroid/os/Handler;

.field private aas:Z

.field private aat:Z

.field private aau:Lcom/android/common/storagemanager/g;

.field private aav:J

.field private aaw:Ljava/util/LinkedList;

.field private aax:Landroid/os/Handler;

.field private aay:Ljava/util/LinkedList;

.field private aaz:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 58
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/common/storagemanager/f;-><init>(I)V

    .line 57
    return-void
.end method

.method public constructor <init>(I)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v2, p0, Lcom/android/common/storagemanager/f;->aaz:J

    .line 29
    iput-boolean v1, p0, Lcom/android/common/storagemanager/f;->aat:Z

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aaB:Ljava/lang/Object;

    .line 31
    iput-boolean v1, p0, Lcom/android/common/storagemanager/f;->aas:Z

    .line 32
    iput-wide v2, p0, Lcom/android/common/storagemanager/f;->aav:J

    .line 33
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    .line 34
    new-instance v0, Lcom/android/common/storagemanager/b;

    invoke-direct {v0}, Lcom/android/common/storagemanager/b;-><init>()V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aaC:Lcom/android/common/storagemanager/b;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aaA:Lcom/android/common/storagemanager/a;

    .line 39
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aay:Ljava/util/LinkedList;

    .line 279
    new-instance v0, Lcom/android/common/storagemanager/j;

    invoke-direct {v0, p0}, Lcom/android/common/storagemanager/j;-><init>(Lcom/android/common/storagemanager/f;)V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aax:Landroid/os/Handler;

    .line 62
    new-instance v0, Lcom/android/common/storagemanager/a;

    iget-object v1, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    iget-object v2, p0, Lcom/android/common/storagemanager/f;->aax:Landroid/os/Handler;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/common/storagemanager/a;-><init>(Ljava/util/LinkedList;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aaA:Lcom/android/common/storagemanager/a;

    .line 63
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaA:Lcom/android/common/storagemanager/a;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/a;->start()V

    .line 64
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "CheckStorageThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aaq:Landroid/os/HandlerThread;

    .line 65
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 66
    new-instance v0, Lcom/android/common/storagemanager/i;

    iget-object v1, p0, Lcom/android/common/storagemanager/f;->aaq:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/common/storagemanager/i;-><init>(Lcom/android/common/storagemanager/f;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/common/storagemanager/f;->aar:Landroid/os/Handler;

    .line 61
    return-void
.end method

.method private agH()J
    .registers 3

    .prologue
    .line 225
    iget-wide v0, p0, Lcom/android/common/storagemanager/f;->aav:J

    return-wide v0
.end method

.method private agI(J)Z
    .registers 8

    .prologue
    const-wide/16 v2, 0x0

    .line 210
    cmp-long v0, p1, v2

    if-gtz v0, :cond_9

    .line 211
    const-wide/32 p1, 0x1400000

    .line 213
    :cond_9
    invoke-direct {p0}, Lcom/android/common/storagemanager/f;->agH()J

    move-result-wide v0

    sub-long/2addr v0, p1

    cmp-long v0, v0, v2

    if-gtz v0, :cond_14

    .line 214
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_14
    const/4 v0, 0x1

    return v0
.end method

.method private agJ()Z
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_c

    .line 201
    const/4 v0, 0x1

    return v0

    .line 203
    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method private agL()J
    .registers 7

    .prologue
    .line 229
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/storagemanager/f;->aav:J

    .line 231
    iget-wide v0, p0, Lcom/android/common/storagemanager/f;->aav:J

    return-wide v0
.end method

.method static synthetic agM(Lcom/android/common/storagemanager/f;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aax:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic agN(Lcom/android/common/storagemanager/f;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aay:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic agO(Lcom/android/common/storagemanager/f;)Lcom/android/common/storagemanager/b;
    .registers 2

    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaC:Lcom/android/common/storagemanager/b;

    return-object v0
.end method


# virtual methods
.method public agA()J
    .registers 3

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/common/storagemanager/f;->aas:Z

    if-nez v0, :cond_7

    .line 236
    invoke-virtual {p0}, Lcom/android/common/storagemanager/f;->agx()J

    .line 238
    :cond_7
    iget-wide v0, p0, Lcom/android/common/storagemanager/f;->aaz:J

    return-wide v0
.end method

.method public agB()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 186
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaA:Lcom/android/common/storagemanager/a;

    if-eqz v0, :cond_c

    .line 187
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaA:Lcom/android/common/storagemanager/a;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/a;->stop()V

    .line 188
    iput-object v1, p0, Lcom/android/common/storagemanager/f;->aaA:Lcom/android/common/storagemanager/a;

    .line 190
    :cond_c
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaC:Lcom/android/common/storagemanager/b;

    if-eqz v0, :cond_15

    .line 191
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaC:Lcom/android/common/storagemanager/b;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/b;->agr()V

    .line 193
    :cond_15
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaq:Landroid/os/HandlerThread;

    if-eqz v0, :cond_20

    .line 194
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaq:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 195
    iput-object v1, p0, Lcom/android/common/storagemanager/f;->aaq:Landroid/os/HandlerThread;

    .line 185
    :cond_20
    return-void
.end method

.method public declared-synchronized agC(J)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    .registers 4

    .prologue
    monitor-enter p0

    .line 85
    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/common/storagemanager/f;->agw(JZ)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_8

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public agD()Z
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public agE()Lcom/android/common/storagemanager/b;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaC:Lcom/android/common/storagemanager/b;

    return-object v0
.end method

.method public agF()I
    .registers 2

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public declared-synchronized agG(Lcom/android/common/b/g;Z)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    .registers 6

    .prologue
    monitor-enter p0

    .line 152
    :try_start_1
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaA:Lcom/android/common/storagemanager/a;

    if-nez v0, :cond_12

    .line 153
    const-string/jumbo v0, "StorageManager"

    const-string/jumbo v1, "ThreadPool has stoped"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaN:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_48

    monitor-exit p0

    return-object v0

    .line 156
    :cond_12
    const-wide/16 v0, 0x0

    :try_start_14
    invoke-virtual {p0, v0, v1, p2}, Lcom/android/common/storagemanager/f;->agw(JZ)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_1a
    .catchall {:try_start_14 .. :try_end_1a} :catchall_48

    if-eq v0, v1, :cond_1e

    monitor-exit p0

    .line 158
    return-object v0

    .line 159
    :cond_1e
    :try_start_1e
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 160
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaH:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_28
    .catchall {:try_start_1e .. :try_end_28} :catchall_48

    monitor-exit p0

    return-object v0

    .line 162
    :cond_2a
    :try_start_2a
    iget-object v1, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    monitor-enter v1
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_48

    .line 163
    :try_start_2d
    const-string/jumbo v0, "StorageManager"

    const-string/jumbo v2, "request queue add request"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->notify()V
    :try_end_40
    .catchall {:try_start_2d .. :try_end_40} :catchall_45

    :try_start_40
    monitor-exit v1

    .line 167
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_48

    monitor-exit p0

    return-object v0

    .line 162
    :catchall_45
    move-exception v0

    :try_start_46
    monitor-exit v1

    throw v0
    :try_end_48
    .catchall {:try_start_46 .. :try_end_48} :catchall_48

    :catchall_48
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public agK(Lcom/android/common/storagemanager/g;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/common/storagemanager/f;->aau:Lcom/android/common/storagemanager/g;

    .line 69
    return-void
.end method

.method public declared-synchronized agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    .registers 3

    .prologue
    monitor-enter p0

    .line 129
    :try_start_1
    invoke-static {}, Lcom/android/common/f;->aox()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 130
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/android/common/b/g;->be(Z)V

    .line 131
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/storagemanager/f;->agG(Lcom/android/common/b/g;Z)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_19

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 133
    :cond_12
    const/4 v0, 0x1

    :try_start_13
    invoke-virtual {p0, p1, v0}, Lcom/android/common/storagemanager/f;->agG(Lcom/android/common/b/g;Z)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_19

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_19
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized agw(JZ)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    .registers 11

    .prologue
    monitor-enter p0

    .line 100
    if-eqz p3, :cond_6

    .line 101
    :try_start_3
    invoke-virtual {p0}, Lcom/android/common/storagemanager/f;->agx()J

    .line 103
    :cond_6
    invoke-direct {p0}, Lcom/android/common/storagemanager/f;->agL()J

    .line 104
    const-string/jumbo v0, "StorageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "remaining memory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/common/storagemanager/f;->aav:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "MB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string/jumbo v2, " storage size "

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    iget-wide v2, p0, Lcom/android/common/storagemanager/f;->aaz:J

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 104
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 105
    const-string/jumbo v2, "MB"

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    const-string/jumbo v2, " queue used size "

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/android/common/storagemanager/f;->aaw:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    .line 104
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lcom/android/common/storagemanager/f;->aaz:J

    const-wide/32 v2, 0x6400000

    cmp-long v0, v0, v2

    if-gtz v0, :cond_7e

    .line 109
    const-string/jumbo v0, "StorageManager"

    const-string/jumbo v1, "Current storage is not sufficient"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aau:Lcom/android/common/storagemanager/g;

    if-eqz v0, :cond_7a

    .line 111
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aau:Lcom/android/common/storagemanager/g;

    iget-wide v2, p0, Lcom/android/common/storagemanager/f;->aaz:J

    invoke-interface {v0, v2, v3}, Lcom/android/common/storagemanager/g;->tF(J)V

    .line 113
    :cond_7a
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaF:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_7c
    .catchall {:try_start_3 .. :try_end_7c} :catchall_b1

    monitor-exit p0

    return-object v0

    .line 114
    :cond_7e
    :try_start_7e
    invoke-direct {p0, p1, p2}, Lcom/android/common/storagemanager/f;->agI(J)Z

    move-result v0

    if-nez v0, :cond_91

    .line 115
    const-string/jumbo v0, "StorageManager"

    const-string/jumbo v1, "Current process remaining memory is not sufficient"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaG:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_8f
    .catchall {:try_start_7e .. :try_end_8f} :catchall_b1

    monitor-exit p0

    return-object v0

    .line 117
    :cond_91
    :try_start_91
    invoke-direct {p0}, Lcom/android/common/storagemanager/f;->agJ()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 118
    const-string/jumbo v0, "StorageManager"

    const-string/jumbo v1, "Request queue is full"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaK:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_a2
    .catchall {:try_start_91 .. :try_end_a2} :catchall_b1

    monitor-exit p0

    return-object v0

    .line 121
    :cond_a4
    :try_start_a4
    const-string/jumbo v0, "StorageManager"

    const-string/jumbo v1, "Able to add request to queue now"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    :try_end_af
    .catchall {:try_start_a4 .. :try_end_af} :catchall_b1

    monitor-exit p0

    return-object v0

    :catchall_b1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public agx()J
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 245
    iget-object v1, p0, Lcom/android/common/storagemanager/f;->aaB:Ljava/lang/Object;

    monitor-enter v1

    .line 246
    :try_start_4
    iget-boolean v0, p0, Lcom/android/common/storagemanager/f;->aat:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_31

    if-eqz v0, :cond_2d

    .line 248
    :try_start_8
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaB:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 249
    iget-wide v2, p0, Lcom/android/common/storagemanager/f;->aaz:J
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_f} :catch_11
    .catchall {:try_start_8 .. :try_end_f} :catchall_31

    monitor-exit v1

    return-wide v2

    .line 250
    :catch_11
    move-exception v0

    .line 251
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_31

    :goto_15
    monitor-exit v1

    .line 257
    invoke-static {}, Lcom/android/common/f;->aor()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/storagemanager/f;->aaz:J

    .line 258
    iput-boolean v2, p0, Lcom/android/common/storagemanager/f;->aas:Z

    .line 259
    iget-object v1, p0, Lcom/android/common/storagemanager/f;->aaB:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    const/4 v0, 0x0

    :try_start_22
    iput-boolean v0, p0, Lcom/android/common/storagemanager/f;->aat:Z

    .line 261
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaB:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_29
    .catchall {:try_start_22 .. :try_end_29} :catchall_34

    monitor-exit v1

    .line 263
    iget-wide v0, p0, Lcom/android/common/storagemanager/f;->aaz:J

    return-wide v0

    .line 254
    :cond_2d
    const/4 v0, 0x1

    :try_start_2e
    iput-boolean v0, p0, Lcom/android/common/storagemanager/f;->aat:Z
    :try_end_30
    .catchall {:try_start_2e .. :try_end_30} :catchall_31

    goto :goto_15

    .line 245
    :catchall_31
    move-exception v0

    monitor-exit v1

    throw v0

    .line 259
    :catchall_34
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public agy(Lcom/android/common/storagemanager/h;)V
    .registers 5

    .prologue
    .line 271
    iget-object v1, p0, Lcom/android/common/storagemanager/f;->aay:Ljava/util/LinkedList;

    monitor-enter v1

    .line 272
    if-eqz p1, :cond_a

    .line 273
    :try_start_5
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aay:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 275
    :cond_a
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aar:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_12

    monitor-exit v1

    .line 270
    return-void

    .line 271
    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public agz(Z)V
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/common/storagemanager/f;->aaC:Lcom/android/common/storagemanager/b;

    invoke-virtual {v0, p1}, Lcom/android/common/storagemanager/b;->ags(Z)V

    .line 73
    return-void
.end method
