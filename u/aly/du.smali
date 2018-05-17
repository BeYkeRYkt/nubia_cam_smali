.class public Lu/aly/du;
.super Lu/aly/cV;
.source "SourceFile"


# instance fields
.field protected bBs:Ljava/io/InputStream;

.field protected bBt:Ljava/io/OutputStream;


# direct methods
.method protected constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Lu/aly/cV;-><init>()V

    .line 36
    iput-object v0, p0, Lu/aly/du;->bBs:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lu/aly/du;->bBt:Ljava/io/OutputStream;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0}, Lu/aly/cV;-><init>()V

    .line 36
    iput-object v0, p0, Lu/aly/du;->bBs:Ljava/io/InputStream;

    .line 39
    iput-object v0, p0, Lu/aly/du;->bBt:Ljava/io/OutputStream;

    .line 62
    iput-object p1, p0, Lu/aly/du;->bBt:Ljava/io/OutputStream;

    .line 63
    return-void
.end method


# virtual methods
.method public bYj([BII)I
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lu/aly/du;->bBs:Ljava/io/InputStream;

    if-eqz v0, :cond_e

    .line 122
    :try_start_5
    iget-object v0, p0, Lu/aly/du;->bBs:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_18

    move-result v0

    .line 126
    if-ltz v0, :cond_1f

    .line 129
    return v0

    .line 118
    :cond_e
    new-instance v0, Lu/aly/dx;

    const/4 v1, 0x1

    const-string/jumbo v2, "Cannot read from null inputStream"

    invoke-direct {v0, v1, v2}, Lu/aly/dx;-><init>(ILjava/lang/String;)V

    throw v0

    .line 125
    :catch_18
    move-exception v0

    .line 124
    new-instance v1, Lu/aly/dx;

    invoke-direct {v1, v2, v0}, Lu/aly/dx;-><init>(ILjava/lang/Throwable;)V

    throw v1

    .line 127
    :cond_1f
    new-instance v0, Lu/aly/dx;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lu/aly/dx;-><init>(I)V

    throw v0
.end method

.method public bYk([BII)V
    .registers 7

    .prologue
    .line 136
    iget-object v0, p0, Lu/aly/du;->bBt:Ljava/io/OutputStream;

    if-eqz v0, :cond_a

    .line 140
    :try_start_4
    iget-object v0, p0, Lu/aly/du;->bBt:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_9} :catch_14

    .line 144
    return-void

    .line 137
    :cond_a
    new-instance v0, Lu/aly/dx;

    const/4 v1, 0x1

    const-string/jumbo v2, "Cannot write to null outputStream"

    invoke-direct {v0, v1, v2}, Lu/aly/dx;-><init>(ILjava/lang/String;)V

    throw v0

    .line 143
    :catch_14
    move-exception v0

    .line 142
    new-instance v1, Lu/aly/dx;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lu/aly/dx;-><init>(ILjava/lang/Throwable;)V

    throw v1
.end method
