.class public Lcom/android/common/c/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static gJ:Lcom/android/common/c/e;


# instance fields
.field private gE:Z

.field private gF:Lcom/android/common/c/a;

.field private gG:Z

.field private gH:Lcom/android/common/c/a;

.field private gI:Lcom/android/common/c/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/c/e;->gJ:Lcom/android/common/c/e;

    .line 12
    const-string/jumbo v0, "CommandManager"

    sput-object v0, Lcom/android/common/c/e;->TAG:Ljava/lang/String;

    .line 10
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v1, p0, Lcom/android/common/c/e;->gI:Lcom/android/common/c/f;

    .line 14
    iput-object v1, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    .line 16
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/c/e;->gE:Z

    .line 18
    iput-object v1, p0, Lcom/android/common/c/e;->gH:Lcom/android/common/c/a;

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/c/e;->gG:Z

    .line 86
    new-instance v0, Lcom/android/common/c/f;

    invoke-direct {v0, p0}, Lcom/android/common/c/f;-><init>(Lcom/android/common/c/e;)V

    iput-object v0, p0, Lcom/android/common/c/e;->gI:Lcom/android/common/c/f;

    .line 85
    return-void
.end method

.method static synthetic hA(Lcom/android/common/c/e;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/c/e;->hz(Z)V

    return-void
.end method

.method public static hp()Lcom/android/common/c/e;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/common/c/e;->gJ:Lcom/android/common/c/e;

    if-nez v0, :cond_b

    new-instance v0, Lcom/android/common/c/e;

    invoke-direct {v0}, Lcom/android/common/c/e;-><init>()V

    sput-object v0, Lcom/android/common/c/e;->gJ:Lcom/android/common/c/e;

    .line 23
    :cond_b
    sget-object v0, Lcom/android/common/c/e;->gJ:Lcom/android/common/c/e;

    return-object v0
.end method

.method private hu()Z
    .registers 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private hv()V
    .registers 5

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/common/c/e;->hu()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 122
    invoke-direct {p0}, Lcom/android/common/c/e;->hx()V

    .line 123
    iget-object v0, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    invoke-interface {v0}, Lcom/android/common/c/a;->ho()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_24

    .line 124
    iget-object v0, p0, Lcom/android/common/c/e;->gI:Lcom/android/common/c/f;

    iget-object v1, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    invoke-interface {v1}, Lcom/android/common/c/a;->ho()I

    move-result v1

    int-to-long v2, v1

    const/16 v1, 0x1c

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/common/c/f;->sendEmptyMessageDelayed(IJ)Z

    .line 125
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/common/c/e;->hz(Z)V

    .line 127
    :cond_24
    invoke-direct {p0}, Lcom/android/common/c/e;->hw()V

    .line 120
    :cond_27
    return-void
.end method

.method private hw()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    .line 116
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    .line 117
    invoke-interface {v0}, Lcom/android/common/c/a;->hn()V

    .line 114
    return-void
.end method

.method private hx()V
    .registers 3

    .prologue
    .line 132
    iget-object v0, p0, Lcom/android/common/c/e;->gI:Lcom/android/common/c/f;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/common/c/f;->removeMessages(I)V

    .line 131
    return-void
.end method

.method private hy()V
    .registers 3

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/common/c/e;->gI:Lcom/android/common/c/f;

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/android/common/c/f;->removeMessages(I)V

    .line 106
    return-void
.end method

.method private hz(Z)V
    .registers 2

    .prologue
    .line 103
    iput-boolean p1, p0, Lcom/android/common/c/e;->gE:Z

    .line 102
    return-void
.end method


# virtual methods
.method public declared-synchronized hq()Z
    .registers 2

    .prologue
    monitor-enter p0

    .line 47
    :try_start_1
    iget-boolean v0, p0, Lcom/android/common/c/e;->gE:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hr(Lcom/android/common/c/a;)V
    .registers 4

    .prologue
    monitor-enter p0

    .line 27
    :try_start_1
    iget-boolean v0, p0, Lcom/android/common/c/e;->gE:Z

    if-nez v0, :cond_19

    .line 28
    sget-object v0, Lcom/android/common/c/e;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "addCommand false"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    instance-of v0, p1, Lcom/android/common/c/b;

    if-eqz v0, :cond_17

    iget-boolean v0, p0, Lcom/android/common/c/e;->gG:Z

    if-eqz v0, :cond_17

    .line 30
    iput-object p1, p0, Lcom/android/common/c/e;->gH:Lcom/android/common/c/a;
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_2c

    :cond_17
    monitor-exit p0

    .line 31
    return-void

    .line 34
    :cond_19
    const/4 v0, 0x0

    :try_start_1a
    iput-object v0, p0, Lcom/android/common/c/e;->gH:Lcom/android/common/c/a;

    .line 35
    iput-object p1, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    .line 36
    iget-object v0, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    instance-of v0, v0, Lcom/android/common/c/b;

    iput-boolean v0, p0, Lcom/android/common/c/e;->gG:Z

    .line 41
    invoke-direct {p0}, Lcom/android/common/c/e;->hx()V

    .line 43
    invoke-direct {p0}, Lcom/android/common/c/e;->hv()V
    :try_end_2a
    .catchall {:try_start_1a .. :try_end_2a} :catchall_2c

    monitor-exit p0

    .line 26
    return-void

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hs()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 69
    :try_start_1
    sget-object v0, Lcom/android/common/c/e;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Enable command manager"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-direct {p0}, Lcom/android/common/c/e;->hy()V

    .line 71
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/c/e;->hz(Z)V

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/e;->gH:Lcom/android/common/c/a;

    .line 73
    invoke-direct {p0}, Lcom/android/common/c/e;->hx()V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    .line 68
    return-void

    :catchall_1b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ht()V
    .registers 3

    .prologue
    monitor-enter p0

    .line 78
    :try_start_1
    sget-object v0, Lcom/android/common/c/e;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Disable command manager"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/c/e;->gE:Z

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/e;->gF:Lcom/android/common/c/a;

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/e;->gH:Lcom/android/common/c/a;

    .line 82
    invoke-direct {p0}, Lcom/android/common/c/e;->hx()V
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_17

    monitor-exit p0

    .line 77
    return-void

    :catchall_17
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized quit()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 63
    :try_start_1
    invoke-direct {p0}, Lcom/android/common/c/e;->hx()V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/common/c/e;->hz(Z)V

    .line 65
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/c/e;->gJ:Lcom/android/common/c/e;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    .line 62
    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
