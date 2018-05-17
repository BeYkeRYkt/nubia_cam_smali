.class public Lu/aly/bY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private b:I

.field private byQ:[S


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lu/aly/bY;->b:I

    .line 32
    new-array v0, p1, [S

    iput-object v0, p0, Lu/aly/bY;->byQ:[S

    .line 33
    return-void
.end method

.method private d()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 47
    iget-object v0, p0, Lu/aly/bY;->byQ:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [S

    .line 48
    iget-object v1, p0, Lu/aly/bY;->byQ:[S

    iget-object v2, p0, Lu/aly/bY;->byQ:[S

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 49
    iput-object v0, p0, Lu/aly/bY;->byQ:[S

    .line 50
    return-void
.end method


# virtual methods
.method public a()S
    .registers 4

    .prologue
    .line 36
    iget-object v0, p0, Lu/aly/bY;->byQ:[S

    iget v1, p0, Lu/aly/bY;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lu/aly/bY;->b:I

    aget-short v0, v0, v1

    return v0
.end method

.method public bXV(S)V
    .registers 5

    .prologue
    .line 40
    iget-object v0, p0, Lu/aly/bY;->byQ:[S

    array-length v0, v0

    iget v1, p0, Lu/aly/bY;->b:I

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_15

    .line 43
    :goto_9
    iget-object v0, p0, Lu/aly/bY;->byQ:[S

    iget v1, p0, Lu/aly/bY;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lu/aly/bY;->b:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    .line 44
    return-void

    .line 41
    :cond_15
    invoke-direct {p0}, Lu/aly/bY;->d()V

    goto :goto_9
.end method

.method public c()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lu/aly/bY;->b:I

    .line 58
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<ShortStack vector:["

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :goto_c
    iget-object v2, p0, Lu/aly/bY;->byQ:[S

    array-length v2, v2

    if-lt v0, v2, :cond_1c

    const-string/jumbo v0, "]>"

    .line 79
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 65
    :cond_1c
    if-nez v0, :cond_30

    .line 69
    :goto_1e
    iget v2, p0, Lu/aly/bY;->b:I

    if-eq v0, v2, :cond_37

    .line 73
    :goto_22
    iget-object v2, p0, Lu/aly/bY;->byQ:[S

    aget-short v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    iget v2, p0, Lu/aly/bY;->b:I

    if-eq v0, v2, :cond_3e

    .line 64
    :goto_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    :cond_30
    const-string/jumbo v2, " "

    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_37
    const-string/jumbo v2, ">>"

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_22

    :cond_3e
    const-string/jumbo v2, "<<"

    .line 76
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d
.end method
