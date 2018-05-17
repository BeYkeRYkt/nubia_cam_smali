.class public Lcom/nubia/camera/common/Native/CodecDataAlgorithm;
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

.method static native ARGB2JPEG(Ljava/nio/ByteBuffer;III)[B
.end method

.method static native JPEG2ARGB(Ljava/nio/ByteBuffer;[I)Ljava/nio/ByteBuffer;
.end method

.method public static btV(Lcom/nubia/camera/common/Native/BufferCell;III)[B
    .registers 5

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/nubia/camera/common/Native/CodecDataAlgorithm;->ARGB2JPEG(Ljava/nio/ByteBuffer;III)[B

    move-result-object v0

    return-object v0
.end method

.method public static btW(Lcom/nubia/camera/common/Native/BufferCell;[I)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 4

    .prologue
    .line 11
    new-instance v0, Lcom/nubia/camera/common/Native/BufferCell;

    iget-object v1, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v1, p1}, Lcom/nubia/camera/common/Native/CodecDataAlgorithm;->JPEG2ARGB(Ljava/nio/ByteBuffer;[I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0
.end method
