.class public Lcn/nubia/videogenerator/b/f;
.super Lcn/nubia/videogenerator/a/g;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private brA:Lcn/nubia/videogenerator/b/d;

.field private brB:Ljava/lang/String;

.field private brC:Ljava/lang/Runnable;

.field private brs:J

.field private brt:J

.field private bru:I

.field private brv:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field private brw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private brx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private bry:Lcn/nubia/videogenerator/b/h;

.field private brz:Lcn/nubia/videogenerator/b/g;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-string/jumbo v0, "meeeeFrameFilter"

    .line 28
    sput-object v0, Lcn/nubia/videogenerator/b/f;->TAG:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 49
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/g;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 29
    iput-wide v0, p0, Lcn/nubia/videogenerator/b/f;->brs:J

    const-wide v0, 0x7fffffffffffffffL

    .line 30
    iput-wide v0, p0, Lcn/nubia/videogenerator/b/f;->brt:J

    const/4 v0, -0x1

    .line 31
    iput v0, p0, Lcn/nubia/videogenerator/b/f;->bru:I

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/f;->brw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/f;->brx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 97
    new-instance v0, Lcn/nubia/videogenerator/b/m;

    invoke-direct {v0, p0}, Lcn/nubia/videogenerator/b/m;-><init>(Lcn/nubia/videogenerator/b/f;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/b/f;->brC:Ljava/lang/Runnable;

    .line 50
    iput-object p1, p0, Lcn/nubia/videogenerator/b/f;->brB:Ljava/lang/String;

    .line 51
    return-void
.end method

.method static synthetic bOA(Lcn/nubia/videogenerator/b/f;)I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/videogenerator/b/f;->bru:I

    return v0
.end method

.method static synthetic bOB(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/d;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->brA:Lcn/nubia/videogenerator/b/d;

    return-object v0
.end method

.method static synthetic bOC(Lcn/nubia/videogenerator/b/f;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->brB:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bOD(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/h;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->bry:Lcn/nubia/videogenerator/b/h;

    return-object v0
.end method

.method static synthetic bOE(Lcn/nubia/videogenerator/b/f;)Lcn/nubia/videogenerator/b/g;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->brz:Lcn/nubia/videogenerator/b/g;

    return-object v0
.end method

.method static synthetic bOu(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->brx:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic bOv(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->brw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic bOw(Lcn/nubia/videogenerator/b/f;)Ljava/util/concurrent/ConcurrentLinkedQueue;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->brv:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method static synthetic bOx()Ljava/lang/String;
    .registers 1

    .prologue
    .line 28
    sget-object v0, Lcn/nubia/videogenerator/b/f;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bOy(Lcn/nubia/videogenerator/b/f;)J
    .registers 3

    .prologue
    .line 29
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/f;->brs:J

    return-wide v0
.end method

.method static synthetic bOz(Lcn/nubia/videogenerator/b/f;)J
    .registers 3

    .prologue
    .line 30
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/f;->brt:J

    return-wide v0
.end method


# virtual methods
.method public bNP(Lcn/nubia/videogenerator/b/d;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcn/nubia/videogenerator/b/f;->brA:Lcn/nubia/videogenerator/b/d;

    .line 55
    return-void
.end method

.method public bOq(Ljava/util/concurrent/ConcurrentLinkedQueue;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcn/nubia/videogenerator/b/f;->brv:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 59
    return-void
.end method

.method public bOr(Lcn/nubia/videogenerator/b/h;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lcn/nubia/videogenerator/b/f;->bry:Lcn/nubia/videogenerator/b/h;

    .line 63
    return-void
.end method

.method public bOs(JJ)V
    .registers 6

    .prologue
    .line 70
    iput-wide p1, p0, Lcn/nubia/videogenerator/b/f;->brs:J

    .line 71
    iput-wide p3, p0, Lcn/nubia/videogenerator/b/f;->brt:J

    .line 72
    return-void
.end method

.method public bOt(I)V
    .registers 2

    .prologue
    .line 75
    iput p1, p0, Lcn/nubia/videogenerator/b/f;->bru:I

    .line 76
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    .line 79
    iget-wide v0, p0, Lcn/nubia/videogenerator/b/f;->brs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_13

    iget-wide v0, p0, Lcn/nubia/videogenerator/b/f;->brt:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_1c

    .line 80
    :cond_13
    sget-object v0, Lcn/nubia/videogenerator/b/f;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "pass time windows is not set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_1c
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/b/f;->brC:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Filter "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v1, 0xa

    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 86
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 87
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/videogenerator/b/f;->brx:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 91
    return-void
.end method
