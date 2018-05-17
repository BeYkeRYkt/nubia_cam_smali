.class public Lcom/android/captureCamera/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ayn:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/captureCamera/a;->ayn:I

    .line 3
    return-void
.end method


# virtual methods
.method public declared-synchronized aNk()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 7
    :try_start_1
    iget v0, p0, Lcom/android/captureCamera/a;->ayn:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/captureCamera/a;->ayn:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 6
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized aNl()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 11
    :try_start_1
    iget v0, p0, Lcom/android/captureCamera/a;->ayn:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/captureCamera/a;->ayn:I
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    .line 10
    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public aNm()V
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/captureCamera/a;->ayn:I

    .line 18
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 15
    iget v0, p0, Lcom/android/captureCamera/a;->ayn:I

    return v0
.end method
