.class public Lcom/android/common/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ahN:Lcom/android/common/m;

.field private ahO:Landroid/os/Handler;

.field private ahP:J

.field private ahQ:Z

.field private ahR:J

.field private ahS:Ljava/lang/Runnable;

.field private ahT:Ljava/lang/Thread;

.field private ahU:I

.field private ahV:J

.field private ahW:J

.field private mStartTime:J


# direct methods
.method public constructor <init>(JLcom/android/common/m;)V
    .registers 9

    .prologue
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/l;->ahQ:Z

    .line 13
    iput-wide v2, p0, Lcom/android/common/l;->mStartTime:J

    .line 14
    iput-wide v2, p0, Lcom/android/common/l;->ahV:J

    .line 15
    iput-wide v2, p0, Lcom/android/common/l;->ahP:J

    .line 16
    iput-wide v2, p0, Lcom/android/common/l;->ahR:J

    .line 17
    iput-wide v2, p0, Lcom/android/common/l;->ahW:J

    .line 18
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/l;->ahU:I

    .line 19
    iput-object v1, p0, Lcom/android/common/l;->ahN:Lcom/android/common/m;

    .line 20
    iput-object v1, p0, Lcom/android/common/l;->ahT:Ljava/lang/Thread;

    .line 21
    new-instance v0, Lcom/android/common/K;

    invoke-direct {v0, p0}, Lcom/android/common/K;-><init>(Lcom/android/common/l;)V

    iput-object v0, p0, Lcom/android/common/l;->ahO:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/android/common/L;

    invoke-direct {v0, p0}, Lcom/android/common/L;-><init>(Lcom/android/common/l;)V

    iput-object v0, p0, Lcom/android/common/l;->ahS:Ljava/lang/Runnable;

    .line 95
    iput-object p3, p0, Lcom/android/common/l;->ahN:Lcom/android/common/m;

    .line 96
    iput-wide p1, p0, Lcom/android/common/l;->ahP:J

    .line 97
    invoke-direct {p0}, Lcom/android/common/l;->aqC()V

    .line 94
    return-void
.end method

.method private aqC()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x3e8

    .line 149
    iget-wide v0, p0, Lcom/android/common/l;->ahP:J

    const-wide/16 v2, 0x64

    cmp-long v0, v0, v2

    if-ltz v0, :cond_18

    iget-wide v0, p0, Lcom/android/common/l;->ahP:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_18

    .line 150
    iget-wide v0, p0, Lcom/android/common/l;->ahP:J

    const-wide/16 v2, 0xa

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/common/l;->ahW:J

    .line 148
    :cond_17
    :goto_17
    return-void

    .line 151
    :cond_18
    iget-wide v0, p0, Lcom/android/common/l;->ahP:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_17

    .line 152
    const-wide/16 v0, 0x3de

    iput-wide v0, p0, Lcom/android/common/l;->ahW:J

    goto :goto_17
.end method

.method static synthetic aqD(Lcom/android/common/l;)Lcom/android/common/m;
    .registers 2

    iget-object v0, p0, Lcom/android/common/l;->ahN:Lcom/android/common/m;

    return-object v0
.end method

.method static synthetic aqE(Lcom/android/common/l;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/l;->ahO:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aqF(Lcom/android/common/l;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/l;->ahP:J

    return-wide v0
.end method

.method static synthetic aqG(Lcom/android/common/l;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/l;->ahQ:Z

    return v0
.end method

.method static synthetic aqH(Lcom/android/common/l;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/l;->ahR:J

    return-wide v0
.end method

.method static synthetic aqI(Lcom/android/common/l;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/l;->mStartTime:J

    return-wide v0
.end method

.method static synthetic aqJ(Lcom/android/common/l;)I
    .registers 2

    iget v0, p0, Lcom/android/common/l;->ahU:I

    return v0
.end method

.method static synthetic aqK(Lcom/android/common/l;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/l;->ahV:J

    return-wide v0
.end method

.method static synthetic aqL(Lcom/android/common/l;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/l;->ahW:J

    return-wide v0
.end method

.method static synthetic aqM(Lcom/android/common/l;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/common/l;->ahR:J

    return-wide p1
.end method

.method static synthetic aqN(Lcom/android/common/l;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/l;->ahU:I

    return p1
.end method

.method static synthetic aqO(Lcom/android/common/l;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/common/l;->ahV:J

    return-wide p1
.end method


# virtual methods
.method public aqA()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const-wide/16 v2, 0x0

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/l;->ahQ:Z

    .line 112
    iput-wide v2, p0, Lcom/android/common/l;->mStartTime:J

    .line 113
    iput-wide v2, p0, Lcom/android/common/l;->ahV:J

    .line 114
    iput-wide v2, p0, Lcom/android/common/l;->ahR:J

    .line 115
    iput v4, p0, Lcom/android/common/l;->ahU:I

    .line 116
    iget-object v1, p0, Lcom/android/common/l;->ahS:Ljava/lang/Runnable;

    monitor-enter v1

    .line 117
    :try_start_11
    iget-object v0, p0, Lcom/android/common/l;->ahS:Ljava/lang/Runnable;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_25

    monitor-exit v1

    .line 120
    :try_start_17
    iget-object v0, p0, Lcom/android/common/l;->ahT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V

    .line 121
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/l;->ahT:Ljava/lang/Thread;
    :try_end_1f
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1f} :catch_28

    .line 125
    :goto_1f
    iget-object v0, p0, Lcom/android/common/l;->ahO:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 110
    return-void

    .line 116
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0

    .line 122
    :catch_28
    move-exception v0

    .line 123
    const-string/jumbo v1, "MyTimer"

    const-string/jumbo v2, "finish join error"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f
.end method

.method public aqB(J)V
    .registers 6

    .prologue
    .line 135
    const-string/jumbo v0, "MyTimer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInterval = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    iput-wide p1, p0, Lcom/android/common/l;->ahP:J

    .line 137
    invoke-direct {p0}, Lcom/android/common/l;->aqC()V

    .line 134
    return-void
.end method

.method public aqz()Z
    .registers 2

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/common/l;->ahQ:Z

    return v0
.end method

.method public start()V
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/l;->ahQ:Z

    .line 102
    iget-wide v0, p0, Lcom/android/common/l;->ahP:J

    iput-wide v0, p0, Lcom/android/common/l;->ahR:J

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/l;->mStartTime:J

    .line 104
    iget-object v0, p0, Lcom/android/common/l;->ahT:Ljava/lang/Thread;

    if-nez v0, :cond_1f

    .line 105
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/common/l;->ahS:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/common/l;->ahT:Ljava/lang/Thread;

    .line 106
    iget-object v0, p0, Lcom/android/common/l;->ahT:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    :cond_1f
    return-void
.end method
