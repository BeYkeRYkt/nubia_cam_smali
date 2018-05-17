.class public Lcom/android/common/l/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static age([BLandroid/util/SparseArray;)[B
    .registers 7

    .prologue
    .line 20
    new-instance v1, Lcom/android/common/exif/o;

    invoke-direct {v1}, Lcom/android/common/exif/o;-><init>()V

    .line 21
    sget v0, Lcom/android/common/exif/o;->PT:I

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    .line 21
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/common/exif/o;->QS(IJLjava/util/TimeZone;)Z

    .line 24
    :try_start_12
    invoke-virtual {v1, p0}, Lcom/android/common/exif/o;->QH([B)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_33

    .line 28
    :goto_15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 29
    const/4 v0, 0x0

    :goto_1b
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_38

    .line 30
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/android/common/exif/o;->QP(ILjava/lang/Object;)Lcom/android/common/exif/k;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 25
    :catch_33
    move-exception v0

    .line 26
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 32
    :cond_38
    invoke-virtual {v1, v2}, Lcom/android/common/exif/o;->QT(Ljava/util/Collection;)V

    .line 33
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 35
    :try_start_40
    invoke-virtual {v1, p0, v0}, Lcom/android/common/exif/o;->QL([BLjava/io/OutputStream;)V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_48

    .line 39
    :goto_43
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0

    .line 36
    :catch_48
    move-exception v1

    .line 37
    const-string/jumbo v2, "SaveExif"

    const-string/jumbo v3, "Could not write EXIF"

    invoke-static {v2, v3, v1}, Lcom/a/a;->bvp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_43
.end method
