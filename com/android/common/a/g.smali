.class public Lcom/android/common/a/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private L:Lcom/android/common/a/i;

.field private M:Landroid/view/SurfaceHolder;

.field private N:Landroid/view/SurfaceView;

.field private O:Z

.field private P:Lcom/android/common/appService/S;

.field private Q:Z

.field private R:Lcom/android/common/g/g;

.field private S:Landroid/graphics/Rect;

.field private T:Lcom/android/common/a/b;

.field private U:Lcom/android/common/a/a;

.field private V:Lcom/android/common/a/h;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/a/h;Landroid/view/SurfaceView;Lcom/android/common/g/g;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-boolean v0, p0, Lcom/android/common/a/g;->O:Z

    .line 31
    iput-boolean v0, p0, Lcom/android/common/a/g;->Q:Z

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/a/g;->R:Lcom/android/common/g/g;

    .line 164
    new-instance v0, Lcom/android/common/a/m;

    invoke-direct {v0, p0}, Lcom/android/common/a/m;-><init>(Lcom/android/common/a/g;)V

    iput-object v0, p0, Lcom/android/common/a/g;->P:Lcom/android/common/appService/S;

    .line 36
    iput-object p3, p0, Lcom/android/common/a/g;->N:Landroid/view/SurfaceView;

    .line 37
    iput-object p2, p0, Lcom/android/common/a/g;->V:Lcom/android/common/a/h;

    .line 38
    new-instance v0, Lcom/android/common/g/b;

    invoke-direct {v0, p1}, Lcom/android/common/g/b;-><init>(Lcom/android/common/appService/W;)V

    iput-object v0, p0, Lcom/android/common/a/g;->T:Lcom/android/common/a/b;

    .line 39
    iput-object p4, p0, Lcom/android/common/a/g;->R:Lcom/android/common/g/g;

    .line 40
    invoke-direct {p0}, Lcom/android/common/a/g;->am()V

    .line 42
    new-instance v0, Lcom/android/common/a/i;

    invoke-direct {v0, p0}, Lcom/android/common/a/i;-><init>(Lcom/android/common/a/g;)V

    iput-object v0, p0, Lcom/android/common/a/g;->L:Lcom/android/common/a/i;

    .line 43
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/common/a/g;->aq(Z)V

    .line 35
    return-void
.end method

.method static synthetic aE(Lcom/android/common/a/g;)Lcom/android/common/a/i;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/g;->L:Lcom/android/common/a/i;

    return-object v0
.end method

.method static synthetic aF(Lcom/android/common/a/g;)Landroid/view/SurfaceHolder;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/g;->M:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic aG(Lcom/android/common/a/g;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/g;->S:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic aH(Lcom/android/common/a/g;)Lcom/android/common/a/a;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    return-object v0
.end method

.method static synthetic aI(Lcom/android/common/a/g;)Lcom/android/common/a/h;
    .registers 2

    iget-object v0, p0, Lcom/android/common/a/g;->V:Lcom/android/common/a/h;

    return-object v0
.end method

.method static synthetic aJ(Lcom/android/common/a/g;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    iput-object p1, p0, Lcom/android/common/a/g;->M:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic aK(Lcom/android/common/a/g;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/a/g;->O:Z

    return p1
.end method

.method static synthetic aL(Lcom/android/common/a/g;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .registers 2

    iput-object p1, p0, Lcom/android/common/a/g;->S:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic aM(Lcom/android/common/a/g;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/a/g;->ax(Z)V

    return-void
.end method

.method private am()V
    .registers 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/common/a/g;->N:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    new-instance v1, Lcom/android/common/a/n;

    invoke-direct {v1, p0}, Lcom/android/common/a/n;-><init>(Lcom/android/common/a/g;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 201
    return-void
.end method

.method private aq(Z)V
    .registers 6

    .prologue
    .line 242
    new-instance v0, Lcom/android/common/a/a;

    iget-object v1, p0, Lcom/android/common/a/g;->S:Landroid/graphics/Rect;

    .line 243
    iget-object v2, p0, Lcom/android/common/a/g;->R:Lcom/android/common/g/g;

    iget-boolean v3, p0, Lcom/android/common/a/g;->Q:Z

    .line 242
    invoke-direct {v0, v1, v2, v3, p1}, Lcom/android/common/a/a;-><init>(Landroid/graphics/Rect;Lcom/android/common/g/g;ZZ)V

    iput-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    .line 244
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    iget-object v1, p0, Lcom/android/common/a/g;->T:Lcom/android/common/a/b;

    invoke-virtual {v0, v1}, Lcom/android/common/a/a;->a(Lcom/android/common/a/b;)V

    .line 241
    return-void
.end method

.method private ax(Z)V
    .registers 3

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->g()V

    .line 238
    invoke-direct {p0, p1}, Lcom/android/common/a/g;->aq(Z)V

    .line 236
    return-void
.end method


# virtual methods
.method public aA(I)V
    .registers 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->E(I)V

    .line 46
    return-void
.end method

.method public aB(Z)V
    .registers 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->G(Z)V

    .line 155
    return-void
.end method

.method public aC(I)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->K(I)V

    .line 71
    return-void
.end method

.method public aD()V
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->M()V

    .line 75
    return-void
.end method

.method public aj()V
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->L()V

    .line 67
    return-void
.end method

.method public ak(Z)V
    .registers 3

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/common/a/g;->Q:Z

    .line 64
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->J(Z)V

    .line 62
    return-void
.end method

.method public al(Lcom/android/common/a/b;)V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->a(Lcom/android/common/a/b;)V

    .line 54
    return-void
.end method

.method public an()I
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->h()I

    move-result v0

    return v0
.end method

.method public ao()Lcom/android/common/appService/S;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/common/a/g;->P:Lcom/android/common/appService/S;

    return-object v0
.end method

.method public ap()Lcom/android/common/a/i;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/android/common/a/g;->L:Lcom/android/common/a/i;

    return-object v0
.end method

.method public ar()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Lcom/android/common/a/g;->O:Z

    return v0
.end method

.method public declared-synchronized as()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->w()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 82
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public at(Lcom/android/common/a/b;)V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->z(Lcom/android/common/a/b;)V

    .line 58
    return-void
.end method

.method public au(Lcom/android/common/a/c;)Z
    .registers 3

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->A(Lcom/android/common/a/c;)Z

    move-result v0

    return v0
.end method

.method public av(Lcom/android/common/a/c;)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0, p1}, Lcom/android/common/a/a;->B(Lcom/android/common/a/c;)V

    .line 103
    return-void
.end method

.method public declared-synchronized aw()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 98
    :try_start_1
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 99
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->C()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    :cond_e
    monitor-exit p0

    .line 97
    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ay()V
    .registers 2

    .prologue
    monitor-enter p0

    .line 90
    :try_start_1
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->D()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 89
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public az(Lcom/android/common/cameradevice/j;Z)Z
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/android/common/a/g;->M:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_23

    .line 113
    const-string/jumbo v0, "PreviewTargetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mCameraSurfaceHolder is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/a/g;->M:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return v3

    .line 117
    :cond_23
    invoke-virtual {p1, v2}, Lcom/android/common/cameradevice/j;->Ky(Landroid/graphics/SurfaceTexture;)V

    .line 118
    invoke-virtual {p1, v2}, Lcom/android/common/cameradevice/j;->Kz(Landroid/view/SurfaceHolder;)V

    .line 120
    if-eqz p2, :cond_66

    .line 121
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_50

    .line 122
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->isAlive()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 123
    const-string/jumbo v0, "PreviewTargetManager"

    const-string/jumbo v1, "start RenderThread"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    iget-object v1, p0, Lcom/android/common/a/g;->M:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Lcom/android/common/a/a;->I(Landroid/view/SurfaceHolder;)V

    .line 126
    :cond_4b
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->N()V

    .line 128
    :cond_50
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/g;->L:Lcom/android/common/a/i;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/cameradevice/j;->Ky(Landroid/graphics/SurfaceTexture;)V

    .line 140
    :goto_64
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_66
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-eqz v0, :cond_83

    .line 133
    const-string/jumbo v0, "PreviewTargetManager"

    const-string/jumbo v1, "finish RenderThread"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lcom/android/common/a/g;->U:Lcom/android/common/a/a;

    invoke-virtual {v0}, Lcom/android/common/a/a;->n()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 135
    invoke-direct {p0, v3}, Lcom/android/common/a/g;->ax(Z)V

    .line 137
    :cond_83
    iget-object v0, p0, Lcom/android/common/a/g;->M:Landroid/view/SurfaceHolder;

    invoke-virtual {p1, v0}, Lcom/android/common/cameradevice/j;->Kz(Landroid/view/SurfaceHolder;)V

    goto :goto_64
.end method
