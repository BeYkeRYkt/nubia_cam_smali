.class public Lcom/nubia/camera/common/Native/YUVAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string/jumbo v0, "Algorithm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static native ARGB2YUV(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method static native YUV2ARGB(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method static native YVU2ARGB(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;
.end method

.method public static btR(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;III)V
    .registers 7

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    iget-object v1, p1, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, p2, p3, p4}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->rotateYUV(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V

    .line 61
    return-void
.end method

.method public static btS(Lcom/nubia/camera/common/Native/BufferCell;II)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 5

    .prologue
    .line 17
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    iget-object v1, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1, p2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->YUV2ARGB(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static btT(Lcom/nubia/camera/common/Native/BufferCell;II)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 5

    .prologue
    .line 28
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    iget-object v1, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1, p2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->ARGB2YUV(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public static btU(Lcom/nubia/camera/common/Native/BufferCell;II)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 5

    .prologue
    .line 39
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    iget-object v1, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1, p2}, Lcom/nubia/camera/common/Native/YUVAlgorithm;->YVU2ARGB(Ljava/nio/ByteBuffer;II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method static native rotateYUV(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)V
.end method
