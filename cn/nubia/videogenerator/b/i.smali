.class public Lcn/nubia/videogenerator/b/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private brD:I

.field private brE:Lcn/nubia/videogenerator/a/b;

.field private brF:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private brG:Landroid/media/AudioRecord;

.field private brH:I

.field private brI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private brJ:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-string/jumbo v0, "meeeAudioRecorder"

    .line 17
    sput-object v0, Lcn/nubia/videogenerator/b/i;->TAG:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcn/nubia/videogenerator/b/i;->brF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 21
    iput-object v0, p0, Lcn/nubia/videogenerator/b/i;->brG:Landroid/media/AudioRecord;

    .line 23
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/i;->brI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    return-void
.end method

.method static synthetic bOK(Lcn/nubia/videogenerator/b/i;)J
    .registers 3

    .prologue
    .line 24
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/i;->brJ:J

    return-wide v0
.end method

.method static synthetic bOL(Lcn/nubia/videogenerator/b/i;)Lcn/nubia/videogenerator/a/b;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    return-object v0
.end method

.method static synthetic bOM(Lcn/nubia/videogenerator/b/i;)I
    .registers 2

    .prologue
    .line 22
    iget v0, p0, Lcn/nubia/videogenerator/b/i;->brH:I

    return v0
.end method

.method static synthetic bON()Ljava/lang/String;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcn/nubia/videogenerator/b/i;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bOO(Lcn/nubia/videogenerator/b/i;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brI:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic bOP(Lcn/nubia/videogenerator/b/i;)Landroid/media/AudioRecord;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brG:Landroid/media/AudioRecord;

    return-object v0
.end method

.method static synthetic bOQ(Lcn/nubia/videogenerator/b/i;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method


# virtual methods
.method public bOG(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcn/nubia/videogenerator/b/i;->brD:I

    .line 35
    return-void
.end method

.method public bOH(Lcn/nubia/videogenerator/a/b;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    .line 39
    return-void
.end method

.method public bOI(I)V
    .registers 4

    .prologue
    .line 42
    int-to-long v0, p1

    iput-wide v0, p0, Lcn/nubia/videogenerator/b/i;->brJ:J

    .line 43
    return-void
.end method

.method public bOJ(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/videogenerator/b/i;->brF:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 47
    return-void
.end method

.method public start()V
    .registers 7

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/b;->bNr()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/a/b;->bNs()I

    move-result v1

    .line 53
    iget-object v2, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/a/b;->bNp()I

    move-result v2

    .line 52
    invoke-static {v0, v1, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    iput v0, p0, Lcn/nubia/videogenerator/b/i;->brH:I

    .line 54
    new-instance v0, Landroid/media/AudioRecord;

    iget v1, p0, Lcn/nubia/videogenerator/b/i;->brD:I

    iget-object v2, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    invoke-virtual {v2}, Lcn/nubia/videogenerator/a/b;->bNr()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    invoke-virtual {v3}, Lcn/nubia/videogenerator/a/b;->bNs()I

    move-result v3

    .line 55
    iget-object v4, p0, Lcn/nubia/videogenerator/b/i;->brE:Lcn/nubia/videogenerator/a/b;

    invoke-virtual {v4}, Lcn/nubia/videogenerator/a/b;->bNp()I

    move-result v4

    iget v5, p0, Lcn/nubia/videogenerator/b/i;->brH:I

    mul-int/lit8 v5, v5, 0x2

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 54
    iput-object v0, p0, Lcn/nubia/videogenerator/b/i;->brG:Landroid/media/AudioRecord;

    .line 57
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brG:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 58
    sget-object v0, Lcn/nubia/videogenerator/b/i;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startRecording"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    sget-object v0, Lcn/nubia/videogenerator/b/i;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "minBufferSize "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/nubia/videogenerator/b/i;->brH:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brI:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/videogenerator/b/k;

    invoke-direct {v1, p0}, Lcn/nubia/videogenerator/b/k;-><init>(Lcn/nubia/videogenerator/b/i;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "PCM Thread "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 96
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 97
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 99
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brI:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 103
    monitor-enter p0

    .line 104
    :try_start_7
    iget-object v0, p0, Lcn/nubia/videogenerator/b/i;->brG:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 103
    monitor-exit p0

    .line 106
    return-void

    .line 103
    :catchall_e
    move-exception v0

    monitor-exit p0
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method
