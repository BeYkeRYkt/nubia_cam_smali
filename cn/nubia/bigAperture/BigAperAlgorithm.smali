.class public Lcn/nubia/bigAperture/BigAperAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-string/jumbo v0, "BigAperture"

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

.method static native CropYUV(Ljava/nio/ByteBuffer;IIIIII)Ljava/nio/ByteBuffer;
.end method

.method static native ReadDataFromFile(Ljava/lang/String;I)Ljava/nio/ByteBuffer;
.end method

.method public static bJs(Lcom/nubia/camera/common/Native/BufferCell;IIIIII)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 15

    .prologue
    const/4 v7, 0x0

    .line 60
    invoke-virtual {p0}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcn/nubia/bigAperture/BigAperAlgorithm;->CropYUV(Ljava/nio/ByteBuffer;IIIIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    if-nez v0, :cond_12

    .line 62
    return-object v7

    .line 64
    :cond_12
    new-instance v1, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v1, v0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public static bJw(Ljava/lang/String;I)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 40
    invoke-static {p0, p1}, Lcn/nubia/bigAperture/BigAperAlgorithm;->ReadDataFromFile(Ljava/lang/String;I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 41
    if-nez v0, :cond_8

    .line 42
    return-object v1

    .line 44
    :cond_8
    new-instance v1, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v1, v0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method


# virtual methods
.method native Generate3DPhoto(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;[I)V
.end method

.method native GenerateAltekDepth(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIII)Ljava/nio/ByteBuffer;
.end method

.method native GenerateBokehData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIFFFIIIFF)Ljava/nio/ByteBuffer;
.end method

.method public bJt(Lcom/nubia/camera/common/Native/BufferCell;IILcom/nubia/camera/common/Native/BufferCell;IIIILcom/nubia/camera/common/Native/BufferCell;[I)V
    .registers 22

    .prologue
    .line 52
    invoke-virtual {p1}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 53
    invoke-virtual {p4}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 55
    invoke-virtual/range {p9 .. p9}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v9

    move-object v0, p0

    move v2, p2

    move v3, p3

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v10, p10

    .line 52
    invoke-virtual/range {v0 .. v10}, Lcn/nubia/bigAperture/BigAperAlgorithm;->Generate3DPhoto(Ljava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIIILjava/nio/ByteBuffer;[I)V

    .line 51
    return-void
.end method

.method public bJu(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;IIIIIIIII)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 24

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, p0

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    invoke-virtual/range {v0 .. v11}, Lcn/nubia/bigAperture/BigAperAlgorithm;->GenerateAltekDepth(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIIIIII)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 20
    if-nez v0, :cond_22

    .line 21
    const/4 v0, 0x0

    return-object v0

    .line 23
    :cond_22
    new-instance v1, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v1, v0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method

.method public bJv(Lcom/nubia/camera/common/Native/BufferCell;Lcom/nubia/camera/common/Native/BufferCell;IIIIFFFIIIFF)Lcom/nubia/camera/common/Native/BufferCell;
    .registers 30

    .prologue
    .line 30
    invoke-virtual/range {p1 .. p1}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v2

    move-object v0, p0

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    move/from16 v14, p14

    invoke-virtual/range {v0 .. v14}, Lcn/nubia/bigAperture/BigAperAlgorithm;->GenerateBokehData(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIIIFFFIIIFF)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 32
    if-nez v0, :cond_29

    .line 33
    const/4 v0, 0x0

    return-object v0

    .line 35
    :cond_29
    new-instance v1, Lcom/nubia/camera/common/Native/BufferCell;

    invoke-direct {v1, v0}, Lcom/nubia/camera/common/Native/BufferCell;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v1
.end method
