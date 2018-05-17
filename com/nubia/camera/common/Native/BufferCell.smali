.class public Lcom/nubia/camera/common/Native/BufferCell;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field bcA:Ljava/nio/ByteBuffer;

.field private bcB:Lcom/nubia/camera/common/Native/BufferCell$Type;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string/jumbo v0, "Buffer"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 11
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    .line 17
    sget-object v0, Lcom/nubia/camera/common/Native/BufferCell$Type;->bcC:Lcom/nubia/camera/common/Native/BufferCell$Type;

    iput-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcB:Lcom/nubia/camera/common/Native/BufferCell$Type;

    .line 25
    invoke-static {p1}, Lcom/nubia/camera/common/Native/BufferCell;->createBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    .line 17
    sget-object v0, Lcom/nubia/camera/common/Native/BufferCell$Type;->bcC:Lcom/nubia/camera/common/Native/BufferCell$Type;

    iput-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcB:Lcom/nubia/camera/common/Native/BufferCell$Type;

    .line 29
    iput-object p1, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    .line 28
    return-void
.end method

.method public constructor <init>([B)V
    .registers 3

    .prologue
    .line 20
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(I)V

    .line 21
    invoke-virtual {p0, p1}, Lcom/nubia/camera/common/Native/BufferCell;->btY([B)V

    .line 19
    return-void
.end method

.method private static native createBuffer(I)Ljava/nio/ByteBuffer;
.end method

.method private static native getDataFromNative(Ljava/nio/ByteBuffer;)[B
.end method

.method private static native getIntArrayFromNative(Ljava/nio/ByteBuffer;)[I
.end method

.method private static native putDataToNative([BLjava/nio/ByteBuffer;I)V
.end method

.method private static native releaseBuffer(Ljava/nio/ByteBuffer;)V
.end method


# virtual methods
.method public btX()[B
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    .line 57
    return-object v1

    .line 59
    :cond_6
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/nubia/camera/common/Native/BufferCell;->getDataFromNative(Ljava/nio/ByteBuffer;)[B

    move-result-object v0

    return-object v0
.end method

.method public btY([B)V
    .registers 4

    .prologue
    .line 49
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_5

    .line 50
    return-void

    .line 52
    :cond_5
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/nubia/camera/common/Native/BufferCell;->putDataToNative([BLjava/nio/ByteBuffer;I)V

    .line 48
    return-void
.end method

.method public btZ()Ljava/nio/ByteBuffer;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public bua()[I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 67
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    .line 68
    return-object v1

    .line 70
    :cond_6
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/nubia/camera/common/Native/BufferCell;->getIntArrayFromNative(Ljava/nio/ByteBuffer;)[I

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/nubia/camera/common/Native/BufferCell;->release()V

    .line 76
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    return-void
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 41
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    .line 42
    return-void

    .line 44
    :cond_6
    iget-object v0, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/nubia/camera/common/Native/BufferCell;->releaseBuffer(Ljava/nio/ByteBuffer;)V

    .line 45
    iput-object v1, p0, Lcom/nubia/camera/common/Native/BufferCell;->bcA:Ljava/nio/ByteBuffer;

    .line 40
    return-void
.end method
