.class public Lcom/android/common/i/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static YL:Landroid/media/MediaPlayer;

.field private static YM:Landroid/media/MediaPlayer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    .line 24
    sput-object v0, Lcom/android/common/i/d;->YM:Landroid/media/MediaPlayer;

    .line 20
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aeV(Lcom/android/common/appService/W;)I
    .registers 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 132
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static aeW(Lcom/android/common/appService/W;)Landroid/content/SharedPreferences;
    .registers 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method public static aeX(Lcom/android/common/appService/W;)V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 28
    :try_start_1
    invoke-static {p0}, Lcom/android/common/i/d;->aeW(Lcom/android/common/appService/W;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 29
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    const-string/jumbo v1, "on"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    .line 30
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    .line 31
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 32
    const v1, 0x7f090040

    .line 31
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 33
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    .line 34
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 35
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 36
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 37
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    .line 38
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 39
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 40
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 41
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_5d} :catch_5e

    .line 26
    :cond_5d
    :goto_5d
    return-void

    .line 43
    :catch_5e
    move-exception v0

    .line 44
    const-string/jumbo v1, "MultiShootUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playFastSound fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_5d

    .line 46
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 47
    sput-object v6, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    goto :goto_5d
.end method

.method public static aeY(Lcom/android/common/appService/W;)V
    .registers 7

    .prologue
    .line 102
    invoke-static {p0}, Lcom/android/common/i/d;->aeW(Lcom/android/common/appService/W;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 103
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0a0330

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "on"

    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 105
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 107
    :try_start_24
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 108
    const v2, 0x7f090041

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 110
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 111
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 112
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 109
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 114
    const/4 v1, 0x1

    .line 113
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 115
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 116
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_4c} :catch_4d

    .line 101
    :cond_4c
    :goto_4c
    return-void

    .line 117
    :catch_4d
    move-exception v0

    .line 118
    const-string/jumbo v1, "MultiShootUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "playOnceSlowSound fail "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4c
.end method

.method public static aeZ(Lcom/android/common/appService/W;Landroid/hardware/Camera$PreviewCallback;)V
    .registers 5

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/appService/k;->jP(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 125
    const/4 v0, 0x0

    :goto_c
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1f

    .line 126
    invoke-virtual {p0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v1

    invoke-static {p0}, Lcom/android/common/i/d;->aeV(Lcom/android/common/appService/W;)I

    move-result v2

    new-array v2, v2, [B

    invoke-virtual {v1, v2}, Lcom/android/common/cameradevice/j;->KW([B)V

    .line 125
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 123
    :cond_1f
    return-void
.end method

.method public static afa()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 53
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_11

    .line 54
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 55
    sget-object v0, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 56
    sput-object v1, Lcom/android/common/i/d;->YL:Landroid/media/MediaPlayer;

    .line 52
    :cond_11
    return-void
.end method
