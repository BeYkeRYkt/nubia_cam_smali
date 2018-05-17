.class Lcom/android/common/exif/i;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field private Pj:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/common/exif/i;->Pj:Ljava/nio/ByteBuffer;

    .line 26
    return-void
.end method


# virtual methods
.method public read()I
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/common/exif/i;->Pj:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 33
    const/4 v0, -0x1

    return v0

    .line 35
    :cond_a
    iget-object v0, p0, Lcom/android/common/exif/i;->Pj:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 6

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/common/exif/i;->Pj:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_a

    .line 41
    const/4 v0, -0x1

    return v0

    .line 44
    :cond_a
    iget-object v0, p0, Lcom/android/common/exif/i;->Pj:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 45
    iget-object v1, p0, Lcom/android/common/exif/i;->Pj:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 46
    return v0
.end method
