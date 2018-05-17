.class public Lcom/android/common/appService/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ho:Lcom/android/common/appService/c;


# instance fields
.field private hd:I

.field private he:Z

.field private hf:Lcom/android/common/appService/W;

.field private hg:Lcom/android/common/camerastate/a;

.field private hh:Ljava/lang/String;

.field private hi:Lcom/android/common/appService/e;

.field private hj:Lcom/android/common/appService/d;

.field private hk:Landroid/media/MediaPlayer;

.field private hl:Landroid/media/MediaPlayer;

.field private hm:Landroid/media/SoundPool;

.field private hn:Lcom/android/common/appService/f;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/appService/c;->ho:Lcom/android/common/appService/c;

    .line 25
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Lcom/android/common/appService/c;->he:Z

    .line 33
    iput-object v1, p0, Lcom/android/common/appService/c;->hm:Landroid/media/SoundPool;

    .line 34
    iput-object v1, p0, Lcom/android/common/appService/c;->hk:Landroid/media/MediaPlayer;

    .line 35
    iput-object v1, p0, Lcom/android/common/appService/c;->hl:Landroid/media/MediaPlayer;

    .line 36
    iput-object v1, p0, Lcom/android/common/appService/c;->hn:Lcom/android/common/appService/f;

    .line 37
    iput v0, p0, Lcom/android/common/appService/c;->hd:I

    .line 38
    iput-object v1, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    .line 39
    new-instance v0, Lcom/android/common/appService/e;

    invoke-direct {v0, p0, v1}, Lcom/android/common/appService/e;-><init>(Lcom/android/common/appService/c;Lcom/android/common/appService/e;)V

    iput-object v0, p0, Lcom/android/common/appService/c;->hi:Lcom/android/common/appService/e;

    .line 42
    iput-object v1, p0, Lcom/android/common/appService/c;->hf:Lcom/android/common/appService/W;

    .line 43
    iput-object v1, p0, Lcom/android/common/appService/c;->hg:Lcom/android/common/camerastate/a;

    .line 46
    iput-object p1, p0, Lcom/android/common/appService/c;->hf:Lcom/android/common/appService/W;

    .line 47
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/c;->hg:Lcom/android/common/camerastate/a;

    .line 45
    return-void
.end method

.method private ic()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/common/appService/c;->hf:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private id()V
    .registers 2

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/c;->hh:Ljava/lang/String;

    .line 176
    return-void
.end method

.method private ie()Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/common/appService/c;->hf:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method private ih()V
    .registers 3

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/android/common/appService/c;->id()V

    .line 172
    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v1, "torch"

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Ml(Ljava/lang/String;)V

    .line 173
    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 170
    return-void
.end method

.method private ii()V
    .registers 3

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/c;->hh:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/common/cameradevice/p;->Ml(Ljava/lang/String;)V

    .line 181
    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 179
    return-void
.end method

.method private ik(J)V
    .registers 10

    .prologue
    const/4 v1, 0x1

    .line 100
    iget-boolean v0, p0, Lcom/android/common/appService/c;->he:Z

    if-eqz v0, :cond_6

    .line 101
    return-void

    .line 103
    :cond_6
    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qn(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    if-eqz v0, :cond_16

    .line 105
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    invoke-interface {v0}, Lcom/android/common/appService/d;->ix()V

    .line 107
    :cond_16
    iput-boolean v1, p0, Lcom/android/common/appService/c;->he:Z

    .line 108
    iget-object v0, p0, Lcom/android/common/appService/c;->hg:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 110
    new-instance v0, Lcom/android/common/appService/f;

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/f;-><init>(Lcom/android/common/appService/c;JJ)V

    iput-object v0, p0, Lcom/android/common/appService/c;->hn:Lcom/android/common/appService/f;

    .line 111
    iget-object v0, p0, Lcom/android/common/appService/c;->hn:Lcom/android/common/appService/f;

    invoke-virtual {v0}, Lcom/android/common/appService/f;->start()Landroid/os/CountDownTimer;

    .line 99
    return-void
.end method

.method static synthetic il(Lcom/android/common/appService/c;)Lcom/android/common/appService/d;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    return-object v0
.end method

.method static synthetic im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/c;->hk:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/c;->hl:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic io(Lcom/android/common/appService/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lcom/android/common/appService/c;->hk:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic ip(Lcom/android/common/appService/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .registers 2

    iput-object p1, p0, Lcom/android/common/appService/c;->hl:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic iq(Lcom/android/common/appService/c;)Landroid/content/SharedPreferences;
    .registers 2

    invoke-direct {p0}, Lcom/android/common/appService/c;->ie()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static synthetic ir(Lcom/android/common/appService/c;)Lcom/android/common/appService/W;
    .registers 2

    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    return-object v0
.end method

.method static synthetic is(Lcom/android/common/appService/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/c;->ih()V

    return-void
.end method

.method static synthetic it(Lcom/android/common/appService/c;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/appService/c;->ii()V

    return-void
.end method


# virtual methods
.method public ib(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 121
    iget-boolean v0, p0, Lcom/android/common/appService/c;->he:Z

    if-nez v0, :cond_7

    .line 122
    return-void

    .line 125
    :cond_7
    iput-boolean v3, p0, Lcom/android/common/appService/c;->he:Z

    .line 126
    iget-object v0, p0, Lcom/android/common/appService/c;->hg:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 128
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    if-eqz v0, :cond_19

    .line 129
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    invoke-interface {v0}, Lcom/android/common/appService/d;->iv()V

    .line 132
    :cond_19
    iget-object v0, p0, Lcom/android/common/appService/c;->hk:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_29

    .line 133
    iget-object v0, p0, Lcom/android/common/appService/c;->hk:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 134
    iget-object v0, p0, Lcom/android/common/appService/c;->hk:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 135
    iput-object v2, p0, Lcom/android/common/appService/c;->hk:Landroid/media/MediaPlayer;

    .line 138
    :cond_29
    iget-object v0, p0, Lcom/android/common/appService/c;->hl:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_39

    .line 139
    iget-object v0, p0, Lcom/android/common/appService/c;->hl:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 140
    iget-object v0, p0, Lcom/android/common/appService/c;->hl:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 141
    iput-object v2, p0, Lcom/android/common/appService/c;->hl:Landroid/media/MediaPlayer;

    .line 143
    :cond_39
    if-eqz p1, :cond_42

    .line 144
    invoke-direct {p0}, Lcom/android/common/appService/c;->ic()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->qn(Z)V

    .line 145
    :cond_42
    iget-object v0, p0, Lcom/android/common/appService/c;->hn:Lcom/android/common/appService/f;

    invoke-virtual {v0}, Lcom/android/common/appService/f;->cancel()V

    .line 146
    iput-object v2, p0, Lcom/android/common/appService/c;->hn:Lcom/android/common/appService/f;

    .line 147
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    if-eqz v0, :cond_52

    .line 148
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    invoke-interface {v0}, Lcom/android/common/appService/d;->iu()V

    .line 150
    :cond_52
    iget-object v0, p0, Lcom/android/common/appService/c;->hi:Lcom/android/common/appService/e;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/e;->removeMessages(I)V

    .line 120
    return-void
.end method

.method public if(J)Z
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 82
    iget-boolean v0, p0, Lcom/android/common/appService/c;->he:Z

    if-eqz v0, :cond_12

    .line 83
    const-string/jumbo v0, "ZtemtDelayShoot"

    const-string/jumbo v1, "delayshoot already running, just end delayShoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, v2}, Lcom/android/common/appService/c;->ib(Z)V

    .line 85
    return v2

    .line 87
    :cond_12
    const-string/jumbo v0, "ZtemtDelayShoot"

    const-string/jumbo v1, "start delayShoot"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/android/common/appService/c;->hg:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/common/appService/c;->ik(J)V

    .line 91
    :cond_28
    const/4 v0, 0x1

    return v0
.end method

.method public ig()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    if-eqz v0, :cond_9

    .line 67
    iget-object v0, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    invoke-interface {v0}, Lcom/android/common/appService/d;->iw()V

    .line 65
    :cond_9
    return-void
.end method

.method public ij(Lcom/android/common/appService/d;)V
    .registers 2

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/common/appService/c;->hj:Lcom/android/common/appService/d;

    .line 72
    return-void
.end method
