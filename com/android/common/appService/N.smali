.class public Lcom/android/common/appService/N;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private kC:Landroid/app/Activity;

.field private kD:Lcom/android/common/appService/P;

.field private kE:Ljava/util/ArrayList;

.field private kF:I

.field private kG:I

.field private kH:Lcom/android/common/appService/Q;

.field private kI:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 4

    .prologue
    const/4 v1, -0x1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v1, p0, Lcom/android/common/appService/N;->kF:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/appService/N;->kG:I

    .line 56
    iput v1, p0, Lcom/android/common/appService/N;->kI:I

    .line 59
    iput-object p1, p0, Lcom/android/common/appService/N;->kC:Landroid/app/Activity;

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Lcom/android/common/appService/Q;

    invoke-direct {v0, p0, p1}, Lcom/android/common/appService/Q;-><init>(Lcom/android/common/appService/N;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/appService/N;->kH:Lcom/android/common/appService/Q;

    .line 58
    return-void
.end method

.method private oj(I)V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/common/appService/N;->kD:Lcom/android/common/appService/P;

    if-eqz v0, :cond_9

    .line 128
    iget-object v0, p0, Lcom/android/common/appService/N;->kD:Lcom/android/common/appService/P;

    invoke-interface {v0, p1}, Lcom/android/common/appService/P;->os(I)V

    .line 126
    :cond_9
    return-void
.end method

.method private ok(I)V
    .registers 6

    .prologue
    .line 119
    iget-object v2, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    monitor-enter v2

    .line 120
    const/4 v0, 0x0

    :try_start_4
    iget-object v1, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v1, v0

    :goto_b
    if-ge v1, v3, :cond_1c

    .line 121
    iget-object v0, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/O;

    invoke-interface {v0, p1}, Lcom/android/common/appService/O;->dx(I)V
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1e

    .line 120
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_b

    :cond_1c
    monitor-exit v2

    .line 118
    return-void

    .line 119
    :catchall_1e
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private om()V
    .registers 3

    .prologue
    .line 135
    iget v0, p0, Lcom/android/common/appService/N;->kF:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 136
    return-void

    .line 140
    :cond_6
    iget v0, p0, Lcom/android/common/appService/N;->kF:I

    iget-object v1, p0, Lcom/android/common/appService/N;->kC:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/common/h;->apw(Landroid/app/Activity;)I

    move-result v1

    add-int/2addr v0, v1

    rem-int/lit16 v0, v0, 0x168

    .line 142
    iget v1, p0, Lcom/android/common/appService/N;->kG:I

    if-eq v1, v0, :cond_1c

    .line 143
    iput v0, p0, Lcom/android/common/appService/N;->kG:I

    .line 144
    iget v0, p0, Lcom/android/common/appService/N;->kG:I

    invoke-direct {p0, v0}, Lcom/android/common/appService/N;->ok(I)V

    .line 134
    :cond_1c
    return-void
.end method

.method static synthetic on(Lcom/android/common/appService/N;)I
    .registers 2

    iget v0, p0, Lcom/android/common/appService/N;->kF:I

    return v0
.end method

.method static synthetic oo(Lcom/android/common/appService/N;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/appService/N;->kF:I

    return p1
.end method

.method static synthetic op(Lcom/android/common/appService/N;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/appService/N;->kI:I

    return p1
.end method

.method static synthetic oq(Lcom/android/common/appService/N;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/appService/N;->oj(I)V

    return-void
.end method

.method static synthetic or(Lcom/android/common/appService/N;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/N;->om()V

    return-void
.end method


# virtual methods
.method public oe(Lcom/android/common/appService/O;)V
    .registers 4

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    monitor-enter v1

    .line 94
    if-eqz p1, :cond_d

    :try_start_5
    iget-object v0, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_1a

    move-result v0

    if-eqz v0, :cond_f

    :cond_d
    :goto_d
    monitor-exit v1

    .line 92
    return-void

    .line 95
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    iget v0, p0, Lcom/android/common/appService/N;->kG:I

    invoke-interface {p1, v0}, Lcom/android/common/appService/O;->dx(I)V
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_1a

    goto :goto_d

    .line 93
    :catchall_1a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public of()V
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/common/appService/N;->kH:Lcom/android/common/appService/Q;

    invoke-virtual {v0}, Lcom/android/common/appService/Q;->disable()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/appService/N;->kH:Lcom/android/common/appService/Q;

    .line 71
    return-void
.end method

.method public og()V
    .registers 3

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/common/appService/N;->kH:Lcom/android/common/appService/Q;

    if-nez v0, :cond_d

    .line 66
    new-instance v0, Lcom/android/common/appService/Q;

    iget-object v1, p0, Lcom/android/common/appService/N;->kC:Landroid/app/Activity;

    invoke-direct {v0, p0, v1}, Lcom/android/common/appService/Q;-><init>(Lcom/android/common/appService/N;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/appService/N;->kH:Lcom/android/common/appService/Q;

    .line 68
    :cond_d
    iget-object v0, p0, Lcom/android/common/appService/N;->kH:Lcom/android/common/appService/Q;

    invoke-virtual {v0}, Lcom/android/common/appService/Q;->enable()V

    .line 64
    return-void
.end method

.method public oh()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/android/common/appService/N;->kF:I

    return v0
.end method

.method public oi()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/android/common/appService/N;->kG:I

    return v0
.end method

.method public ol(Lcom/android/common/appService/O;)V
    .registers 4

    .prologue
    .line 102
    iget-object v1, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    monitor-enter v1

    .line 103
    :try_start_3
    iget-object v0, p0, Lcom/android/common/appService/N;->kE:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    .line 101
    return-void

    .line 102
    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method
