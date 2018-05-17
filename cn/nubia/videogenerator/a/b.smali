.class public Lcn/nubia/videogenerator/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bqu:Ljava/lang/String;

.field private bqv:I

.field private bqw:I

.field private bqx:I

.field private bqy:I

.field private bqz:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/b;->bNi()V

    .line 22
    return-void
.end method

.method private bNi()V
    .registers 2

    .prologue
    const-string/jumbo v0, "audio/mp4a-latm"

    .line 25
    iput-object v0, p0, Lcn/nubia/videogenerator/a/b;->bqu:Ljava/lang/String;

    const/4 v0, 0x2

    .line 26
    iput v0, p0, Lcn/nubia/videogenerator/a/b;->bqv:I

    const v0, 0x1f400

    .line 27
    iput v0, p0, Lcn/nubia/videogenerator/a/b;->bqw:I

    const v0, 0xac44

    .line 28
    iput v0, p0, Lcn/nubia/videogenerator/a/b;->bqx:I

    const/16 v0, 0x10

    .line 29
    iput v0, p0, Lcn/nubia/videogenerator/a/b;->bqz:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcn/nubia/videogenerator/a/b;->bqy:I

    .line 31
    return-void
.end method


# virtual methods
.method public bNj(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/videogenerator/a/b;->bqu:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public bNk(I)V
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcn/nubia/videogenerator/a/b;->bqx:I

    .line 38
    return-void
.end method

.method public bNl(I)V
    .registers 2

    .prologue
    .line 41
    iput p1, p0, Lcn/nubia/videogenerator/a/b;->bqy:I

    .line 42
    return-void
.end method

.method public bNm(I)V
    .registers 2

    .prologue
    .line 45
    iput p1, p0, Lcn/nubia/videogenerator/a/b;->bqz:I

    .line 46
    return-void
.end method

.method public bNn(I)V
    .registers 2

    .prologue
    .line 49
    iput p1, p0, Lcn/nubia/videogenerator/a/b;->bqw:I

    .line 50
    return-void
.end method

.method public bNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcn/nubia/videogenerator/a/b;->bqu:Ljava/lang/String;

    return-object v0
.end method

.method public bNp()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcn/nubia/videogenerator/a/b;->bqv:I

    return v0
.end method

.method public bNq(I)V
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Lcn/nubia/videogenerator/a/b;->bqv:I

    .line 62
    return-void
.end method

.method public bNr()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcn/nubia/videogenerator/a/b;->bqx:I

    return v0
.end method

.method public bNs()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcn/nubia/videogenerator/a/b;->bqz:I

    return v0
.end method

.method public bNt()Landroid/media/MediaFormat;
    .registers 4

    .prologue
    .line 81
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v1, "mime"

    .line 82
    iget-object v2, p0, Lcn/nubia/videogenerator/a/b;->bqu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcn/nubia/videogenerator/a/b;->bqu:Ljava/lang/String;

    const-string/jumbo v2, "audio/mp4a-latm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_39

    :goto_18
    const-string/jumbo v1, "bitrate"

    .line 87
    iget v2, p0, Lcn/nubia/videogenerator/a/b;->bqw:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "sample-rate"

    .line 88
    iget v2, p0, Lcn/nubia/videogenerator/a/b;->bqx:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "channel-count"

    .line 89
    iget v2, p0, Lcn/nubia/videogenerator/a/b;->bqy:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "max-input-size"

    const/16 v2, 0x4000

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 91
    return-object v0

    :cond_39
    const-string/jumbo v1, "aac-profile"

    const/4 v2, 0x2

    .line 84
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_18
.end method
