.class public Lcn/nubia/videogenerator/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/d;


# instance fields
.field private brZ:Lcn/nubia/videogenerator/d/a;

.field private bsa:Lcn/nubia/videogenerator/a/c;

.field private bsb:Lcn/nubia/videogenerator/a/c;

.field private bsc:Lcn/nubia/videogenerator/a/d;

.field private bsd:Lcn/nubia/videogenerator/local/a;

.field private bse:Ljava/lang/String;

.field private bsf:J

.field private bsg:I

.field private bsh:Lcn/nubia/videogenerator/b/b;

.field private bsi:Lcn/nubia/videogenerator/b/c;

.field private bsj:I

.field private bsk:J

.field private bsl:Ljava/util/ArrayList;

.field private bsm:Ljava/lang/Thread;

.field private bsn:Ljava/lang/Thread;

.field private bso:Ljava/lang/String;

.field private bsp:Lcn/nubia/videogenerator/a/e;


# direct methods
.method public constructor <init>(J)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    .line 28
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    .line 29
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    .line 30
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    .line 31
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    .line 32
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bse:Ljava/lang/String;

    .line 34
    iput v0, p0, Lcn/nubia/videogenerator/c/a;->bsg:I

    .line 37
    iput v0, p0, Lcn/nubia/videogenerator/c/a;->bsj:I

    const-wide/16 v0, 0x0

    .line 38
    iput-wide v0, p0, Lcn/nubia/videogenerator/c/a;->bsk:J

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsl:Ljava/util/ArrayList;

    .line 40
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bsm:Ljava/lang/Thread;

    .line 41
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bsn:Ljava/lang/Thread;

    .line 42
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bso:Ljava/lang/String;

    .line 43
    iput-object v2, p0, Lcn/nubia/videogenerator/c/a;->bsp:Lcn/nubia/videogenerator/a/e;

    .line 46
    iput-wide p1, p0, Lcn/nubia/videogenerator/c/a;->bsk:J

    .line 47
    return-void
.end method

.method private bPc()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    if-nez v0, :cond_e

    .line 198
    :goto_5
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    if-nez v0, :cond_16

    .line 203
    :goto_9
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    if-nez v0, :cond_1e

    .line 207
    :goto_d
    return-void

    .line 194
    :cond_e
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/a;->stop()V

    .line 195
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    goto :goto_5

    .line 199
    :cond_16
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/d;->release()V

    .line 200
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    goto :goto_9

    .line 204
    :cond_1e
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->release()V

    .line 205
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    goto :goto_d
.end method

.method static synthetic bPj(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/c;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    return-object v0
.end method

.method static synthetic bPk(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/e;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsp:Lcn/nubia/videogenerator/a/e;

    return-object v0
.end method

.method static synthetic bPl(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/c;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    return-object v0
.end method

.method static synthetic bPm(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/d;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    return-object v0
.end method

.method static synthetic bPn(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/local/a;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    return-object v0
.end method


# virtual methods
.method public bOX(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->bse:Ljava/lang/String;

    .line 52
    new-instance v0, Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->bse:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/videogenerator/d/a;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    .line 53
    return-void
.end method

.method public bOY(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->bso:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public bOZ()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 61
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    if-nez v0, :cond_26

    .line 70
    :goto_5
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    if-nez v0, :cond_57

    .line 73
    :goto_9
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    if-nez v0, :cond_5d

    .line 76
    :goto_d
    new-instance v0, Lcn/nubia/videogenerator/c/c;

    invoke-direct {v0, p0, v4}, Lcn/nubia/videogenerator/c/c;-><init>(Lcn/nubia/videogenerator/c/a;Lcn/nubia/videogenerator/c/c;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsm:Ljava/lang/Thread;

    .line 77
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsm:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 79
    new-instance v0, Lcn/nubia/videogenerator/c/b;

    invoke-direct {v0, p0, v4}, Lcn/nubia/videogenerator/c/b;-><init>(Lcn/nubia/videogenerator/c/a;Lcn/nubia/videogenerator/c/b;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsn:Ljava/lang/Thread;

    .line 80
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsn:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 81
    return-void

    .line 62
    :cond_26
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    iget v1, p0, Lcn/nubia/videogenerator/c/a;->bsg:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->bPo(I)V

    .line 63
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    iget v1, p0, Lcn/nubia/videogenerator/c/a;->bsj:I

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->setOrientation(I)V

    .line 64
    iget-wide v0, p0, Lcn/nubia/videogenerator/c/a;->bsf:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_55

    const/4 v0, 0x1

    :goto_3d
    if-nez v0, :cond_46

    .line 65
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    iget-wide v2, p0, Lcn/nubia/videogenerator/c/a;->bsf:J

    invoke-virtual {v0, v2, v3}, Lcn/nubia/videogenerator/d/a;->bPz(J)V

    .line 67
    :cond_46
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsh:Lcn/nubia/videogenerator/b/b;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->bPx(Lcn/nubia/videogenerator/b/b;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsi:Lcn/nubia/videogenerator/b/c;

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/d/a;->bPy(Lcn/nubia/videogenerator/b/c;)V

    goto :goto_5

    .line 64
    :cond_55
    const/4 v0, 0x0

    goto :goto_3d

    .line 71
    :cond_57
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/a/c;->bNC(Lcn/nubia/videogenerator/b/d;)V

    goto :goto_9

    .line 74
    :cond_5d
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0, p0}, Lcn/nubia/videogenerator/a/c;->bNC(Lcn/nubia/videogenerator/b/d;)V

    goto :goto_d
.end method

.method public bPa(Lcn/nubia/videogenerator/a/a;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 148
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    if-eqz v0, :cond_6

    .line 158
    :goto_5
    return-void

    .line 150
    :cond_6
    :try_start_6
    new-instance v0, Lcn/nubia/videogenerator/a/c;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/a/c;-><init>(Lcn/nubia/videogenerator/a/a;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_d} :catch_14

    .line 156
    :goto_d
    iget v0, p0, Lcn/nubia/videogenerator/c/a;->bsg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/c/a;->bsg:I

    goto :goto_5

    .line 151
    :catch_14
    move-exception v0

    .line 153
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    .line 154
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d
.end method

.method public bPb(Lcn/nubia/videogenerator/a/b;)V
    .registers 6

    .prologue
    .line 166
    :try_start_0
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bso:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 169
    :goto_4
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    if-nez v0, :cond_23

    .line 180
    :goto_8
    iget v0, p0, Lcn/nubia/videogenerator/c/a;->bsg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/videogenerator/c/a;->bsg:I

    .line 190
    :goto_e
    return-void

    .line 167
    :cond_f
    new-instance v0, Lcn/nubia/videogenerator/local/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->bso:Ljava/lang/String;

    iget-wide v2, p0, Lcn/nubia/videogenerator/c/a;->bsk:J

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/videogenerator/local/a;-><init>(Ljava/lang/String;J)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1a} :catch_32

    goto :goto_4

    .line 182
    :catch_1b
    move-exception v0

    .line 184
    invoke-direct {p0}, Lcn/nubia/videogenerator/c/a;->bPc()V

    .line 185
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 170
    :cond_23
    :try_start_23
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/a;->bPC()Z

    move-result v0

    if-nez v0, :cond_3a

    .line 177
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcn/nubia/videogenerator/local/a;->bPA(Lcn/nubia/videogenerator/b/l;Lcn/nubia/videogenerator/b/d;)V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_31} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_23 .. :try_end_31} :catch_32

    goto :goto_8

    .line 185
    :catch_32
    move-exception v0

    .line 187
    invoke-direct {p0}, Lcn/nubia/videogenerator/c/a;->bPc()V

    .line 188
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_e

    .line 171
    :cond_3a
    :try_start_3a
    new-instance v0, Lcn/nubia/videogenerator/a/d;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    invoke-virtual {v1}, Lcn/nubia/videogenerator/local/a;->bPB()Landroid/media/MediaFormat;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/videogenerator/a/d;-><init>(Landroid/media/MediaFormat;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    .line 172
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    iget-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    invoke-virtual {v0, v1, p0}, Lcn/nubia/videogenerator/local/a;->bPA(Lcn/nubia/videogenerator/b/l;Lcn/nubia/videogenerator/b/d;)V

    .line 173
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/a;->bPB()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "sample-rate"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/a/b;->bNk(I)V

    .line 174
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/a;->bPB()Landroid/media/MediaFormat;

    move-result-object v0

    const-string/jumbo v1, "channel-count"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/a/b;->bNl(I)V

    .line 175
    new-instance v0, Lcn/nubia/videogenerator/a/c;

    invoke-direct {v0, p1}, Lcn/nubia/videogenerator/a/c;-><init>(Lcn/nubia/videogenerator/a/b;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;
    :try_end_75
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_75} :catch_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3a .. :try_end_75} :catch_32

    goto :goto_8
.end method

.method public bPd(Lcn/nubia/videogenerator/a/e;)V
    .registers 3

    .prologue
    .line 211
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->bsp:Lcn/nubia/videogenerator/a/e;

    .line 212
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    if-nez v0, :cond_7

    .line 215
    :goto_6
    return-void

    .line 213
    :cond_7
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/a/c;->bNw(Lcn/nubia/videogenerator/a/e;)V

    goto :goto_6
.end method

.method public bPe(Lcn/nubia/videogenerator/a/f;)V
    .registers 3

    .prologue
    .line 219
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    if-nez v0, :cond_5

    .line 222
    :cond_4
    :goto_4
    return-void

    .line 219
    :cond_5
    if-eqz p1, :cond_4

    .line 220
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    invoke-virtual {p1, v0}, Lcn/nubia/videogenerator/a/f;->bOl(Lcn/nubia/videogenerator/a/g;)V

    goto :goto_4
.end method

.method public bPf(Lcn/nubia/videogenerator/a/f;)V
    .registers 3

    .prologue
    .line 225
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    if-nez v0, :cond_5

    .line 228
    :cond_4
    :goto_4
    return-void

    .line 225
    :cond_5
    if-eqz p1, :cond_4

    .line 226
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/a/c;->bNv(Lcn/nubia/videogenerator/a/f;)V

    goto :goto_4
.end method

.method public bPg(Lcn/nubia/videogenerator/b/b;)V
    .registers 2

    .prologue
    .line 231
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->bsh:Lcn/nubia/videogenerator/b/b;

    .line 232
    return-void
.end method

.method public bPh(Lcn/nubia/videogenerator/b/c;)V
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lcn/nubia/videogenerator/c/a;->bsi:Lcn/nubia/videogenerator/b/c;

    .line 236
    return-void
.end method

.method public bPi(J)V
    .registers 4

    .prologue
    .line 239
    iput-wide p1, p0, Lcn/nubia/videogenerator/c/a;->bsf:J

    .line 240
    return-void
.end method

.method public brl(I)Z
    .registers 3

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public brm()Z
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->bPr()Z

    move-result v0

    return v0
.end method

.method public brn(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 265
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    if-nez v0, :cond_5

    .line 268
    :goto_4
    return-void

    .line 266
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/videogenerator/d/a;->bPp(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;Ljava/lang/String;)V

    goto :goto_4
.end method

.method public bro(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 258
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    if-nez v0, :cond_5

    .line 261
    :goto_4
    return-void

    .line 259
    :cond_5
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/d/a;->bPw(Ljava/lang/String;)V

    goto :goto_4
.end method

.method public brp(Landroid/media/MediaFormat;)V
    .registers 5

    .prologue
    .line 246
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2b

    :goto_8
    const-string/jumbo v0, "VideoMakerGenerator"

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, " onOutputFormatChanged  format: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/media/MediaFormat;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 254
    :cond_2a
    :goto_2a
    return-void

    .line 247
    :cond_2b
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcn/nubia/videogenerator/c/a;->bsg:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsl:Ljava/util/ArrayList;

    goto :goto_8

    .line 250
    :cond_35
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    if-eqz v0, :cond_2a

    .line 251
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsl:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0, p1}, Lcn/nubia/videogenerator/d/a;->bPq(Landroid/media/MediaFormat;)V

    goto :goto_2a
.end method

.method public stop()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 116
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsp:Lcn/nubia/videogenerator/a/e;

    if-nez v0, :cond_1a

    .line 120
    :goto_5
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    if-nez v0, :cond_22

    .line 125
    :goto_9
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    if-nez v0, :cond_2a

    .line 130
    :goto_d
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    if-nez v0, :cond_32

    .line 135
    :goto_11
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    if-nez v0, :cond_3a

    .line 140
    :goto_15
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    if-nez v0, :cond_42

    .line 144
    :goto_19
    return-void

    .line 117
    :cond_1a
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsp:Lcn/nubia/videogenerator/a/e;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/e;->stop()V

    .line 118
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsp:Lcn/nubia/videogenerator/a/e;

    goto :goto_5

    .line 121
    :cond_22
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/a;->stop()V

    .line 122
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsd:Lcn/nubia/videogenerator/local/a;

    goto :goto_9

    .line 126
    :cond_2a
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/d;->release()V

    .line 127
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsc:Lcn/nubia/videogenerator/a/d;

    goto :goto_d

    .line 131
    :cond_32
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->release()V

    .line 132
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsb:Lcn/nubia/videogenerator/a/c;

    goto :goto_11

    .line 136
    :cond_3a
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->release()V

    .line 137
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->bsa:Lcn/nubia/videogenerator/a/c;

    goto :goto_15

    .line 141
    :cond_42
    iget-object v0, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    invoke-virtual {v0}, Lcn/nubia/videogenerator/d/a;->stop()V

    .line 142
    iput-object v1, p0, Lcn/nubia/videogenerator/c/a;->brZ:Lcn/nubia/videogenerator/d/a;

    goto :goto_19
.end method
