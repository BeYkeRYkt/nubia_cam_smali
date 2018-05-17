.class public Lcom/android/common/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final agF:[Ljava/lang/String;

.field private static final agG:[I


# instance fields
.field private agH:Landroid/media/SoundPool$OnLoadCompleteListener;

.field private agI:I

.field private agJ:[I

.field private agK:Landroid/media/SoundPool;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 53
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    const-string/jumbo v1, "/system/media/audio/ui/camera_click.ogg"

    aput-object v1, v0, v3

    .line 55
    const-string/jumbo v1, "/system/media/audio/ui/camera_focus.ogg"

    aput-object v1, v0, v4

    .line 56
    const-string/jumbo v1, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v1, v0, v5

    .line 57
    const-string/jumbo v1, "/system/media/audio/ui/VideoRecord.ogg"

    aput-object v1, v0, v6

    .line 58
    const-string/jumbo v1, "/system/media/audio/ui/ZoomSound.ogg"

    aput-object v1, v0, v7

    .line 59
    const-string/jumbo v1, "/system/media/audio/ui/cameraCountdownSlow.ogg"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "/system/media/audio/ui/cameraCountdownFast.ogg"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "/system/media/audio/ui/camera_wheel.ogg"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 53
    sput-object v0, Lcom/android/common/d;->agF:[Ljava/lang/String;

    .line 65
    const/16 v0, 0x8

    new-array v1, v0, [I

    .line 66
    const v0, 0x7f09000e

    aput v0, v1, v3

    .line 67
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->getProductName()Ljava/lang/String;

    move-result-object v0

    .line 68
    const-string/jumbo v2, "N940Sc"

    .line 67
    #disallowed odex opcode
    #invoke-virtual-quick {v0, v2}, vtable@1
    nop

    move-result v0

    if-nez v0, :cond_7a

    .line 68
    const v0, 0x7f090011

    .line 67
    :goto_57
    aput v0, v1, v4

    .line 70
    const v0, 0x7f09003f

    aput v0, v1, v5

    .line 71
    const v0, 0x7f09003f

    aput v0, v1, v6

    .line 72
    aput v3, v1, v7

    .line 73
    const v0, 0x7f090010

    const/4 v2, 0x5

    aput v0, v1, v2

    .line 74
    const v0, 0x7f09000f

    const/4 v2, 0x6

    aput v0, v1, v2

    .line 75
    const v0, 0x7f090013

    const/4 v2, 0x7

    aput v0, v1, v2

    .line 65
    sput-object v1, Lcom/android/common/d;->agG:[I

    .line 46
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 69
    :cond_7a
    const v0, 0x7f090012

    goto :goto_57
.end method

.method public constructor <init>(I)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v3, -0x1

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    new-instance v1, Lcom/android/common/E;

    invoke-direct {v1, p0}, Lcom/android/common/E;-><init>(Lcom/android/common/d;)V

    .line 272
    iput-object v1, p0, Lcom/android/common/d;->agH:Landroid/media/SoundPool$OnLoadCompleteListener;

    .line 125
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x5

    invoke-direct {v1, v2, p1, v0}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v1, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    .line 127
    iget-object v1, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    iget-object v2, p0, Lcom/android/common/d;->agH:Landroid/media/SoundPool$OnLoadCompleteListener;

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 128
    sget-object v1, Lcom/android/common/d;->agG:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/common/d;->agJ:[I

    .line 129
    :goto_22
    iget-object v1, p0, Lcom/android/common/d;->agJ:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 130
    iget-object v1, p0, Lcom/android/common/d;->agJ:[I

    aput v3, v1, v0

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 132
    :cond_2e
    iput v3, p0, Lcom/android/common/d;->agI:I

    .line 124
    return-void
.end method

.method static synthetic aoh(Lcom/android/common/d;)I
    .registers 2

    iget v0, p0, Lcom/android/common/d;->agI:I

    return v0
.end method

.method static synthetic aoi(Lcom/android/common/d;I)I
    .registers 2

    iput p1, p0, Lcom/android/common/d;->agI:I

    return p1
.end method


# virtual methods
.method public declared-synchronized aoe(I)V
    .registers 6

    .prologue
    monitor-enter p0

    .line 148
    if-ltz p1, :cond_8

    :try_start_3
    sget-object v0, Lcom/android/common/d;->agF:[Ljava/lang/String;

    array-length v0, v0

    if-lt p1, v0, :cond_25

    .line 149
    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_22

    :catchall_22
    move-exception v0

    monitor-exit p0

    throw v0

    .line 151
    :cond_25
    :try_start_25
    iget-object v0, p0, Lcom/android/common/d;->agJ:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3b

    .line 152
    iget-object v0, p0, Lcom/android/common/d;->agJ:[I

    .line 153
    iget-object v1, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    sget-object v2, Lcom/android/common/d;->agF:[Ljava/lang/String;

    aget-object v2, v2, p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v1

    .line 152
    aput v1, v0, p1
    :try_end_3b
    .catchall {:try_start_25 .. :try_end_3b} :catchall_22

    :cond_3b
    monitor-exit p0

    .line 147
    return-void
.end method

.method public declared-synchronized aof(Landroid/content/Context;I)V
    .registers 10

    .prologue
    monitor-enter p0

    .line 225
    if-nez p1, :cond_e

    .line 226
    :try_start_3
    const-string/jumbo v0, "MediaActionSound"

    const-string/jumbo v1, "play but context is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_2f

    monitor-exit p0

    .line 227
    return-void

    .line 229
    :cond_e
    if-ltz p2, :cond_15

    :try_start_10
    sget-object v0, Lcom/android/common/d;->agG:[I

    array-length v0, v0

    if-lt p2, v0, :cond_32

    .line 230
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown sound requested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2f
    .catchall {:try_start_10 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 233
    :cond_32
    :try_start_32
    iget-object v0, p0, Lcom/android/common/d;->agJ:[I

    aget v0, v0, p2

    const/4 v1, -0x1

    if-ne v0, v1, :cond_77

    .line 234
    const-string/jumbo v0, "MediaActionSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSoundIds = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/d;->agJ:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  mSoundIdToPlay = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/d;->agI:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    sget-object v1, Lcom/android/common/d;->agG:[I

    aget v1, v1, p2

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/common/d;->agI:I

    .line 236
    iget-object v0, p0, Lcom/android/common/d;->agJ:[I

    iget v1, p0, Lcom/android/common/d;->agI:I

    aput v1, v0, p2
    :try_end_75
    .catchall {:try_start_32 .. :try_end_75} :catchall_2f

    :goto_75
    monitor-exit p0

    .line 224
    return-void

    .line 238
    :cond_77
    :try_start_77
    iget-object v0, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/common/d;->agJ:[I

    aget v1, v1, p2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_88
    .catchall {:try_start_77 .. :try_end_88} :catchall_2f

    goto :goto_75
.end method

.method public declared-synchronized aog(Landroid/content/Context;)V
    .registers 9

    .prologue
    const/4 v2, -0x1

    monitor-enter p0

    .line 258
    if-nez p1, :cond_f

    .line 259
    :try_start_4
    const-string/jumbo v0, "MediaActionSound"

    const-string/jumbo v1, "playWheelTone but context is null!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_43

    monitor-exit p0

    .line 260
    return-void

    .line 262
    :cond_f
    :try_start_f
    iget-object v0, p0, Lcom/android/common/d;->agJ:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    if-ne v0, v2, :cond_30

    .line 263
    iget-object v0, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    .line 264
    sget-object v1, Lcom/android/common/d;->agG:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    const/4 v2, 0x1

    .line 263
    invoke-virtual {v0, p1, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    move-result v0

    iput v0, p0, Lcom/android/common/d;->agI:I

    .line 265
    iget-object v0, p0, Lcom/android/common/d;->agJ:[I

    iget v1, p0, Lcom/android/common/d;->agI:I

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 266
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/d;->agI:I
    :try_end_2e
    .catchall {:try_start_f .. :try_end_2e} :catchall_43

    :goto_2e
    monitor-exit p0

    .line 257
    return-void

    .line 268
    :cond_30
    :try_start_30
    iget-object v0, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    iget-object v1, p0, Lcom/android/common/d;->agJ:[I

    const/4 v2, 0x7

    aget v1, v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x40000000    # 2.0f

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
    :try_end_42
    .catchall {:try_start_30 .. :try_end_42} :catchall_43

    goto :goto_2e

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    if-eqz v0, :cond_c

    .line 295
    iget-object v0, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 296
    iput-object v1, p0, Lcom/android/common/d;->agK:Landroid/media/SoundPool;

    .line 293
    :cond_c
    return-void
.end method
