.class public Lcn/nubia/arcsoft/ArcsoftAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bqc:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-string/jumbo v0, "ArcsoftAlgorithm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 10
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(J)V
    .registers 4

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-wide p1, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    .line 22
    return-void
.end method

.method private static native CalcDisparityData(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[III)Z
.end method

.method private static native GetDisparityData(JLjava/nio/ByteBuffer;)Z
.end method

.method private static native GetDisparityDataSize(J)I
.end method

.method private static native Init(I)J
.end method

.method private static native Refocus(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Z
.end method

.method private static native SetCaliData(JIIZ)Z
.end method

.method private static native SetCameraImageInfo(JIIII)Z
.end method

.method private static native Uninit(J)Z
.end method

.method public static bMF(I)Lcn/nubia/arcsoft/ArcsoftAlgorithm;
    .registers 6

    .prologue
    .line 27
    invoke-static {p0}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->Init(I)J

    move-result-wide v0

    .line 28
    const-string/jumbo v2, "ArcsoftAlgorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "newInstance "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v2, Lcn/nubia/arcsoft/ArcsoftAlgorithm;

    invoke-direct {v2, v0, v1}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;-><init>(J)V

    return-object v2
.end method


# virtual methods
.method public bMA(Lcom/nubia/camera/common/Native/BufferCell;)Z
    .registers 5

    .prologue
    .line 64
    iget-wide v0, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    invoke-virtual {p1}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->GetDisparityData(JLjava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public bMB()I
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    invoke-static {v0, v1}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->GetDisparityDataSize(J)I

    move-result v0

    return v0
.end method

.method public bMC(Lcom/nubia/camera/common/Native/BufferCell;IILcom/nubia/camera/common/Native/BufferCell;IIILcom/nubia/camera/common/Native/BufferCell;)Z
    .registers 19

    .prologue
    .line 75
    iget-wide v0, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    invoke-virtual {p1}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 76
    invoke-virtual {p4}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual/range {p8 .. p8}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v9

    move v3, p2

    move v4, p3

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    .line 75
    invoke-static/range {v0 .. v9}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->Refocus(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method public bMD(IIZ)Z
    .registers 6

    .prologue
    .line 43
    iget-wide v0, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    invoke-static {v0, v1, p1, p2, p3}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->SetCaliData(JIIZ)Z

    move-result v0

    return v0
.end method

.method public bME(IIII)Z
    .registers 11

    .prologue
    .line 47
    const-string/jumbo v0, "ArcsoftAlgorithm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "SetCameraImageInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-wide v0, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->SetCameraImageInfo(JIIII)Z

    move-result v0

    return v0
.end method

.method public bMz(Lcom/nubia/camera/common/Native/BufferCell;IILcom/nubia/camera/common/Native/BufferCell;II[III)Z
    .registers 23

    .prologue
    .line 54
    const-string/jumbo v2, "ArcsoftAlgorithm"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "CalcDisparityData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p8

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-wide v2, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    invoke-virtual {p1}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 56
    invoke-virtual/range {p4 .. p4}, Lcom/nubia/camera/common/Native/BufferCell;->btZ()Ljava/nio/ByteBuffer;

    move-result-object v7

    move v5, p2

    move/from16 v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    .line 55
    invoke-static/range {v2 .. v12}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->CalcDisparityData(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[III)Z

    move-result v2

    return v2
.end method

.method public release()Z
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 33
    const/4 v0, 0x0

    .line 34
    iget-wide v2, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_31

    .line 35
    const-string/jumbo v0, "ArcsoftAlgorithm"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "release "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iget-wide v0, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    invoke-static {v0, v1}, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->Uninit(J)Z

    move-result v0

    .line 37
    iput-wide v4, p0, Lcn/nubia/arcsoft/ArcsoftAlgorithm;->bqc:J

    .line 39
    :cond_31
    return v0
.end method
