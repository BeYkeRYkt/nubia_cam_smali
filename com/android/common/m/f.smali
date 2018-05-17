.class Lcom/android/common/m/f;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private abk:Landroid/content/ContentResolver;

.field private abl:Z

.field final synthetic abm:Lcom/android/common/m/c;


# direct methods
.method public constructor <init>(Lcom/android/common/m/c;ZLandroid/content/ContentResolver;)V
    .registers 4

    .prologue
    .line 248
    iput-object p1, p0, Lcom/android/common/m/f;->abm:Lcom/android/common/m/c;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 249
    iput-boolean p2, p0, Lcom/android/common/m/f;->abl:Z

    .line 250
    iput-object p3, p0, Lcom/android/common/m/f;->abk:Landroid/content/ContentResolver;

    .line 248
    return-void
.end method


# virtual methods
.method protected varargs ahK([Ljava/lang/Void;)Lcom/android/common/m/a;
    .registers 9

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 257
    iget-boolean v0, p0, Lcom/android/common/m/f;->abl:Z

    if-eqz v0, :cond_7f

    .line 259
    :try_start_6
    iget-object v0, p0, Lcom/android/common/m/f;->abm:Lcom/android/common/m/c;

    invoke-static {v0}, Lcom/android/common/m/c;->ahC(Lcom/android/common/m/c;)Ljava/io/File;

    move-result-object v0

    iget-object v2, p0, Lcom/android/common/m/f;->abk:Landroid/content/ContentResolver;

    invoke-static {v0, v2}, Lcom/android/common/m/a;->aha(Ljava/io/File;Landroid/content/ContentResolver;)Lcom/android/common/m/a;
    :try_end_11
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_11} :catch_19

    move-result-object v0

    .line 270
    :goto_12
    invoke-virtual {p0}, Lcom/android/common/m/f;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 271
    return-object v1

    .line 260
    :catch_19
    move-exception v0

    .line 262
    :try_start_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "/sdcard/camera_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".hprof"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_3c} :catch_3d

    .line 266
    :goto_3c
    throw v0

    .line 263
    :catch_3d
    move-exception v1

    .line 264
    const-string/jumbo v2, "ThumbnailManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dumpHprofData fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 273
    :cond_5d
    if-nez v0, :cond_75

    .line 274
    iget-object v2, p0, Lcom/android/common/m/f;->abm:Lcom/android/common/m/c;

    invoke-static {v2}, Lcom/android/common/m/c;->ahD(Lcom/android/common/m/c;)Landroid/os/ConditionVariable;

    move-result-object v2

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v4, v5}, Landroid/os/ConditionVariable;->block(J)Z

    .line 275
    new-array v2, v6, [Lcom/android/common/m/a;

    .line 278
    iget-object v3, p0, Lcom/android/common/m/f;->abk:Landroid/content/ContentResolver;

    .line 277
    invoke-static {v3, v2}, Lcom/android/common/m/a;->agZ(Landroid/content/ContentResolver;[Lcom/android/common/m/a;)I

    move-result v3

    .line 279
    packed-switch v3, :pswitch_data_82

    .line 289
    :cond_75
    return-object v0

    .line 281
    :pswitch_76
    const/4 v0, 0x0

    aget-object v0, v2, v0

    return-object v0

    .line 283
    :pswitch_7a
    return-object v1

    .line 285
    :pswitch_7b
    invoke-virtual {p0, v6}, Lcom/android/common/m/f;->cancel(Z)Z

    .line 286
    return-object v1

    :cond_7f
    move-object v0, v1

    goto :goto_12

    .line 279
    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_76
        :pswitch_7b
    .end packed-switch
.end method

.method protected ahL(Lcom/android/common/m/a;)V
    .registers 3

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/common/m/f;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 295
    return-void

    .line 296
    :cond_7
    iget-object v0, p0, Lcom/android/common/m/f;->abm:Lcom/android/common/m/c;

    invoke-virtual {v0, p1}, Lcom/android/common/m/c;->ahj(Lcom/android/common/m/a;)V

    .line 293
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 254
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/common/m/f;->ahK([Ljava/lang/Void;)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 293
    check-cast p1, Lcom/android/common/m/a;

    invoke-virtual {p0, p1}, Lcom/android/common/m/f;->ahL(Lcom/android/common/m/a;)V

    return-void
.end method
