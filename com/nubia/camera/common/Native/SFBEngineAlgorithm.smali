.class public Lcom/nubia/camera/common/Native/SFBEngineAlgorithm;
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

.method static native SFBProcess(Ljava/nio/ByteBuffer;IIIII)V
.end method

.method public static bub(Lcom/nubia/camera/common/Native/BufferCell;IIIII)V
    .registers 12

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/nubia/camera/common/Native/SFBEngineAlgorithm;->SFBProcess(Ljava/nio/ByteBuffer;IIIII)V

    .line 10
    return-void
.end method
