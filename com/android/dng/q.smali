.class final Lcom/android/dng/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private aBd:J

.field private aBe:I

.field final synthetic aBf:Lcom/android/dng/a;


# direct methods
.method constructor <init>(Lcom/android/dng/a;)V
    .registers 4

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dng/q;->aBd:J

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dng/q;->aBe:I

    .line 104
    return-void
.end method

.method private aQq([B)V
    .registers 14

    .prologue
    const-wide/16 v10, 0x3e8

    .line 167
    iget-object v0, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v0}, Lcom/android/dng/a;->aOO(Lcom/android/dng/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pR()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v2

    .line 168
    iget-object v0, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v0}, Lcom/android/dng/a;->aOO(Lcom/android/dng/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v4

    .line 170
    iget-object v0, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v0}, Lcom/android/dng/a;->aOO(Lcom/android/dng/a;)Lcom/android/common/appService/W;

    move-result-object v0

    const v1, 0x7f0a0279

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v4, v5, v0}, Lcom/android/common/h;->aoZ(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    div-long v6, v4, v10

    iget-wide v8, p0, Lcom/android/dng/q;->aBd:J

    div-long/2addr v8, v10

    cmp-long v1, v6, v8

    if-nez v1, :cond_a6

    .line 172
    iget v1, p0, Lcom/android/dng/q;->aBe:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/dng/q;->aBe:I

    .line 173
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dng/q;->aBe:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    :goto_54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dng"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 179
    new-instance v4, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 180
    const-string/jumbo v0, "_data"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/android/dng/b;

    .line 182
    iget-object v1, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v1}, Lcom/android/dng/a;->aOO(Lcom/android/dng/a;)Lcom/android/common/appService/W;

    move-result-object v5

    move-object v1, p1

    .line 181
    invoke-direct/range {v0 .. v5}, Lcom/android/dng/b;-><init>([BLjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/common/appService/W;)V

    .line 183
    iget-object v1, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v1}, Lcom/android/dng/a;->aOO(Lcom/android/dng/a;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 166
    return-void

    .line 175
    :cond_a6
    iput-wide v4, p0, Lcom/android/dng/q;->aBd:J

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/dng/q;->aBe:I

    goto :goto_54
.end method

.method private aQr([B)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 135
    :try_start_1
    new-instance v0, Landroid/hardware/camera2/DngCreator;

    iget-object v1, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v1}, Lcom/android/dng/a;->aOR(Lcom/android/dng/a;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v1

    iget-object v3, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v3}, Lcom/android/dng/a;->aOQ(Lcom/android/dng/a;)Landroid/hardware/camera2/CaptureResult;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/hardware/camera2/DngCreator;-><init>(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CaptureResult;)V

    .line 136
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/high16 v3, 0x1e00000

    invoke-direct {v1, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_19} :catch_95
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_19} :catch_49
    .catchall {:try_start_1 .. :try_end_19} :catchall_bb

    .line 137
    :try_start_19
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 138
    iget-object v2, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v2}, Lcom/android/dng/a;->aOS(Lcom/android/dng/a;)Landroid/util/Size;

    move-result-object v2

    const-wide/16 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/camera2/DngCreator;->writeByteBuffer(Ljava/io/OutputStream;Landroid/util/Size;Ljava/nio/ByteBuffer;J)V

    .line 139
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 140
    invoke-direct {p0, v0}, Lcom/android/dng/q;->aQq([B)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_2f} :catch_c1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_19 .. :try_end_2f} :catch_c4
    .catchall {:try_start_19 .. :try_end_2f} :catchall_6e

    .line 153
    if-eqz v1, :cond_34

    .line 154
    :try_start_31
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_3e

    .line 161
    :cond_34
    :goto_34
    const-string/jumbo v0, "MTKDngShot"

    const-string/jumbo v1, "convertRawToDng"

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    return-void

    .line 156
    :catch_3e
    move-exception v0

    .line 157
    const-string/jumbo v0, "MTKDngShot"

    const-string/jumbo v1, "convertRawToDng outputStream close error"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 144
    :catch_49
    move-exception v0

    move-object v1, v2

    .line 146
    :goto_4b
    :try_start_4b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "/sdcard/camera_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ".hprof"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_6d} :catch_75
    .catchall {:try_start_4b .. :try_end_6d} :catchall_6e

    .line 150
    :goto_6d
    :try_start_6d
    throw v0
    :try_end_6e
    .catchall {:try_start_6d .. :try_end_6e} :catchall_6e

    .line 151
    :catchall_6e
    move-exception v0

    .line 153
    :goto_6f
    if-eqz v1, :cond_74

    .line 154
    :try_start_71
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_74
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_b0

    .line 151
    :cond_74
    :goto_74
    throw v0

    .line 147
    :catch_75
    move-exception v2

    .line 148
    :try_start_76
    const-string/jumbo v3, "MTKDngShot"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dump hprof fail "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_94
    .catchall {:try_start_76 .. :try_end_94} :catchall_6e

    goto :goto_6d

    .line 142
    :catch_95
    move-exception v0

    .line 143
    :goto_96
    :try_start_96
    const-string/jumbo v0, "MTKDngShot"

    const-string/jumbo v1, "convertRawToDng, dng write error"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9f
    .catchall {:try_start_96 .. :try_end_9f} :catchall_be

    .line 153
    if-eqz v2, :cond_34

    .line 154
    :try_start_a1
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a4
    .catch Ljava/io/IOException; {:try_start_a1 .. :try_end_a4} :catch_a5

    goto :goto_34

    .line 156
    :catch_a5
    move-exception v0

    .line 157
    const-string/jumbo v0, "MTKDngShot"

    const-string/jumbo v1, "convertRawToDng outputStream close error"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 156
    :catch_b0
    move-exception v1

    .line 157
    const-string/jumbo v1, "MTKDngShot"

    const-string/jumbo v2, "convertRawToDng outputStream close error"

    invoke-static {v1, v2}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_74

    .line 151
    :catchall_bb
    move-exception v0

    move-object v1, v2

    goto :goto_6f

    :catchall_be
    move-exception v0

    move-object v1, v2

    goto :goto_6f

    .line 142
    :catch_c1
    move-exception v0

    move-object v2, v1

    goto :goto_96

    .line 144
    :catch_c4
    move-exception v0

    goto :goto_4b
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    const-string/jumbo v2, "MTKDngShot"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "rawPictureCallbackTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-nez p1, :cond_32

    .line 110
    const-string/jumbo v0, "MTKDngShot"

    const-string/jumbo v1, "[mRawPictureCallback] data is null "

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    return-void

    .line 113
    :cond_32
    iget-object v0, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v0}, Lcom/android/dng/a;->aOP(Lcom/android/dng/a;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 114
    return-void

    .line 116
    :cond_3b
    iget-object v0, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v0, v5}, Lcom/android/dng/a;->aOT(Lcom/android/dng/a;Z)Z

    .line 117
    iget-object v0, p0, Lcom/android/dng/q;->aBf:Lcom/android/dng/a;

    invoke-static {v0}, Lcom/android/dng/a;->aOO(Lcom/android/dng/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const-wide/32 v2, 0x2800000

    invoke-virtual {v0, v2, v3, v5}, Lcom/android/common/storagemanager/f;->agw(JZ)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    move-result-object v0

    .line 118
    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 117
    if-eq v0, v1, :cond_69

    .line 121
    const/high16 v0, 0x3c00000

    :try_start_57
    invoke-static {v0}, Lcom/android/common/h;->aoY(I)Z
    :try_end_5a
    .catch Ljava/lang/OutOfMemoryError; {:try_start_57 .. :try_end_5a} :catch_5b

    .line 126
    :goto_5a
    return-void

    .line 122
    :catch_5b
    move-exception v0

    .line 123
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 124
    const-string/jumbo v0, "MTKDngShot"

    const-string/jumbo v1, "dng out of memory"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5a

    .line 128
    :cond_69
    invoke-direct {p0, p1}, Lcom/android/dng/q;->aQr([B)V

    .line 106
    return-void
.end method
