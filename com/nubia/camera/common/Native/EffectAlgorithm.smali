.class public Lcom/nubia/camera/common/Native/EffectAlgorithm;
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

.method static native Effect(Ljava/nio/ByteBuffer;IILjava/lang/String;)V
.end method

.method public static buc(Lcom/nubia/camera/common/Native/BufferCell;IILjava/lang/String;)V
    .registers 5

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v0, p1, p2, p3}, Lcom/nubia/camera/common/Native/EffectAlgorithm;->Effect(Ljava/nio/ByteBuffer;IILjava/lang/String;)V

    .line 10
    return-void
.end method
