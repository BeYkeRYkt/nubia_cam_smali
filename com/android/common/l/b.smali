.class public Lcom/android/common/l/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static agf([BIII)Lcom/android/common/l/e;
    .registers 13

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 25
    new-instance v6, Lcom/android/common/l/e;

    invoke-direct {v6}, Lcom/android/common/l/e;-><init>()V

    .line 26
    new-instance v0, Landroid/graphics/YuvImage;

    .line 28
    const/16 v2, 0x11

    move-object v1, p0

    move v3, p1

    move v4, p2

    .line 26
    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 34
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 35
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 37
    new-instance v4, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {v4, v5, v7, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 36
    invoke-virtual {v0, v4, p3, v1}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    move-result v0

    iput-boolean v0, v6, Lcom/android/common/l/e;->ZT:Z

    .line 38
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, v6, Lcom/android/common/l/e;->ZS:[B

    .line 39
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 40
    const-string/jumbo v0, "CompressImage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "yuv2jpeg compress time:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_50} :catch_51

    .line 45
    :goto_50
    return-object v6

    .line 41
    :catch_51
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 43
    iput-boolean v8, v6, Lcom/android/common/l/e;->ZT:Z

    goto :goto_50
.end method

.method public static agg(Landroid/graphics/Bitmap;I)Lcom/android/common/l/e;
    .registers 10

    .prologue
    .line 50
    new-instance v1, Lcom/android/common/l/e;

    invoke-direct {v1}, Lcom/android/common/l/e;-><init>()V

    .line 52
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 53
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 54
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v4, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v4

    iput-boolean v4, v1, Lcom/android/common/l/e;->ZT:Z

    .line 55
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    iput-object v4, v1, Lcom/android/common/l/e;->ZS:[B

    .line 56
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 57
    const-string/jumbo v0, "CompressImage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "bitmap2jpeg compress time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_3f} :catch_40

    .line 62
    :goto_3f
    return-object v1

    .line 58
    :catch_40
    move-exception v0

    .line 59
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/android/common/l/e;->ZT:Z

    goto :goto_3f
.end method
