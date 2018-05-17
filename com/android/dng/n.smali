.class public final Lcom/android/dng/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private aAX:Lcom/android/common/appService/W;

.field private aAY:J

.field private aAZ:I

.field private aBa:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    .line 24
    iput-object v0, p0, Lcom/android/dng/n;->aBa:Ljava/lang/String;

    .line 30
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/dng/n;->aAY:J

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dng/n;->aAZ:I

    .line 27
    iput-object p1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    .line 26
    return-void
.end method

.method private aQg()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private aQh()Ljava/lang/String;
    .registers 5

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "dng-data"

    invoke-interface {v1, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 111
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "dng-comp-data"

    invoke-interface {v1, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Lk()I

    move-result v1

    int-to-float v1, v1

    .line 115
    iget-object v2, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->Ll()F

    move-result v2

    .line 114
    mul-float/2addr v1, v2

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 116
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 117
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aem()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 118
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 119
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 120
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/custom/x;->aen()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 122
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 123
    invoke-direct {p0}, Lcom/android/dng/n;->aQl()J

    move-result-wide v2

    .line 124
    const-string/jumbo v1, "yyyy:MM:dd HH:mm:ss"

    .line 123
    invoke-static {v2, v3, v1}, Lcom/android/common/h;->aoZ(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 127
    invoke-direct {p0}, Lcom/android/dng/n;->aQi()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 128
    const-string/jumbo v1, ","

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 129
    invoke-direct {p0}, Lcom/android/dng/n;->aQj()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aQi()Ljava/lang/String;
    .registers 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Ls()I

    move-result v0

    int-to-float v0, v0

    .line 98
    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Ll()F

    move-result v1

    .line 97
    mul-float/2addr v0, v1

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aQj()Ljava/lang/String;
    .registers 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lx()I

    move-result v0

    int-to-float v0, v0

    .line 104
    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Ll()F

    move-result v1

    .line 103
    mul-float/2addr v0, v1

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private aQk()I
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pR()I

    move-result v0

    return v0
.end method

.method private aQl()J
    .registers 3

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pS()J

    move-result-wide v0

    return-wide v0
.end method

.method private aQm()J
    .registers 3

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/dng/n;->aQg()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rw()J

    move-result-wide v0

    return-wide v0
.end method

.method private aQn()J
    .registers 3

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/dng/n;->aQg()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qO()J

    move-result-wide v0

    return-wide v0
.end method

.method private aQo(J)V
    .registers 4

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/dng/n;->aQg()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/appService/W;->rQ(J)V

    .line 136
    return-void
.end method

.method static synthetic aQp(Lcom/android/dng/n;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    return-object v0
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 12

    .prologue
    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/dng/n;->aQo(J)V

    .line 36
    if-eqz p1, :cond_18b

    .line 37
    const-string/jumbo v0, "DngRawPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rawData.length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/android/dng/n;->aQl()J

    move-result-wide v0

    .line 39
    iget-object v2, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    const v3, 0x7f0a0279

    invoke-virtual {v2, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v2

    .line 38
    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoZ(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/n;->aBa:Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Lcom/android/dng/n;->aQl()J

    move-result-wide v0

    .line 41
    div-long v2, v0, v6

    iget-wide v4, p0, Lcom/android/dng/n;->aAY:J

    div-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-nez v2, :cond_184

    .line 42
    iget v0, p0, Lcom/android/dng/n;->aAZ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/dng/n;->aAZ:I

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dng/n;->aBa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/dng/n;->aAZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dng/n;->aBa:Ljava/lang/String;

    .line 48
    :goto_6b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/dng/n;->aQk()I

    move-result v1

    invoke-static {v1}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/dng/n;->aBa:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dng"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 51
    const-string/jumbo v1, "DngRawPictureCallback"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFilePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lcom/android/dng/n;->aQh()Ljava/lang/String;

    move-result-object v3

    .line 54
    const-string/jumbo v0, "DngRawPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "kwang_3a dng_data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LB()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 58
    iget v1, v0, Landroid/hardware/Camera$Size;->width:I

    .line 59
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    .line 61
    new-instance v6, Landroid/content/ContentValues;

    const/4 v2, 0x1

    invoke-direct {v6, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 62
    const-string/jumbo v2, "_data"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string/jumbo v2, "_display_name"

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    const-string/jumbo v2, "title"

    iget-object v7, p0, Lcom/android/dng/n;->aBa:Ljava/lang/String;

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v2, "width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 66
    const-string/jumbo v1, "height"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 67
    const-string/jumbo v0, "orientation"

    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pV()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 69
    new-instance v0, Lcom/android/dng/i;

    .line 70
    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    .line 76
    new-instance v7, Lcom/android/dng/o;

    invoke-direct {v7, p0, v8}, Lcom/android/dng/o;-><init>(Lcom/android/dng/n;Lcom/android/dng/o;)V

    move-object v2, p1

    .line 69
    invoke-direct/range {v0 .. v7}, Lcom/android/dng/i;-><init>(Lcom/android/common/appService/W;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Lcom/android/common/b/f;)V

    .line 77
    iget-object v1, p0, Lcom/android/dng/n;->aAX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/storagemanager/f;->agv(Lcom/android/common/b/g;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 81
    :goto_159
    const-string/jumbo v0, "DngRawPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShutterToRawCallbackTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    invoke-direct {p0}, Lcom/android/dng/n;->aQm()J

    move-result-wide v2

    invoke-direct {p0}, Lcom/android/dng/n;->aQn()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 81
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 82
    const-string/jumbo v2, "ms"

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 45
    :cond_184
    iput-wide v0, p0, Lcom/android/dng/n;->aAY:J

    .line 46
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/dng/n;->aAZ:I

    goto/16 :goto_6b

    .line 79
    :cond_18b
    const-string/jumbo v0, "DngRawPictureCallback"

    const-string/jumbo v1, "rawData = null "

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_159
.end method
