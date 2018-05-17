.class public abstract Lu/aly/cV;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 2

    .prologue
    .line 160
    return-void
.end method

.method public b([B)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 105
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lu/aly/cV;->bYk([BII)V

    .line 106
    return-void
.end method

.method public abstract bYj([BII)I
.end method

.method public abstract bYk([BII)V
.end method

.method public bZn([BII)I
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 83
    :goto_1
    if-lt v0, p3, :cond_4

    .line 95
    return v0

    .line 84
    :cond_4
    add-int v1, p2, v0

    sub-int v2, p3, v0

    invoke-virtual {p0, p1, v1, v2}, Lu/aly/cV;->bYj([BII)I

    move-result v1

    .line 85
    if-lez v1, :cond_10

    .line 93
    add-int/2addr v0, v1

    goto :goto_1

    .line 86
    :cond_10
    new-instance v1, Lu/aly/dx;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Cannot read. Remote side has closed. Tried to read "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " bytes, but only got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " bytes. (This is often indicative of an internal error on the server side. Please check your server logs.)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lu/aly/dx;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public f()[B
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 133
    return-object v0
.end method

.method public g()I
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 143
    return v0
.end method

.method public h()I
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 153
    return v0
.end method
