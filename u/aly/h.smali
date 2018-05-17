.class public Lu/aly/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)[B
    .registers 6

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 39
    if-nez p0, :cond_5

    .line 40
    :cond_4
    return-object v2

    .line 39
    :cond_5
    array-length v0, p0

    if-lez v0, :cond_4

    .line 43
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0}, Ljava/util/zip/Deflater;-><init>()V

    .line 44
    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 45
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/16 v1, 0x2000

    .line 47
    new-array v3, v1, [B

    .line 48
    sput v4, Lu/aly/h;->a:I

    .line 51
    :try_start_19
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1e
    .catchall {:try_start_19 .. :try_end_1e} :catchall_48

    .line 52
    :goto_1e
    :try_start_1e
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result v2

    if-nez v2, :cond_36

    .line 53
    invoke-virtual {v0, v3}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result v2

    .line 54
    sget v4, Lu/aly/h;->a:I

    add-int/2addr v4, v2

    sput v4, Lu/aly/h;->a:I

    const/4 v4, 0x0

    .line 55
    invoke-virtual {v1, v3, v4, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_31
    .catchall {:try_start_1e .. :try_end_31} :catchall_32

    goto :goto_1e

    .line 58
    :catchall_32
    move-exception v0

    .line 59
    :goto_33
    if-nez v1, :cond_40

    .line 60
    :goto_35
    throw v0

    .line 57
    :cond_36
    :try_start_36
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_32

    .line 59
    if-nez v1, :cond_44

    .line 61
    :goto_3b
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 62
    return-object v0

    .line 59
    :cond_40
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_35

    :cond_44
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    goto :goto_3b

    .line 58
    :catchall_48
    move-exception v0

    move-object v1, v2

    goto :goto_33
.end method
