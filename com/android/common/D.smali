.class public Lcom/android/common/D;
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

.method public static avZ([BIII)Landroid/graphics/Bitmap;
    .registers 10

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v1, p0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>([B)V

    .line 46
    rem-int/lit16 v0, p3, 0x168

    if-eqz v0, :cond_42

    rem-int/lit8 v0, p3, 0x5a

    if-nez v0, :cond_42

    .line 47
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    mul-int v2, p1, p2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 48
    rem-int/lit16 v2, p3, 0xb4

    const/16 v3, 0x5a

    if-ne v2, v3, :cond_21

    move v5, p1

    move p1, p2

    move p2, v5

    .line 53
    :cond_21
    rem-int/lit16 v2, p3, 0x168

    rsub-int v2, v2, 0x168

    rem-int/lit16 v2, v2, 0x168

    invoke-static {v1, v0, p1, p2, v2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btR(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;III)V

    .line 54
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 58
    :goto_2d
    invoke-static {v0, p1, p2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->btU(Lcom/nubia/camera/common/Native/BufferCell;II)Lcom/nubia/camera/common/Native/BufferCell;

    move-result-object v1

    .line 59
    invoke-virtual {v0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 61
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->bua()[I

    move-result-object v0

    .line 62
    invoke-virtual {v1}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 63
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
    :try_end_40
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_40} :catch_44

    move-result-object v0

    .line 72
    return-object v0

    :cond_42
    move-object v0, v1

    .line 46
    goto :goto_2d

    .line 64
    :catch_44
    move-exception v0

    .line 66
    :try_start_45
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
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_67} :catch_68

    .line 70
    :goto_67
    throw v0

    .line 67
    :catch_68
    move-exception v1

    .line 68
    const-string/jumbo v2, "BitmapUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "dump hprof fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_67
.end method

.method public static awa(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x3f000000    # 0.5f

    .line 17
    if-nez p0, :cond_6

    .line 18
    return-object v0

    .line 20
    :cond_6
    if-eqz p1, :cond_3d

    .line 22
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 23
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v3

    .line 24
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v3

    .line 23
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 28
    :try_start_1d
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 27
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 28
    const/4 v6, 0x1

    move-object v0, p0

    .line 27
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 31
    if-eq v0, p0, :cond_32

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_32} :catch_33

    .line 32
    :cond_32
    return-object v0

    .line 33
    :catch_33
    move-exception v0

    .line 34
    const-string/jumbo v1, "BitmapUtil"

    const-string/jumbo v2, "Failed to rotate thumbnail"

    invoke-static {v1, v2, v0}, Lcom/a/a;->bvr(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 37
    :cond_3d
    return-object p0
.end method
