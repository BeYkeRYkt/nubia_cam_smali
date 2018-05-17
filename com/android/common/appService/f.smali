.class Lcom/android/common/appService/f;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# instance fields
.field private hq:J

.field final synthetic hr:Lcom/android/common/appService/c;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/c;JJ)V
    .registers 8

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    .line 198
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 193
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/appService/f;->hq:J

    .line 199
    invoke-direct {p0}, Lcom/android/common/appService/f;->iz()V

    .line 200
    invoke-direct {p0}, Lcom/android/common/appService/f;->iA()V

    .line 197
    return-void
.end method

.method private iA()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 235
    :try_start_1
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->iq(Lcom/android/common/appService/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 238
    iget-object v2, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v2}, Lcom/android/common/appService/c;->ir(Lcom/android/common/appService/c;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    .line 241
    const v3, 0x7f0a0330

    .line 238
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 235
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 242
    const-string/jumbo v1, "on"

    .line 235
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 243
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/common/appService/c;->ip(Lcom/android/common/appService/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 244
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->ir(Lcom/android/common/appService/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 246
    const v1, 0x7f090010

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 247
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 248
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 249
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 250
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 247
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 251
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 252
    const/4 v1, 0x1

    .line 251
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 253
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 254
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_79} :catch_7a

    .line 233
    :cond_79
    :goto_79
    return-void

    .line 256
    :catch_7a
    move-exception v0

    .line 257
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 258
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 259
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0, v6}, Lcom/android/common/appService/c;->ip(Lcom/android/common/appService/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_79
.end method

.method private iz()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 205
    :try_start_1
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->iq(Lcom/android/common/appService/c;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 207
    const-string/jumbo v1, "pref_camera_shutter_sound_key"

    .line 208
    iget-object v2, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v2}, Lcom/android/common/appService/c;->ir(Lcom/android/common/appService/c;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v2

    .line 211
    const v3, 0x7f0a0330

    .line 208
    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 205
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string/jumbo v1, "on"

    .line 205
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    .line 213
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v0, v1}, Lcom/android/common/appService/c;->io(Lcom/android/common/appService/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 214
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->ir(Lcom/android/common/appService/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 216
    const v1, 0x7f09000f

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object v4

    .line 217
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 218
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 219
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    .line 220
    invoke-virtual {v4}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    .line 217
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 221
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 222
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 223
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_79} :catch_7a

    .line 203
    :cond_79
    :goto_79
    return-void

    .line 225
    :catch_7a
    move-exception v0

    .line 226
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_79

    .line 227
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 228
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0, v6}, Lcom/android/common/appService/c;->io(Lcom/android/common/appService/c;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    goto :goto_79
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->ir(Lcom/android/common/appService/c;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 268
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/c;->ib(Z)V

    .line 264
    return-void
.end method

.method public onTick(J)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x3

    const-wide/16 v4, 0x1

    .line 272
    const-string/jumbo v0, "1"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wq==remain: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-wide/16 v0, 0x32

    sub-long v0, p1, v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    add-long/2addr v0, v4

    .line 274
    iget-object v2, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v2}, Lcom/android/common/appService/c;->il(Lcom/android/common/appService/c;)Lcom/android/common/appService/d;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 275
    iget-object v2, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v2}, Lcom/android/common/appService/c;->il(Lcom/android/common/appService/c;)Lcom/android/common/appService/d;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/android/common/appService/d;->iy(J)V

    .line 277
    :cond_37
    cmp-long v2, v0, v6

    if-lez v2, :cond_57

    .line 278
    iget-wide v2, p0, Lcom/android/common/appService/f;->hq:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_56

    .line 283
    :try_start_41
    iget-object v2, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v2}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 284
    iget-object v2, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v2}, Lcom/android/common/appService/c;->in(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_54} :catch_82

    .line 288
    :goto_54
    iput-wide v0, p0, Lcom/android/common/appService/f;->hq:J

    .line 271
    :cond_56
    :goto_56
    return-void

    .line 290
    :cond_57
    cmp-long v2, v0, v6

    if-nez v2, :cond_7d

    .line 294
    :try_start_5b
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_56

    .line 295
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 296
    iget-object v0, p0, Lcom/android/common/appService/f;->hr:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->im(Lcom/android/common/appService/c;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_7a} :catch_7b

    goto :goto_56

    .line 298
    :catch_7b
    move-exception v0

    goto :goto_56

    .line 301
    :cond_7d
    cmp-long v0, v0, v4

    if-nez v0, :cond_56

    goto :goto_56

    .line 285
    :catch_82
    move-exception v2

    goto :goto_54
.end method
