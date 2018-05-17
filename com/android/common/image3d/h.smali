.class public Lcom/android/common/image3d/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/image3d/c;


# instance fields
.field private bX:Lcom/android/common/image3d/b;

.field private bY:Ljava/lang/String;

.field private bZ:Lcom/android/common/image3d/a;

.field private ca:Z

.field private cb:Z

.field private cc:Ljava/io/RandomAccessFile;

.field private cd:Ljava/lang/String;

.field private ce:Lcom/android/common/image3d/j;

.field private cf:Lcn/nubia/e/a;


# direct methods
.method public constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean v2, p0, Lcom/android/common/image3d/h;->cb:Z

    .line 30
    new-instance v0, Lcom/android/common/image3d/b;

    invoke-direct {v0}, Lcom/android/common/image3d/b;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/h;->bX:Lcom/android/common/image3d/b;

    .line 31
    iput-object v1, p0, Lcom/android/common/image3d/h;->cd:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/android/common/image3d/h;->bY:Ljava/lang/String;

    .line 33
    iput-object v1, p0, Lcom/android/common/image3d/h;->ce:Lcom/android/common/image3d/j;

    .line 35
    iput-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    .line 36
    new-instance v0, Lcom/android/common/image3d/a;

    invoke-direct {v0}, Lcom/android/common/image3d/a;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    .line 37
    invoke-static {}, Lcn/nubia/e/a;->bQb()Lcn/nubia/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    .line 38
    iput-boolean v3, p0, Lcom/android/common/image3d/h;->ca:Z

    .line 41
    iget-object v0, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    invoke-virtual {v0, v2, v4}, Lcn/nubia/e/a;->bQc(II)V

    .line 42
    iget-object v0, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    const/16 v1, 0x2713

    invoke-virtual {v0, v3, v1}, Lcn/nubia/e/a;->bQc(II)V

    .line 43
    iget-object v0, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    invoke-virtual {v0, v4, v2}, Lcn/nubia/e/a;->bQc(II)V

    .line 44
    iget-object v0, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/e/a;->bQc(II)V

    .line 45
    iget-object v0, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    const/4 v1, 0x4

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcn/nubia/e/a;->bQc(II)V

    .line 40
    return-void
.end method


# virtual methods
.method public bD(Ljava/lang/String;II)V
    .registers 6

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iput p2, v0, Lcom/android/common/image3d/a;->width:I

    .line 51
    iget-object v0, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iput p3, v0, Lcom/android/common/image3d/a;->height:I

    .line 52
    iput-object p1, p0, Lcom/android/common/image3d/h;->cd:Ljava/lang/String;

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_h264_temp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/image3d/h;->bY:Ljava/lang/String;

    .line 54
    new-instance v0, Lcom/android/common/image3d/j;

    iget-object v1, p0, Lcom/android/common/image3d/h;->bY:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/common/image3d/j;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/image3d/h;->ce:Lcom/android/common/image3d/j;
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_29} :catch_34

    .line 58
    :goto_29
    iget-object v0, p0, Lcom/android/common/image3d/h;->bX:Lcom/android/common/image3d/b;

    invoke-virtual {v0, p2, p3}, Lcom/android/common/image3d/b;->bp(II)V

    .line 59
    iget-object v0, p0, Lcom/android/common/image3d/h;->bX:Lcom/android/common/image3d/b;

    invoke-virtual {v0, p0}, Lcom/android/common/image3d/b;->bs(Lcom/android/common/image3d/c;)V

    .line 48
    return-void

    .line 55
    :catch_34
    move-exception v0

    .line 56
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_29
.end method

.method public bE(I)V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iput p1, v0, Lcom/android/common/image3d/a;->bx:I

    .line 172
    return-void
.end method

.method public bF(I)V
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iput p1, v0, Lcom/android/common/image3d/a;->direction:I

    .line 168
    return-void
.end method

.method public bG(I)V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iput p1, v0, Lcom/android/common/image3d/a;->bw:I

    .line 176
    return-void
.end method

.method public bH(Landroid/media/MediaCodec$BufferInfo;[BI)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-boolean v0, p0, Lcom/android/common/image3d/h;->ca:Z

    if-eqz v0, :cond_4d

    .line 149
    iput-boolean v1, p0, Lcom/android/common/image3d/h;->ca:Z

    .line 151
    :try_start_7
    new-instance v0, Ljava/io/RandomAccessFile;

    iget-object v1, p0, Lcom/android/common/image3d/h;->cd:Ljava/lang/String;

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    .line 152
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    const/high16 v0, 0x100000

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 153
    new-instance v0, Landroid/graphics/YuvImage;

    iget-object v1, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v3, v1, Lcom/android/common/image3d/a;->width:I

    iget-object v1, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v4, v1, Lcom/android/common/image3d/a;->height:I

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 154
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v2, v2, Lcom/android/common/image3d/a;->width:I

    iget-object v3, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v3, v3, Lcom/android/common/image3d/a;->height:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 155
    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v6}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 156
    iget-object v0, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_4d
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_4d} :catch_58
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_4d} :catch_53

    .line 165
    :cond_4d
    :goto_4d
    iget-object v0, p0, Lcom/android/common/image3d/h;->bX:Lcom/android/common/image3d/b;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/image3d/b;->br(Landroid/media/MediaCodec$BufferInfo;[BI)V

    .line 147
    return-void

    .line 160
    :catch_53
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4d

    .line 157
    :catch_58
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_4d
.end method

.method public bI()V
    .registers 7

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/android/common/image3d/h;->bY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    .line 108
    if-gtz v1, :cond_e

    .line 109
    return-void

    .line 111
    :cond_e
    new-array v2, v1, [B

    .line 112
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    .line 113
    iget-object v3, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 115
    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    int-to-long v4, v1

    iput-wide v4, v2, Lcom/android/common/image3d/a;->bv:J

    .line 116
    const-string/jumbo v1, "aizhao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget-wide v4, v3, Lcom/android/common/image3d/a;->bv:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget-wide v2, v2, Lcom/android/common/image3d/a;->bv:J

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 118
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v2, v2, Lcom/android/common/image3d/a;->bu:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 119
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v2, v2, Lcom/android/common/image3d/a;->direction:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 120
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v2, v2, Lcom/android/common/image3d/a;->bw:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 121
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v2, v2, Lcom/android/common/image3d/a;->bx:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 122
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v2, v2, Lcom/android/common/image3d/a;->width:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 123
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget v2, v2, Lcom/android/common/image3d/a;->height:I

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 125
    iget-object v1, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    iget-object v2, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget-wide v2, v2, Lcom/android/common/image3d/a;->bv:J

    const-wide/16 v4, 0x20

    add-long/2addr v2, v4

    long-to-int v2, v2

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcn/nubia/e/a;->bQc(II)V

    .line 126
    iget-object v1, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    invoke-virtual {v1}, Lcn/nubia/e/a;->bQe()V

    .line 128
    iget-object v1, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    iget-object v2, p0, Lcom/android/common/image3d/h;->cf:Lcn/nubia/e/a;

    invoke-virtual {v2}, Lcn/nubia/e/a;->bQd()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 129
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 130
    iget-object v0, p0, Lcom/android/common/image3d/h;->bY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/common/image3d/h;->bJ(Ljava/lang/String;)V
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_a1} :catch_a7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_a1} :catch_a2

    .line 103
    :goto_a1
    return-void

    .line 134
    :catch_a2
    move-exception v0

    .line 136
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a1

    .line 131
    :catch_a7
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_a1
.end method

.method public bJ(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 141
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 143
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 140
    :cond_e
    return-void
.end method

.method public declared-synchronized bK(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .prologue
    monitor-enter p0

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/android/common/image3d/h;->ce:Lcom/android/common/image3d/j;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/image3d/j;->bQ(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    .line 180
    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bv(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 4

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/common/image3d/h;->bK(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3} :catch_4

    .line 185
    :goto_3
    return-void

    .line 190
    :catch_4
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3
.end method

.method public release()V
    .registers 3

    .prologue
    .line 78
    :try_start_0
    iget-object v0, p0, Lcom/android/common/image3d/h;->bX:Lcom/android/common/image3d/b;

    invoke-virtual {v0}, Lcom/android/common/image3d/b;->release()V

    .line 83
    iget-object v0, p0, Lcom/android/common/image3d/h;->bZ:Lcom/android/common/image3d/a;

    iget-object v1, p0, Lcom/android/common/image3d/h;->ce:Lcom/android/common/image3d/j;

    invoke-virtual {v1}, Lcom/android/common/image3d/j;->close()I

    move-result v1

    iput v1, v0, Lcom/android/common/image3d/a;->bu:I

    .line 84
    iget-object v0, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1c

    .line 85
    invoke-virtual {p0}, Lcom/android/common/image3d/h;->bI()V

    .line 86
    iget-object v0, p0, Lcom/android/common/image3d/h;->cc:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 76
    :cond_1b
    :goto_1b
    return-void

    .line 88
    :cond_1c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/common/image3d/h;->cd:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 90
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 92
    :cond_2c
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/common/image3d/h;->bY:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 93
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 94
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3c} :catch_3d

    goto :goto_1b

    .line 97
    :catch_3d
    move-exception v0

    .line 99
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b
.end method

.method public start()V
    .registers 2

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/common/image3d/h;->cb:Z

    if-nez v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/android/common/image3d/h;->bX:Lcom/android/common/image3d/b;

    invoke-virtual {v0}, Lcom/android/common/image3d/b;->start()V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/h;->cb:Z

    .line 62
    :cond_c
    return-void
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/common/image3d/h;->cb:Z

    if-eqz v0, :cond_c

    .line 71
    iget-object v0, p0, Lcom/android/common/image3d/h;->bX:Lcom/android/common/image3d/b;

    invoke-virtual {v0}, Lcom/android/common/image3d/b;->stop()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/image3d/h;->cb:Z

    .line 69
    :cond_c
    return-void
.end method
