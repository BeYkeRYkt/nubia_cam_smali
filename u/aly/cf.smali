.class public final Lu/aly/cf;
.super Lu/aly/cV;
.source "SourceFile"


# instance fields
.field private a:[B

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Lu/aly/cV;-><init>()V

    .line 28
    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    .prologue
    .line 93
    iget v0, p0, Lu/aly/cf;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lu/aly/cf;->b:I

    .line 94
    return-void
.end method

.method public a([B)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 39
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lu/aly/cf;->bYi([BII)V

    .line 40
    return-void
.end method

.method public bYi([BII)V
    .registers 5

    .prologue
    .line 43
    iput-object p1, p0, Lu/aly/cf;->a:[B

    .line 44
    iput p2, p0, Lu/aly/cf;->b:I

    .line 45
    add-int v0, p2, p3

    iput v0, p0, Lu/aly/cf;->c:I

    .line 46
    return-void
.end method

.method public bYj([BII)I
    .registers 6

    .prologue
    .line 65
    invoke-virtual {p0}, Lu/aly/cf;->h()I

    move-result v0

    .line 66
    if-gt p3, v0, :cond_9

    .line 67
    :goto_6
    if-gtz p3, :cond_b

    .line 71
    :goto_8
    return p3

    :cond_9
    move p3, v0

    .line 66
    goto :goto_6

    .line 68
    :cond_b
    iget-object v0, p0, Lu/aly/cf;->a:[B

    iget v1, p0, Lu/aly/cf;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    invoke-virtual {p0, p3}, Lu/aly/cf;->a(I)V

    goto :goto_8
.end method

.method public bYk([BII)V
    .registers 6

    .prologue
    .line 76
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "No writing allowed!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lu/aly/cf;->a:[B

    .line 50
    return-void
.end method

.method public f()[B
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/cf;->a:[B

    return-object v0
.end method

.method public g()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lu/aly/cf;->b:I

    return v0
.end method

.method public h()I
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lu/aly/cf;->c:I

    iget v1, p0, Lu/aly/cf;->b:I

    sub-int/2addr v0, v1

    return v0
.end method
