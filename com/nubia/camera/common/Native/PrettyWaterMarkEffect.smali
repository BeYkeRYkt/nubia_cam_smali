.class public Lcom/nubia/camera/common/Native/PrettyWaterMarkEffect;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-string/jumbo v0, "PrettyWaterMark"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 7
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static btP(Lcom/nubia/camera/common/Native/BufferCell;IIII)V
    .registers 6

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/nubia/camera/common/Native/PrettyWaterMarkEffect;->nativeAddWaterMark(Ljava/nio/ByteBuffer;IIII)V

    .line 16
    return-void
.end method

.method public static btQ(Lcom/nubia/camera/common/Native/BufferCell;IIIII)V
    .registers 12

    .prologue
    .line 13
    invoke-virtual {p0}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/nubia/camera/common/Native/PrettyWaterMarkEffect;->nativeApplyPrettyEffect(Ljava/nio/ByteBuffer;IIIII)V

    .line 12
    return-void
.end method

.method public static native nativeAddWaterMark(Ljava/nio/ByteBuffer;IIII)V
.end method

.method public static native nativeApplyPrettyEffect(Ljava/nio/ByteBuffer;IIIII)V
.end method
