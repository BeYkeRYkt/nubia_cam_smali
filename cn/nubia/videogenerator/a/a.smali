.class public Lcn/nubia/videogenerator/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bql:Ljava/lang/String;

.field private bqm:Z

.field private bqn:Z

.field private bqo:I

.field private bqp:I

.field private bqq:I

.field private bqr:I

.field private bqs:I

.field private bqt:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-direct {p0}, Lcn/nubia/videogenerator/a/a;->bMT()V

    .line 25
    return-void
.end method

.method private bMT()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const-string/jumbo v0, "video/avc"

    .line 35
    iput-object v0, p0, Lcn/nubia/videogenerator/a/a;->bql:Ljava/lang/String;

    const v0, 0x7f000789

    .line 36
    iput v0, p0, Lcn/nubia/videogenerator/a/a;->bqr:I

    const/16 v0, 0x280

    .line 37
    iput v0, p0, Lcn/nubia/videogenerator/a/a;->bqp:I

    const/16 v0, 0x1e0

    .line 38
    iput v0, p0, Lcn/nubia/videogenerator/a/a;->bqq:I

    const/high16 v0, 0x400000

    .line 39
    iput v0, p0, Lcn/nubia/videogenerator/a/a;->bqs:I

    const/4 v0, 0x5

    .line 40
    iput v0, p0, Lcn/nubia/videogenerator/a/a;->bqo:I

    const/4 v0, 0x1

    .line 41
    iput v0, p0, Lcn/nubia/videogenerator/a/a;->bqt:I

    .line 42
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/a;->bqm:Z

    .line 43
    iput-boolean v1, p0, Lcn/nubia/videogenerator/a/a;->bqn:Z

    .line 44
    return-void
.end method


# virtual methods
.method public bMU()Z
    .registers 2

    .prologue
    .line 55
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/a;->bqm:Z

    return v0
.end method

.method public bMV()Z
    .registers 2

    .prologue
    .line 59
    iget-boolean v0, p0, Lcn/nubia/videogenerator/a/a;->bqn:Z

    return v0
.end method

.method public bMW(I)V
    .registers 2

    .prologue
    .line 62
    iput p1, p0, Lcn/nubia/videogenerator/a/a;->bqo:I

    .line 63
    return-void
.end method

.method public bMX()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcn/nubia/videogenerator/a/a;->bqo:I

    return v0
.end method

.method public bMY(I)V
    .registers 2

    .prologue
    .line 70
    iput p1, p0, Lcn/nubia/videogenerator/a/a;->bqs:I

    .line 71
    return-void
.end method

.method public bMZ(I)V
    .registers 2

    .prologue
    .line 82
    iput p1, p0, Lcn/nubia/videogenerator/a/a;->bqt:I

    .line 83
    return-void
.end method

.method public bNa(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 86
    iput-object p1, p0, Lcn/nubia/videogenerator/a/a;->bql:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public bNb()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcn/nubia/videogenerator/a/a;->bql:Ljava/lang/String;

    return-object v0
.end method

.method public bNc()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcn/nubia/videogenerator/a/a;->bqp:I

    return v0
.end method

.method public bNd()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcn/nubia/videogenerator/a/a;->bqq:I

    return v0
.end method

.method public bNe(II)V
    .registers 6

    .prologue
    const-string/jumbo v0, "woo"

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setSize width: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iput p1, p0, Lcn/nubia/videogenerator/a/a;->bqp:I

    .line 104
    iput p2, p0, Lcn/nubia/videogenerator/a/a;->bqq:I

    .line 105
    return-void
.end method

.method public bNf()I
    .registers 2

    .prologue
    .line 108
    iget v0, p0, Lcn/nubia/videogenerator/a/a;->bqr:I

    return v0
.end method

.method public bNg(I)V
    .registers 2

    .prologue
    .line 112
    iput p1, p0, Lcn/nubia/videogenerator/a/a;->bqr:I

    .line 113
    return-void
.end method

.method public bNh()Landroid/media/MediaFormat;
    .registers 5

    .prologue
    .line 126
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0}, Landroid/media/MediaFormat;-><init>()V

    const-string/jumbo v1, "mime"

    .line 127
    iget-object v2, p0, Lcn/nubia/videogenerator/a/a;->bql:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "width"

    .line 128
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqp:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "stride"

    .line 129
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqp:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "height"

    .line 130
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqq:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "slice-height"

    .line 131
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqq:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "woo"

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "getMediaFormat   mWidth: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/nubia/videogenerator/a/a;->bqp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mHeight: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/videogenerator/a/a;->bqq:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " colorFormat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcn/nubia/videogenerator/a/a;->bqr:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "bitrate"

    .line 133
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqs:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "frame-rate"

    .line 134
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqo:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "color-format"

    .line 135
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqr:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string/jumbo v1, "i-frame-interval"

    .line 137
    iget v2, p0, Lcn/nubia/videogenerator/a/a;->bqt:I

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 139
    return-object v0
.end method
