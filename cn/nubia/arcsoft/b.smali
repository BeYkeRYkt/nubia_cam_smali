.class public Lcn/nubia/arcsoft/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bqd:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 18
    const-string/jumbo v0, "ArcsoftAlgorithmAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcn/nubia/arcsoft/b;->bqd:Z

    .line 16
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bMG(Ljava/lang/String;[B[B[BIIIII)V
    .registers 13

    .prologue
    .line 24
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 26
    invoke-virtual {v0, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 27
    invoke-virtual {v0, p3}, Ljava/io/FileOutputStream;->write([B)V

    .line 30
    const/16 v1, 0x3c

    new-array v1, v1, [B

    .line 31
    const/16 v2, 0x3c

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 32
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 33
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 34
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 35
    array-length v3, p3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 36
    invoke-virtual {v2, p4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 37
    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 38
    invoke-virtual {v2, p6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 39
    invoke-virtual {v2, p7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 40
    invoke-virtual {v2, p8}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 41
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 42
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 44
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 45
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 46
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 48
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 49
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 50
    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 52
    invoke-static {}, Lcn/nubia/e/a;->bQb()Lcn/nubia/e/a;

    move-result-object v1

    .line 53
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/e/a;->bQc(II)V

    .line 54
    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcn/nubia/e/a;->bQc(II)V

    .line 55
    array-length v2, p1

    array-length v3, p3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x3c

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2}, Lcn/nubia/e/a;->bQc(II)V

    .line 56
    invoke-virtual {v1}, Lcn/nubia/e/a;->bQd()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 58
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_82
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_82} :catch_83

    .line 21
    :goto_82
    return-void

    .line 59
    :catch_83
    move-exception v0

    .line 60
    const-string/jumbo v1, "ArcsoftAlgorithmAdapter"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_82
.end method

.method public static bMH(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 13

    .prologue
    .line 76
    const/4 v0, 0x1

    invoke-static {v0}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bMF(I)Lcn/nubia/arcsoft/ArcsoftAlgorithm;

    move-result-object v0

    .line 77
    iget v1, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v2, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    iget v3, p2, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    iget v4, p2, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bME(IIII)Z

    .line 78
    invoke-static {}, Lcn/nubia/arcsoft/a;->bMy()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 79
    iget v1, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmS:I

    iget v2, p2, Lcn/nubia/bigAperture/BigApertureTask;->bnc:I

    sget-boolean v3, Lcn/nubia/arcsoft/b;->bqd:Z

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bMD(IIZ)Z

    .line 81
    :cond_1f
    iget v2, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v3, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 82
    iget v5, p2, Lcn/nubia/bigAperture/BigApertureTask;->bng:I

    iget v6, p2, Lcn/nubia/bigAperture/BigApertureTask;->bnf:I

    iget-object v7, p2, Lcn/nubia/bigAperture/BigApertureTask;->bnd:[I

    iget v8, p2, Lcn/nubia/bigAperture/BigApertureTask;->bna:I

    iget v9, p2, Lcn/nubia/bigAperture/BigApertureTask;->bne:I

    move-object v1, p0

    move-object v4, p1

    .line 81
    invoke-virtual/range {v0 .. v9}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bMz(Lcom/nubia/camera/common/Native/BufferCell;IILcom/nubia/camera/common/Native/BufferCell;II[III)Z

    .line 83
    invoke-virtual {v0}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bMB()I

    move-result v1

    .line 84
    new-instance v2, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v2, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 85
    invoke-virtual {v0, v2}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bMA(Lcom/nubia/camera/common/Native/BufferCell;)Z

    .line 86
    invoke-virtual {v0}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->release()Z

    .line 87
    return-object v2
.end method

.method public static bMI(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;Lcn/nubia/bigAperture/BigApertureTask;)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 12

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 65
    invoke-static {v3}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bMF(I)Lcn/nubia/arcsoft/ArcsoftAlgorithm;

    move-result-object v0

    .line 66
    new-instance v8, Lcom/nubia/camera/common/Native/BufferCell;

    iget v1, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v2, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    mul-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v8, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 67
    new-array v1, v3, [F

    .line 68
    new-array v2, v3, [F

    iget v3, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmT:F

    aput v3, v2, v4

    iget v3, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmU:F

    aput v3, v2, v6

    iget v3, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmR:I

    invoke-static {v2, v3, v1}, Lcn/nubia/arcsoft/a;->bMx([FI[F)V

    .line 69
    iget v2, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    iget v3, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    .line 70
    aget v4, v1, v4

    iget v5, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmI:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v5, v4

    aget v1, v1, v6

    iget v4, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmJ:I

    int-to-float v4, v4

    mul-float/2addr v1, v4

    float-to-int v6, v1

    iget v1, p2, Lcn/nubia/bigAperture/BigApertureTask;->bmV:F

    float-to-int v7, v1

    move-object v1, p0

    move-object v4, p1

    .line 69
    invoke-virtual/range {v0 .. v8}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bMC(Lcom/nubia/camera/common/Native/BufferCell;IILcom/nubia/camera/common/Native/BufferCell;IIILcom/nubia/camera/common/Native/BufferCell;)Z

    .line 71
    invoke-virtual {v0}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->release()Z

    .line 72
    return-object v8
.end method
