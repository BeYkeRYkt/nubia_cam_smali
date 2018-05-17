.class public Lcom/fotonation/utils/Profiler;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_WORKING:I = 0x1


# instance fields
.field private mFirstStartMet:Z

.field private mFirstStartTime:J

.field private mGetTimeFun:Ljava/util/concurrent/Callable;

.field private mName:Ljava/lang/String;

.field private mStartTime:J

.field private mState:I

.field private mTotalRunningTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/fotonation/utils/Profiler;->mName:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/fotonation/utils/Profiler;->mGetTimeFun:Ljava/util/concurrent/Callable;

    .line 38
    iput v2, p0, Lcom/fotonation/utils/Profiler;->mState:I

    .line 39
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fotonation/utils/Profiler;->mTotalRunningTime:J

    .line 40
    iput-boolean v2, p0, Lcom/fotonation/utils/Profiler;->mFirstStartMet:Z

    .line 35
    return-void
.end method

.method private getCurrentTime()J
    .registers 5

    .prologue
    .line 44
    const-wide/16 v2, 0x0

    .line 47
    :try_start_2
    iget-object v0, p0, Lcom/fotonation/utils/Profiler;->mGetTimeFun:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_d} :catch_f

    move-result-wide v0

    .line 51
    :goto_e
    return-wide v0

    .line 48
    :catch_f
    move-exception v0

    move-wide v0, v2

    goto :goto_e
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fotonation/utils/Profiler;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getRunningTime()J
    .registers 4

    .prologue
    .line 60
    iget v0, p0, Lcom/fotonation/utils/Profiler;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 61
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Profiler: getRunningTime() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fotonation/utils/Profiler;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " still working!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_28
    iget-wide v0, p0, Lcom/fotonation/utils/Profiler;->mTotalRunningTime:J

    return-wide v0
.end method

.method public getState()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/fotonation/utils/Profiler;->mState:I

    return v0
.end method

.method public getTimeFromFirstStart()J
    .registers 5

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/fotonation/utils/Profiler;->mFirstStartMet:Z

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/fotonation/utils/Profiler;->getCurrentTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/fotonation/utils/Profiler;->mFirstStartTime:J

    sub-long/2addr v0, v2

    :goto_b
    return-wide v0

    :cond_c
    const-wide/16 v0, 0x0

    goto :goto_b
.end method

.method public resetTimer()V
    .registers 4

    .prologue
    .line 104
    iget v0, p0, Lcom/fotonation/utils/Profiler;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Profiler: startTimer() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fotonation/utils/Profiler;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " still working!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/fotonation/utils/Profiler;->mTotalRunningTime:J

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fotonation/utils/Profiler;->mFirstStartMet:Z

    .line 103
    return-void
.end method

.method public startTimer()V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 71
    iget v0, p0, Lcom/fotonation/utils/Profiler;->mState:I

    if-ne v0, v1, :cond_28

    .line 72
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Profiler: startTimer() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fotonation/utils/Profiler;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " still working!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_28
    iput v1, p0, Lcom/fotonation/utils/Profiler;->mState:I

    .line 77
    iget-boolean v0, p0, Lcom/fotonation/utils/Profiler;->mFirstStartMet:Z

    if-nez v0, :cond_39

    .line 78
    iput-boolean v1, p0, Lcom/fotonation/utils/Profiler;->mFirstStartMet:Z

    .line 79
    invoke-direct {p0}, Lcom/fotonation/utils/Profiler;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fotonation/utils/Profiler;->mFirstStartTime:J

    iput-wide v0, p0, Lcom/fotonation/utils/Profiler;->mStartTime:J

    .line 70
    :goto_38
    return-void

    .line 81
    :cond_39
    invoke-direct {p0}, Lcom/fotonation/utils/Profiler;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/fotonation/utils/Profiler;->mStartTime:J

    goto :goto_38
.end method

.method public stopTimer()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Lcom/fotonation/utils/Profiler;->getCurrentTime()J

    move-result-wide v0

    .line 92
    iget v2, p0, Lcom/fotonation/utils/Profiler;->mState:I

    if-nez v2, :cond_2c

    .line 93
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Profiler: stopTimer() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fotonation/utils/Profiler;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " was not started!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_2c
    iput v3, p0, Lcom/fotonation/utils/Profiler;->mState:I

    .line 97
    iget-wide v2, p0, Lcom/fotonation/utils/Profiler;->mTotalRunningTime:J

    iget-wide v4, p0, Lcom/fotonation/utils/Profiler;->mStartTime:J

    sub-long/2addr v0, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/fotonation/utils/Profiler;->mTotalRunningTime:J

    .line 89
    return-void
.end method
