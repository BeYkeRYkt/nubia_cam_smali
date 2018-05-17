.class public Lcom/android/common/ui/MyVideoView;
.super Landroid/view/SurfaceView;
.source "SourceFile"


# instance fields
.field private TAG:Ljava/lang/String;

.field private uA:I

.field uB:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private uC:I

.field private uD:Landroid/view/SurfaceHolder;

.field private uE:I

.field private uF:I

.field private uG:Landroid/net/Uri;

.field private uH:I

.field private uI:I

.field private ul:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private um:Landroid/media/MediaPlayer$OnCompletionListener;

.field private un:Landroid/content/Context;

.field private uo:I

.field private up:I

.field private uq:Landroid/media/MediaPlayer$OnErrorListener;

.field private ur:Ljava/util/Map;

.field private us:Landroid/media/MediaPlayer$OnInfoListener;

.field private ut:Landroid/media/MediaPlayer;

.field private uu:Landroid/media/MediaPlayer$OnCompletionListener;

.field private uv:Landroid/media/MediaPlayer$OnErrorListener;

.field private uw:Landroid/media/MediaPlayer$OnInfoListener;

.field private ux:Landroid/media/MediaPlayer$OnPreparedListener;

.field uy:Landroid/media/MediaPlayer$OnPreparedListener;

.field uz:Landroid/view/SurfaceHolder$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 65
    const-string/jumbo v0, "MyVideoView"

    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->TAG:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->up:I

    .line 85
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    .line 88
    iput-object v1, p0, Lcom/android/common/ui/MyVideoView;->uD:Landroid/view/SurfaceHolder;

    .line 89
    iput-object v1, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    .line 104
    iput-object v1, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    .line 229
    new-instance v0, Lcom/android/common/ui/aE;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aE;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 228
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uB:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 240
    new-instance v0, Lcom/android/common/ui/aF;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aF;-><init>(Lcom/android/common/ui/MyVideoView;)V

    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uy:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 291
    new-instance v0, Lcom/android/common/ui/aG;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aG;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 290
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->um:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 302
    new-instance v0, Lcom/android/common/ui/aH;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aH;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 301
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->us:Landroid/media/MediaPlayer$OnInfoListener;

    .line 312
    new-instance v0, Lcom/android/common/ui/aI;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aI;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 311
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uq:Landroid/media/MediaPlayer$OnErrorListener;

    .line 361
    new-instance v0, Lcom/android/common/ui/aK;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aK;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 360
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->ul:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 412
    new-instance v0, Lcom/android/common/ui/aL;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aL;-><init>(Lcom/android/common/ui/MyVideoView;)V

    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uz:Landroid/view/SurfaceHolder$Callback;

    .line 108
    iput-object p1, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    .line 109
    invoke-direct {p0}, Lcom/android/common/ui/MyVideoView;->yE()V

    .line 106
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/common/ui/MyVideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 114
    iput-object p1, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    .line 115
    invoke-direct {p0}, Lcom/android/common/ui/MyVideoView;->yE()V

    .line 112
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 65
    const-string/jumbo v0, "MyVideoView"

    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->TAG:Ljava/lang/String;

    .line 84
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->up:I

    .line 85
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    .line 88
    iput-object v1, p0, Lcom/android/common/ui/MyVideoView;->uD:Landroid/view/SurfaceHolder;

    .line 89
    iput-object v1, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    .line 104
    iput-object v1, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    .line 229
    new-instance v0, Lcom/android/common/ui/aE;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aE;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 228
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uB:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 240
    new-instance v0, Lcom/android/common/ui/aF;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aF;-><init>(Lcom/android/common/ui/MyVideoView;)V

    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uy:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 291
    new-instance v0, Lcom/android/common/ui/aG;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aG;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 290
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->um:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 302
    new-instance v0, Lcom/android/common/ui/aH;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aH;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 301
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->us:Landroid/media/MediaPlayer$OnInfoListener;

    .line 312
    new-instance v0, Lcom/android/common/ui/aI;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aI;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 311
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uq:Landroid/media/MediaPlayer$OnErrorListener;

    .line 361
    new-instance v0, Lcom/android/common/ui/aK;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aK;-><init>(Lcom/android/common/ui/MyVideoView;)V

    .line 360
    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->ul:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 412
    new-instance v0, Lcom/android/common/ui/aL;

    invoke-direct {v0, p0}, Lcom/android/common/ui/aL;-><init>(Lcom/android/common/ui/MyVideoView;)V

    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->uz:Landroid/view/SurfaceHolder$Callback;

    .line 120
    iput-object p1, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    .line 121
    invoke-direct {p0}, Lcom/android/common/ui/MyVideoView;->yE()V

    .line 118
    return-void
.end method

.method private yE()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->uI:I

    .line 140
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->uH:I

    .line 141
    invoke-virtual {p0}, Lcom/android/common/ui/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->uz:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/common/ui/MyVideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 143
    invoke-virtual {p0, v3}, Lcom/android/common/ui/MyVideoView;->setFocusable(Z)V

    .line 144
    invoke-virtual {p0, v3}, Lcom/android/common/ui/MyVideoView;->setFocusableInTouchMode(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/android/common/ui/MyVideoView;->requestFocus()Z

    .line 146
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->up:I

    .line 147
    iput v2, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    .line 138
    return-void
.end method

.method private yF()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 528
    iget-object v2, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_16

    .line 529
    iget v2, p0, Lcom/android/common/ui/MyVideoView;->up:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_16

    .line 530
    iget v2, p0, Lcom/android/common/ui/MyVideoView;->up:I

    if-eqz v2, :cond_16

    .line 531
    iget v2, p0, Lcom/android/common/ui/MyVideoView;->up:I

    if-eq v2, v0, :cond_14

    .line 528
    :goto_13
    return v0

    :cond_14
    move v0, v1

    .line 531
    goto :goto_13

    :cond_16
    move v0, v1

    .line 528
    goto :goto_13
.end method

.method private yG()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 181
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->uG:Landroid/net/Uri;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->uD:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_a

    .line 183
    :cond_9
    return-void

    .line 187
    :cond_a
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.music.musicservicecommand"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    const-string/jumbo v1, "command"

    const-string/jumbo v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 193
    invoke-direct {p0, v3}, Lcom/android/common/ui/MyVideoView;->yH(Z)V

    .line 195
    :try_start_23
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    .line 196
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->uy:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 197
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->uB:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 198
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->um:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 199
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->uq:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 200
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->us:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 201
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->ul:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 202
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->uo:I

    .line 203
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/common/ui/MyVideoView;->uG:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/common/ui/MyVideoView;->ur:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 204
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->uD:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 205
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 206
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 211
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->up:I
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_7d} :catch_aa
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_7d} :catch_7e
    .catchall {:try_start_23 .. :try_end_7d} :catchall_d6

    .line 180
    return-void

    .line 218
    :catch_7e
    move-exception v0

    .line 219
    :try_start_7f
    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ui/MyVideoView;->uG:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 220
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->up:I

    .line 221
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    .line 222
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->uq:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 223
    return-void

    .line 212
    :catch_aa
    move-exception v0

    .line 213
    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ui/MyVideoView;->uG:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->up:I

    .line 215
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    .line 216
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->uq:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_d5
    .catchall {:try_start_7f .. :try_end_d5} :catchall_d6

    .line 217
    return-void

    .line 224
    :catchall_d6
    move-exception v0

    throw v0
.end method

.method private yH(Z)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 447
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_18

    .line 448
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 449
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 450
    iput-object v2, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    .line 451
    iput v1, p0, Lcom/android/common/ui/MyVideoView;->up:I

    .line 452
    if-eqz p1, :cond_18

    .line 453
    iput v1, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    .line 446
    :cond_18
    return-void
.end method

.method static synthetic yM(Lcom/android/common/ui/MyVideoView;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic yN(Lcom/android/common/ui/MyVideoView;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->un:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic yO(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic yP(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnCompletionListener;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->uu:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic yQ(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnErrorListener;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->uv:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic yR(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->uw:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method static synthetic yS(Lcom/android/common/ui/MyVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ux:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object v0
.end method

.method static synthetic yT(Lcom/android/common/ui/MyVideoView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/MyVideoView;->uA:I

    return v0
.end method

.method static synthetic yU(Lcom/android/common/ui/MyVideoView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/MyVideoView;->uC:I

    return v0
.end method

.method static synthetic yV(Lcom/android/common/ui/MyVideoView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/MyVideoView;->uE:I

    return v0
.end method

.method static synthetic yW(Lcom/android/common/ui/MyVideoView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    return v0
.end method

.method static synthetic yX(Lcom/android/common/ui/MyVideoView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/MyVideoView;->uH:I

    return v0
.end method

.method static synthetic yY(Lcom/android/common/ui/MyVideoView;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/MyVideoView;->uI:I

    return v0
.end method

.method static synthetic yZ(Lcom/android/common/ui/MyVideoView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/MyVideoView;->uo:I

    return p1
.end method

.method static synthetic za(Lcom/android/common/ui/MyVideoView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/MyVideoView;->up:I

    return p1
.end method

.method static synthetic zb(Lcom/android/common/ui/MyVideoView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/MyVideoView;->uC:I

    return p1
.end method

.method static synthetic zc(Lcom/android/common/ui/MyVideoView;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/MyVideoView;->uD:Landroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic zd(Lcom/android/common/ui/MyVideoView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/MyVideoView;->uE:I

    return p1
.end method

.method static synthetic ze(Lcom/android/common/ui/MyVideoView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    return p1
.end method

.method static synthetic zf(Lcom/android/common/ui/MyVideoView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/MyVideoView;->uH:I

    return p1
.end method

.method static synthetic zg(Lcom/android/common/ui/MyVideoView;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/ui/MyVideoView;->uI:I

    return p1
.end method

.method static synthetic zh(Lcom/android/common/ui/MyVideoView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/MyVideoView;->yG()V

    return-void
.end method

.method static synthetic zi(Lcom/android/common/ui/MyVideoView;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/MyVideoView;->yH(Z)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .registers 5

    .prologue
    .line 129
    iget v0, p0, Lcom/android/common/ui/MyVideoView;->uI:I

    invoke-static {v0, p1}, Lcom/android/common/ui/MyVideoView;->getDefaultSize(II)I

    move-result v0

    .line 130
    iget v1, p0, Lcom/android/common/ui/MyVideoView;->uH:I

    invoke-static {v1, p2}, Lcom/android/common/ui/MyVideoView;->getDefaultSize(II)I

    move-result v1

    .line 131
    invoke-virtual {p0, v0, v1}, Lcom/android/common/ui/MyVideoView;->setMeasuredDimension(II)V

    .line 125
    return-void
.end method

.method public start()V
    .registers 3

    .prologue
    const/4 v1, 0x3

    .line 461
    invoke-direct {p0}, Lcom/android/common/ui/MyVideoView;->yF()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 462
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 463
    iput v1, p0, Lcom/android/common/ui/MyVideoView;->up:I

    .line 465
    :cond_e
    iput v1, p0, Lcom/android/common/ui/MyVideoView;->uF:I

    .line 460
    return-void
.end method

.method public yI(I)V
    .registers 3

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/android/common/ui/MyVideoView;->yF()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 507
    iget-object v0, p0, Lcom/android/common/ui/MyVideoView;->ut:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 508
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->uA:I

    .line 505
    :goto_e
    return-void

    .line 510
    :cond_f
    iput p1, p0, Lcom/android/common/ui/MyVideoView;->uA:I

    goto :goto_e
.end method

.method public yJ(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .registers 2

    .prologue
    .line 386
    iput-object p1, p0, Lcom/android/common/ui/MyVideoView;->uu:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 384
    return-void
.end method

.method public yK(Landroid/net/Uri;)V
    .registers 3

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/common/ui/MyVideoView;->yL(Landroid/net/Uri;Ljava/util/Map;)V

    .line 154
    return-void
.end method

.method public yL(Landroid/net/Uri;Ljava/util/Map;)V
    .registers 4

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/common/ui/MyVideoView;->uG:Landroid/net/Uri;

    .line 163
    iput-object p2, p0, Lcom/android/common/ui/MyVideoView;->ur:Ljava/util/Map;

    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MyVideoView;->uA:I

    .line 165
    invoke-direct {p0}, Lcom/android/common/ui/MyVideoView;->yG()V

    .line 166
    invoke-virtual {p0}, Lcom/android/common/ui/MyVideoView;->requestLayout()V

    .line 167
    invoke-virtual {p0}, Lcom/android/common/ui/MyVideoView;->invalidate()V

    .line 161
    return-void
.end method
