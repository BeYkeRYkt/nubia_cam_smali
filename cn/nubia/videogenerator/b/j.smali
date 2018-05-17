.class public Lcn/nubia/videogenerator/b/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static brK:Ljava/lang/String;

.field public static brL:I

.field public static brM:I


# instance fields
.field private final brN:I

.field private brO:[B

.field private final brP:I

.field private final brQ:I

.field private final brR:I

.field private final brS:I

.field private brT:I

.field private brU:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const-string/jumbo v0, "VideoCrop"

    .line 12
    sput-object v0, Lcn/nubia/videogenerator/b/j;->brK:Ljava/lang/String;

    const/4 v0, 0x0

    .line 13
    sput v0, Lcn/nubia/videogenerator/b/j;->brL:I

    const/4 v0, 0x1

    .line 14
    sput v0, Lcn/nubia/videogenerator/b/j;->brM:I

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private bOU([B)V
    .registers 9

    .prologue
    .line 97
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brR:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v2, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    mul-int/2addr v1, v2

    add-int v2, v0, v1

    .line 98
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    iget v3, p0, Lcn/nubia/videogenerator/b/j;->brU:I

    add-int/2addr v1, v3

    mul-int v3, v0, v1

    .line 99
    iget v4, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    .line 100
    iget v5, p0, Lcn/nubia/videogenerator/b/j;->brT:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 101
    invoke-direct/range {v0 .. v6}, Lcn/nubia/videogenerator/b/j;->bOW([BIIIII)I

    move-result v6

    .line 104
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brQ:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v2, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brR:I

    add-int v2, v0, v1

    .line 105
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brQ:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v3, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    iget v4, p0, Lcn/nubia/videogenerator/b/j;->brU:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    add-int v3, v0, v1

    .line 106
    iget v4, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    .line 107
    iget v5, p0, Lcn/nubia/videogenerator/b/j;->brT:I

    move-object v0, p0

    move-object v1, p1

    .line 108
    invoke-direct/range {v0 .. v6}, Lcn/nubia/videogenerator/b/j;->bOW([BIIIII)I

    .line 109
    return-void
.end method

.method private bOV([B)V
    .registers 10

    .prologue
    .line 113
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brR:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    iget v2, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    mul-int/2addr v1, v2

    add-int v2, v0, v1

    .line 114
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    iget v3, p0, Lcn/nubia/videogenerator/b/j;->brU:I

    add-int/2addr v1, v3

    mul-int v3, v0, v1

    .line 115
    iget v4, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    .line 116
    iget v5, p0, Lcn/nubia/videogenerator/b/j;->brT:I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 118
    invoke-direct/range {v0 .. v6}, Lcn/nubia/videogenerator/b/j;->bOW([BIIIII)I

    move-result v6

    .line 121
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brQ:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v2, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcn/nubia/videogenerator/b/j;->brR:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    add-int v2, v0, v1

    .line 122
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brQ:I

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v3, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    iget v4, p0, Lcn/nubia/videogenerator/b/j;->brU:I

    add-int/2addr v3, v4

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    add-int v3, v0, v1

    .line 123
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    div-int/lit8 v4, v0, 0x2

    .line 124
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brT:I

    div-int/lit8 v5, v0, 0x2

    move-object v0, p0

    move-object v1, p1

    .line 125
    invoke-direct/range {v0 .. v6}, Lcn/nubia/videogenerator/b/j;->bOW([BIIIII)I

    move-result v6

    .line 128
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brQ:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v2, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    mul-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brR:I

    div-int/lit8 v1, v1, 0x2

    add-int v2, v0, v1

    .line 129
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brQ:I

    div-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brP:I

    iget v3, p0, Lcn/nubia/videogenerator/b/j;->brS:I

    iget v7, p0, Lcn/nubia/videogenerator/b/j;->brU:I

    add-int/2addr v3, v7

    mul-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x4

    add-int v3, v0, v1

    move-object v0, p0

    move-object v1, p1

    .line 130
    invoke-direct/range {v0 .. v6}, Lcn/nubia/videogenerator/b/j;->bOW([BIIIII)I

    .line 131
    return-void
.end method

.method private bOW([BIIIII)I
    .registers 8

    .prologue
    .line 134
    :goto_0
    if-ge p2, p3, :cond_a

    .line 135
    iget-object v0, p0, Lcn/nubia/videogenerator/b/j;->brO:[B

    invoke-static {p1, p2, v0, p6, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    add-int/2addr p6, p5

    .line 134
    add-int/2addr p2, p4

    goto :goto_0

    .line 138
    :cond_a
    return p6
.end method


# virtual methods
.method public bOR()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brT:I

    return v0
.end method

.method public bOS()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcn/nubia/videogenerator/b/j;->brU:I

    return v0
.end method

.method public bOT(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)[B
    .registers 6

    .prologue
    .line 80
    iget v0, p2, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array v0, v0, [B

    .line 81
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 82
    if-nez v0, :cond_14

    .line 83
    :cond_9
    sget-object v0, Lcn/nubia/videogenerator/b/j;->brK:Ljava/lang/String;

    const-string/jumbo v1, "crop:wrong oriData!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object v0, p0, Lcn/nubia/videogenerator/b/j;->brO:[B

    return-object v0

    .line 82
    :cond_14
    array-length v1, v0

    iget v2, p0, Lcn/nubia/videogenerator/b/j;->brQ:I

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_9

    .line 86
    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brN:I

    sget v2, Lcn/nubia/videogenerator/b/j;->brL:I

    if-eq v1, v2, :cond_2c

    .line 88
    iget v1, p0, Lcn/nubia/videogenerator/b/j;->brN:I

    sget v2, Lcn/nubia/videogenerator/b/j;->brM:I

    if-eq v1, v2, :cond_30

    .line 91
    :goto_29
    iget-object v0, p0, Lcn/nubia/videogenerator/b/j;->brO:[B

    return-object v0

    .line 87
    :cond_2c
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/b/j;->bOU([B)V

    goto :goto_29

    .line 89
    :cond_30
    invoke-direct {p0, v0}, Lcn/nubia/videogenerator/b/j;->bOV([B)V

    goto :goto_29
.end method
