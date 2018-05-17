.class public Lcom/nubia/camera/common/Native/EletronicAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-string/jumbo v0, "NubiaImageAlgorithm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private native asyncPutYuvData([B)I
.end method

.method private btJ(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 10
    const-string/jumbo v0, "EletronicAlgorithm"

    invoke-static {v0, p1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method private native cancel()I
.end method

.method private native getPreivewBitmap(Landroid/graphics/Bitmap;[I)V
.end method

.method private native init(IIIIIZII)I
.end method

.method private native quit()I
.end method

.method private native stop(Landroid/graphics/Bitmap;)I
.end method


# virtual methods
.method public btK([B)I
    .registers 3

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->asyncPutYuvData([B)I

    move-result v0

    return v0
.end method

.method public btL()V
    .registers 2

    .prologue
    .line 25
    const-string/jumbo v0, "cancel"

    invoke-direct {p0, v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btJ(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->cancel()I

    .line 24
    return-void
.end method

.method public btM(Landroid/graphics/Bitmap;[I)V
    .registers 3

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->getPreivewBitmap(Landroid/graphics/Bitmap;[I)V

    .line 42
    return-void
.end method

.method public btN(IIIIIZII)V
    .registers 10

    .prologue
    .line 16
    const-string/jumbo v0, "init"

    invoke-direct {p0, v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btJ(Ljava/lang/String;)V

    .line 17
    invoke-direct/range {p0 .. p8}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->init(IIIIIZII)I

    .line 15
    return-void
.end method

.method public btO(Landroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 30
    const-string/jumbo v0, "stop"

    invoke-direct {p0, v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btJ(Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->stop(Landroid/graphics/Bitmap;)I

    .line 29
    return-void
.end method

.method public release()V
    .registers 2

    .prologue
    .line 35
    const-string/jumbo v0, "quit"

    invoke-direct {p0, v0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->btJ(Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/nubia/camera/common/Native/EletronicAlgorithm;->quit()I

    .line 34
    return-void
.end method
