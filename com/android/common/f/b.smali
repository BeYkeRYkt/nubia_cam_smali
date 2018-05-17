.class public Lcom/android/common/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private VA:Lcom/android/common/ActivityBase;

.field private VB:Z

.field private VC:Lcom/android/common/f/f;

.field private VD:Landroid/graphics/Bitmap;

.field private VE:Ljava/lang/String;

.field private VF:Landroid/os/Handler;

.field private VG:Lcom/android/common/f/d;

.field private VH:I

.field private VI:Lcom/android/common/a/c;

.field private VJ:Ljava/lang/Integer;

.field private VK:Lcom/android/common/f/a;

.field private VL:[F

.field private VM:Z

.field private VN:I


# direct methods
.method public constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/common/f/b;->VL:[F

    .line 33
    iput-object v1, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    .line 34
    iput-object v1, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    .line 35
    iput-object v1, p0, Lcom/android/common/f/b;->VE:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/android/common/f/b;->VC:Lcom/android/common/f/f;

    .line 45
    iput-boolean v2, p0, Lcom/android/common/f/b;->VB:Z

    .line 51
    iput-boolean v2, p0, Lcom/android/common/f/b;->VM:Z

    .line 54
    new-instance v0, Lcom/android/common/f/c;

    invoke-direct {v0, p0, v1}, Lcom/android/common/f/c;-><init>(Lcom/android/common/f/b;Lcom/android/common/f/c;)V

    iput-object v0, p0, Lcom/android/common/f/b;->VI:Lcom/android/common/a/c;

    .line 59
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;

    .line 65
    new-instance v0, Lcom/android/common/f/a;

    invoke-direct {v0, p1}, Lcom/android/common/f/a;-><init>(Lcom/android/common/ActivityBase;)V

    iput-object v0, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    .line 66
    iput-object p1, p0, Lcom/android/common/f/b;->VA:Lcom/android/common/ActivityBase;

    .line 67
    new-instance v0, Lcom/android/common/f/d;

    invoke-direct {v0, p0}, Lcom/android/common/f/d;-><init>(Lcom/android/common/f/b;)V

    iput-object v0, p0, Lcom/android/common/f/b;->VG:Lcom/android/common/f/d;

    .line 68
    iget-object v0, p0, Lcom/android/common/f/b;->VG:Lcom/android/common/f/d;

    invoke-virtual {v0}, Lcom/android/common/f/d;->start()V

    .line 69
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/common/f/b;->VG:Lcom/android/common/f/d;

    invoke-virtual {v1}, Lcom/android/common/f/d;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/common/f/i;

    invoke-direct {v2, p0}, Lcom/android/common/f/i;-><init>(Lcom/android/common/f/b;)V

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    .line 64
    return-void
.end method

.method static synthetic aaA(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 2

    iput-object p1, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic aaB(Lcom/android/common/f/b;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/f/b;->VH:I

    return p1
.end method

.method static synthetic aaC(Lcom/android/common/f/b;Ljava/lang/Integer;)Ljava/lang/Integer;
    .registers 2

    iput-object p1, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;

    return-object p1
.end method

.method static synthetic aaD(Lcom/android/common/f/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/f/b;->VM:Z

    return p1
.end method

.method static synthetic aaE(Lcom/android/common/f/b;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/f/b;->VN:I

    return p1
.end method

.method static synthetic aaF(Lcom/android/common/f/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/f/b;->aaj(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aaG(Lcom/android/common/f/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/f/b;->aal()V

    return-void
.end method

.method static synthetic aaH(Lcom/android/common/f/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/f/b;->aak()V

    return-void
.end method

.method private aai()V
    .registers 5

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    invoke-virtual {v0}, Lcom/android/common/f/a;->ZY()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x41ed99999999999aL    # 3.9728447488E9

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1f

    .line 168
    const-string/jumbo v0, "VideoMakerRender"

    const-string/jumbo v1, "video file size arrive limit. create a new file!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 166
    :cond_1f
    return-void
.end method

.method private aaj(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    const/4 v7, 0x0

    .line 229
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 230
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 231
    and-int/lit8 v2, v1, 0xf

    if-eqz v2, :cond_13

    .line 232
    shr-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x4

    .line 234
    :cond_13
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_1d

    .line 235
    shr-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x4

    .line 237
    :cond_1d
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_29

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v0, v2, :cond_4b

    .line 238
    :cond_29
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 239
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v7, v7, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 242
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v7, v7, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v0, 0x0

    .line 240
    invoke-virtual {v3, p1, v4, v5, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 243
    return-object v2

    .line 245
    :cond_4b
    return-object p1
.end method

.method private aak()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "drawBitmap"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0}, Lcom/android/common/f/b;->aam()Lcom/android/common/f/f;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 209
    invoke-direct {p0}, Lcom/android/common/f/b;->aam()Lcom/android/common/f/f;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/common/f/f;->aaI(Landroid/graphics/Bitmap;)V

    .line 212
    :cond_19
    iput-object v2, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    .line 206
    return-void
.end method

.method private aal()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/android/common/f/b;->VM:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/android/common/f/b;->VB:Z

    if-eqz v0, :cond_19

    .line 195
    :cond_a
    iget-object v0, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    if-eqz v0, :cond_13

    .line 196
    iget-object v0, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    invoke-virtual {v0}, Lcom/android/common/f/a;->stop()V

    .line 198
    :cond_13
    iput-boolean v1, p0, Lcom/android/common/f/b;->VM:Z

    .line 199
    iput-object v2, p0, Lcom/android/common/f/b;->VC:Lcom/android/common/f/f;

    .line 200
    iput-boolean v1, p0, Lcom/android/common/f/b;->VB:Z

    .line 193
    :cond_19
    return-void
.end method

.method private aam()Lcom/android/common/f/f;
    .registers 7

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/common/f/b;->VC:Lcom/android/common/f/f;

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2e

    .line 217
    const/4 v5, 0x0

    .line 218
    iget-boolean v0, p0, Lcom/android/common/f/b;->VM:Z

    if-eqz v0, :cond_17

    .line 219
    iget-object v0, p0, Lcom/android/common/f/b;->VA:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qv()I

    move-result v5

    .line 221
    :cond_17
    new-instance v0, Lcom/android/common/f/f;

    iget-object v1, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 222
    iget-object v2, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    iget-object v4, p0, Lcom/android/common/f/b;->VE:Ljava/lang/String;

    .line 221
    invoke-direct/range {v0 .. v5}, Lcom/android/common/f/f;-><init>(IILcom/android/common/f/a;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/common/f/b;->VC:Lcom/android/common/f/f;

    .line 224
    :cond_2e
    iget-object v0, p0, Lcom/android/common/f/b;->VC:Lcom/android/common/f/f;

    return-object v0
.end method

.method static synthetic aar(Lcom/android/common/f/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/f/b;->VB:Z

    return v0
.end method

.method static synthetic aas(Lcom/android/common/f/b;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic aat(Lcom/android/common/f/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/android/common/f/b;->VE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic aau(Lcom/android/common/f/b;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic aav(Lcom/android/common/f/b;)I
    .registers 2

    iget v0, p0, Lcom/android/common/f/b;->VH:I

    return v0
.end method

.method static synthetic aaw(Lcom/android/common/f/b;)Ljava/lang/Integer;
    .registers 2

    iget-object v0, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;

    return-object v0
.end method

.method static synthetic aax(Lcom/android/common/f/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/f/b;->VM:Z

    return v0
.end method

.method static synthetic aay(Lcom/android/common/f/b;)I
    .registers 2

    iget v0, p0, Lcom/android/common/f/b;->VN:I

    return v0
.end method

.method static synthetic aaz(Lcom/android/common/f/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/f/b;->VB:Z

    return p1
.end method


# virtual methods
.method public aan(I)V
    .registers 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    if-eqz v0, :cond_9

    .line 187
    iget-object v0, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    invoke-virtual {v0, p1}, Lcom/android/common/f/a;->aae(I)V

    .line 185
    :cond_9
    return-void
.end method

.method public aao()V
    .registers 3

    .prologue
    .line 136
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "tackPicture"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/android/common/n;->aqP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/f/b;->VE:Ljava/lang/String;

    .line 138
    iget-object v0, p0, Lcom/android/common/f/b;->VA:Lcom/android/common/ActivityBase;

    iget-object v1, p0, Lcom/android/common/f/b;->VI:Lcom/android/common/a/c;

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atc(Lcom/android/common/a/c;)V

    .line 139
    invoke-direct {p0}, Lcom/android/common/f/b;->aai()V

    .line 135
    return-void
.end method

.method public aap([BI)V
    .registers 6

    .prologue
    .line 143
    const-string/jumbo v0, "VideoMakerRender"

    const-string/jumbo v1, "takePicture with jpeg"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-static {}, Lcom/android/common/n;->aqP()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/f/b;->VE:Ljava/lang/String;

    .line 145
    iget-object v1, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;

    monitor-enter v1

    .line 146
    :try_start_12
    iget-object v0, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_27

    .line 147
    const-string/jumbo v0, "VideoMakerRender"

    const-string/jumbo v2, "drop jpeg"

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25
    .catchall {:try_start_12 .. :try_end_25} :catchall_45

    monitor-exit v1

    .line 148
    return-void

    .line 150
    :cond_27
    :try_start_27
    iget-object v0, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;
    :try_end_35
    .catchall {:try_start_27 .. :try_end_35} :catchall_45

    monitor-exit v1

    .line 152
    iget-object v0, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 153
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 154
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 155
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void

    .line 145
    :catchall_45
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public aaq(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 159
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "tackPicture with bitmap"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iput-object p1, p0, Lcom/android/common/f/b;->VD:Landroid/graphics/Bitmap;

    .line 161
    iput-object p2, p0, Lcom/android/common/f/b;->VE:Ljava/lang/String;

    .line 162
    iget-object v0, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 163
    invoke-direct {p0}, Lcom/android/common/f/b;->aai()V

    .line 158
    return-void
.end method

.method public cancel()V
    .registers 3

    .prologue
    .line 180
    const-string/jumbo v0, "woo"

    const-string/jumbo v1, "cancel"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/android/common/f/b;->stop()V

    .line 182
    iget-object v0, p0, Lcom/android/common/f/b;->VK:Lcom/android/common/f/a;

    invoke-virtual {v0}, Lcom/android/common/f/a;->ZT()V

    .line 179
    return-void
.end method

.method public release()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 125
    const-string/jumbo v0, "VideoMakerRender"

    const-string/jumbo v1, "release"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/android/common/f/b;->VG:Lcom/android/common/f/d;

    invoke-virtual {v0}, Lcom/android/common/f/d;->quit()Z

    .line 128
    iput-object v2, p0, Lcom/android/common/f/b;->VG:Lcom/android/common/f/d;

    .line 129
    iput-object v2, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    .line 130
    iget-object v1, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;

    monitor-enter v1

    .line 131
    const/4 v0, 0x0

    :try_start_1c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/f/b;->VJ:Ljava/lang/Integer;
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_24

    monitor-exit v1

    .line 124
    return-void

    .line 130
    :catchall_24
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 174
    const-string/jumbo v0, "llw"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/android/common/f/b;->VA:Lcom/android/common/ActivityBase;

    iget-object v1, p0, Lcom/android/common/f/b;->VI:Lcom/android/common/a/c;

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atd(Lcom/android/common/a/c;)Z

    .line 176
    iget-object v0, p0, Lcom/android/common/f/b;->VF:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    return-void
.end method
