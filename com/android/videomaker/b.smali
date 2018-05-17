.class public Lcom/android/videomaker/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static final aKH:Ljava/lang/Object;


# instance fields
.field private aKI:Z

.field private aKJ:Ljava/util/ArrayList;

.field private aKK:I

.field private aKL:Ljava/util/LinkedList;

.field private aKM:Lcom/android/videomaker/e;

.field private aKN:Z

.field private aKO:Lcom/android/videomaker/d;

.field private aKP:I

.field private aKQ:Lcom/android/videomaker/c;

.field private aKR:Lcom/android/videomaker/i;

.field private aKS:Lcom/android/videomaker/p;

.field private aKT:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string/jumbo v0, "LooperShowDataAdapter"

    sput-object v0, Lcom/android/videomaker/b;->TAG:Ljava/lang/String;

    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/videomaker/b;->aKH:Ljava/lang/Object;

    .line 12
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v1, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;

    .line 20
    iput-object v1, p0, Lcom/android/videomaker/b;->aKJ:Ljava/util/ArrayList;

    .line 21
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/b;->aKL:Ljava/util/LinkedList;

    .line 23
    iput-boolean v2, p0, Lcom/android/videomaker/b;->aKN:Z

    .line 24
    iput-boolean v2, p0, Lcom/android/videomaker/b;->aKI:Z

    .line 27
    iput v2, p0, Lcom/android/videomaker/b;->aKK:I

    .line 28
    iput v2, p0, Lcom/android/videomaker/b;->aKP:I

    .line 29
    iput v2, p0, Lcom/android/videomaker/b;->aKT:I

    .line 30
    iput-object v1, p0, Lcom/android/videomaker/b;->aKO:Lcom/android/videomaker/d;

    .line 31
    iput-object v1, p0, Lcom/android/videomaker/b;->aKM:Lcom/android/videomaker/e;

    .line 32
    iput-object v1, p0, Lcom/android/videomaker/b;->aKQ:Lcom/android/videomaker/c;

    .line 35
    iput-object p1, p0, Lcom/android/videomaker/b;->aKJ:Ljava/util/ArrayList;

    .line 36
    iget-object v0, p0, Lcom/android/videomaker/b;->aKJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/android/videomaker/b;->aKK:I

    .line 37
    new-instance v0, Lcom/android/videomaker/e;

    invoke-direct {v0, p0, v1}, Lcom/android/videomaker/e;-><init>(Lcom/android/videomaker/b;Lcom/android/videomaker/e;)V

    iput-object v0, p0, Lcom/android/videomaker/b;->aKM:Lcom/android/videomaker/e;

    .line 34
    return-void
.end method

.method private aZY()V
    .registers 4

    .prologue
    .line 120
    sget-object v1, Lcom/android/videomaker/b;->aKH:Ljava/lang/Object;

    monitor-enter v1

    .line 121
    :try_start_3
    iget-object v0, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;

    if-eqz v0, :cond_f

    .line 122
    iget-object v0, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;

    invoke-virtual {v0}, Lcom/android/videomaker/i;->bcf()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;

    .line 125
    :cond_f
    iget-object v0, p0, Lcom/android/videomaker/b;->aKL:Ljava/util/LinkedList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/i;

    .line 126
    if-eqz v0, :cond_15

    .line 127
    invoke-virtual {v0}, Lcom/android/videomaker/i;->bcf()V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_27

    goto :goto_15

    .line 120
    :catchall_27
    move-exception v0

    monitor-exit v1

    throw v0

    .line 130
    :cond_2a
    :try_start_2a
    iget-object v0, p0, Lcom/android/videomaker/b;->aKL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_27

    monitor-exit v1

    .line 132
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 119
    return-void
.end method

.method private aZZ()Lcom/android/videomaker/i;
    .registers 5

    .prologue
    .line 111
    iget v0, p0, Lcom/android/videomaker/b;->aKP:I

    iget v1, p0, Lcom/android/videomaker/b;->aKK:I

    if-lt v0, v1, :cond_8

    .line 112
    const/4 v0, 0x0

    return-object v0

    .line 114
    :cond_8
    iget-object v0, p0, Lcom/android/videomaker/b;->aKJ:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/videomaker/b;->aKP:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 115
    new-instance v1, Lcom/android/videomaker/i;

    iget v2, p0, Lcom/android/videomaker/b;->aKP:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/android/videomaker/b;->aKP:I

    iget-object v3, p0, Lcom/android/videomaker/b;->aKS:Lcom/android/videomaker/p;

    invoke-direct {v1, v2, v0, v3}, Lcom/android/videomaker/i;-><init>(ILjava/lang/String;Lcom/android/videomaker/p;)V

    .line 116
    return-object v1
.end method

.method static synthetic bad()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/videomaker/b;->aKH:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic bae(Lcom/android/videomaker/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/videomaker/b;->aKI:Z

    return v0
.end method

.method static synthetic baf(Lcom/android/videomaker/b;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/b;->aKK:I

    return v0
.end method

.method static synthetic bag(Lcom/android/videomaker/b;)Ljava/util/LinkedList;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/b;->aKL:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic bah(Lcom/android/videomaker/b;)Lcom/android/videomaker/e;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/b;->aKM:Lcom/android/videomaker/e;

    return-object v0
.end method

.method static synthetic bai(Lcom/android/videomaker/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/videomaker/b;->aKN:Z

    return v0
.end method

.method static synthetic baj(Lcom/android/videomaker/b;)Lcom/android/videomaker/c;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/b;->aKQ:Lcom/android/videomaker/c;

    return-object v0
.end method

.method static synthetic bak(Lcom/android/videomaker/b;)I
    .registers 2

    iget v0, p0, Lcom/android/videomaker/b;->aKT:I

    return v0
.end method

.method static synthetic bal(Lcom/android/videomaker/b;I)I
    .registers 2

    iput p1, p0, Lcom/android/videomaker/b;->aKT:I

    return p1
.end method

.method static synthetic bam(Lcom/android/videomaker/b;)Lcom/android/videomaker/i;
    .registers 2

    invoke-direct {p0}, Lcom/android/videomaker/b;->aZZ()Lcom/android/videomaker/i;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public baa()Lcom/android/videomaker/i;
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-boolean v0, p0, Lcom/android/videomaker/b;->aKN:Z

    if-nez v0, :cond_6

    return-object v1

    .line 92
    :cond_6
    iget-object v0, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;

    invoke-virtual {v0}, Lcom/android/videomaker/i;->bcf()V

    .line 95
    :cond_f
    sget-object v1, Lcom/android/videomaker/b;->aKH:Ljava/lang/Object;

    monitor-enter v1

    .line 96
    :goto_12
    :try_start_12
    iget-object v0, p0, Lcom/android/videomaker/b;->aKL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_2a

    move-result v0

    if-eqz v0, :cond_2d

    .line 98
    const/4 v0, 0x1

    :try_start_1b
    iput-boolean v0, p0, Lcom/android/videomaker/b;->aKI:Z

    .line 99
    sget-object v0, Lcom/android/videomaker/b;->aKH:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_22} :catch_23
    .catchall {:try_start_1b .. :try_end_22} :catchall_2a

    goto :goto_12

    .line 100
    :catch_23
    move-exception v0

    .line 101
    :try_start_24
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_2a
    .catchall {:try_start_24 .. :try_end_2a} :catchall_2a

    .line 95
    :catchall_2a
    move-exception v0

    monitor-exit v1

    throw v0

    .line 104
    :cond_2d
    const/4 v0, 0x0

    :try_start_2e
    iput-boolean v0, p0, Lcom/android/videomaker/b;->aKI:Z

    .line 105
    iget-object v0, p0, Lcom/android/videomaker/b;->aKL:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/i;

    iput-object v0, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;
    :try_end_3a
    .catchall {:try_start_2e .. :try_end_3a} :catchall_2a

    monitor-exit v1

    .line 107
    iget-object v0, p0, Lcom/android/videomaker/b;->aKR:Lcom/android/videomaker/i;

    return-object v0
.end method

.method public bab(Lcom/android/videomaker/c;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcom/android/videomaker/b;->aKQ:Lcom/android/videomaker/c;

    .line 44
    return-void
.end method

.method public bac(Lcom/android/videomaker/p;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Lcom/android/videomaker/b;->aKS:Lcom/android/videomaker/p;

    .line 135
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/videomaker/b;->aKN:Z

    if-nez v0, :cond_1f

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/b;->aKN:Z

    .line 74
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/videomaker/b;->aKT:I

    .line 75
    new-instance v0, Lcom/android/videomaker/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/videomaker/d;-><init>(Lcom/android/videomaker/b;Lcom/android/videomaker/d;)V

    iput-object v0, p0, Lcom/android/videomaker/b;->aKO:Lcom/android/videomaker/d;

    .line 76
    iget-object v0, p0, Lcom/android/videomaker/b;->aKO:Lcom/android/videomaker/d;

    const-string/jumbo v1, "LoadTask"

    invoke-virtual {v0, v1}, Lcom/android/videomaker/d;->setName(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/android/videomaker/b;->aKO:Lcom/android/videomaker/d;

    invoke-virtual {v0}, Lcom/android/videomaker/d;->start()V

    .line 71
    :cond_1f
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/android/videomaker/b;->aKN:Z

    if-eqz v0, :cond_a

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/videomaker/b;->aKN:Z

    .line 85
    invoke-direct {p0}, Lcom/android/videomaker/b;->aZY()V

    .line 82
    :cond_a
    return-void
.end method
