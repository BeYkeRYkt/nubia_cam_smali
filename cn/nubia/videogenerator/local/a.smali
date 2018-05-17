.class public Lcn/nubia/videogenerator/local/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final bsG:Ljava/util/HashMap;


# instance fields
.field private bsH:Landroid/media/MediaFormat;

.field private bsI:Lcn/nubia/videogenerator/b/l;

.field private bsJ:Ljava/lang/String;

.field private bsK:Ljava/lang/String;

.field private bsL:Lcn/nubia/videogenerator/local/b;

.field private bsM:Z

.field private bsN:Z

.field private bsO:Lcn/nubia/videogenerator/b/d;

.field private bsP:J

.field private bsQ:J

.field private bsR:J

.field private bsS:J

.field private bsT:I

.field private bsU:I

.field private bsV:I

.field private bsW:J

.field private bsX:J

.field private bsY:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcn/nubia/videogenerator/local/AudioLocalSource$1;

    invoke-direct {v0}, Lcn/nubia/videogenerator/local/AudioLocalSource$1;-><init>()V

    sput-object v0, Lcn/nubia/videogenerator/local/a;->bsG:Ljava/util/HashMap;

    .line 37
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .registers 12

    .prologue
    const-wide/16 v6, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v4, p0, Lcn/nubia/videogenerator/local/a;->bsH:Landroid/media/MediaFormat;

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/a;->bsM:Z

    .line 44
    iput-boolean v1, p0, Lcn/nubia/videogenerator/local/a;->bsN:Z

    .line 45
    iput-object v4, p0, Lcn/nubia/videogenerator/local/a;->bsO:Lcn/nubia/videogenerator/b/d;

    .line 46
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/a;->bsP:J

    .line 47
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/a;->bsQ:J

    .line 48
    iput-wide v6, p0, Lcn/nubia/videogenerator/local/a;->bsR:J

    .line 49
    iput-wide v6, p0, Lcn/nubia/videogenerator/local/a;->bsS:J

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcn/nubia/videogenerator/local/a;->bsT:I

    .line 51
    iput v1, p0, Lcn/nubia/videogenerator/local/a;->bsU:I

    const v0, 0xac44

    .line 52
    iput v0, p0, Lcn/nubia/videogenerator/local/a;->bsV:I

    .line 53
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/a;->bsW:J

    .line 54
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/a;->bsX:J

    .line 55
    iput-wide v2, p0, Lcn/nubia/videogenerator/local/a;->bsY:J

    .line 58
    iput-object p1, p0, Lcn/nubia/videogenerator/local/a;->bsJ:Ljava/lang/String;

    .line 59
    iput-wide p2, p0, Lcn/nubia/videogenerator/local/a;->bsP:J

    .line 60
    new-instance v0, Lcn/nubia/videogenerator/local/b;

    invoke-direct {v0, p0}, Lcn/nubia/videogenerator/local/b;-><init>(Lcn/nubia/videogenerator/local/a;)V

    iput-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsL:Lcn/nubia/videogenerator/local/b;

    .line 61
    invoke-virtual {p0}, Lcn/nubia/videogenerator/local/a;->bPC()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/a;->bsN:Z

    .line 62
    return-void
.end method

.method static synthetic bPD(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsJ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bPE(Lcn/nubia/videogenerator/local/a;Landroid/media/MediaFormat;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcn/nubia/videogenerator/local/a;->bsH:Landroid/media/MediaFormat;

    return-void
.end method

.method static synthetic bPF(Lcn/nubia/videogenerator/local/a;)J
    .registers 3

    .prologue
    .line 55
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/a;->bsY:J

    return-wide v0
.end method

.method static synthetic bPG(Lcn/nubia/videogenerator/local/a;)I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcn/nubia/videogenerator/local/a;->bsT:I

    return v0
.end method

.method static synthetic bPH(Lcn/nubia/videogenerator/local/a;)I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcn/nubia/videogenerator/local/a;->bsU:I

    return v0
.end method

.method static synthetic bPI(Lcn/nubia/videogenerator/local/a;)J
    .registers 3

    .prologue
    .line 48
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/a;->bsR:J

    return-wide v0
.end method

.method static synthetic bPJ(Lcn/nubia/videogenerator/local/a;)Z
    .registers 2

    .prologue
    .line 44
    iget-boolean v0, p0, Lcn/nubia/videogenerator/local/a;->bsN:Z

    return v0
.end method

.method static synthetic bPK(Lcn/nubia/videogenerator/local/a;)Z
    .registers 2

    .prologue
    .line 43
    iget-boolean v0, p0, Lcn/nubia/videogenerator/local/a;->bsM:Z

    return v0
.end method

.method static synthetic bPL(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/l;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsI:Lcn/nubia/videogenerator/b/l;

    return-object v0
.end method

.method static synthetic bPM(Lcn/nubia/videogenerator/local/a;)J
    .registers 3

    .prologue
    .line 53
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/a;->bsW:J

    return-wide v0
.end method

.method static synthetic bPN(Lcn/nubia/videogenerator/local/a;)J
    .registers 3

    .prologue
    .line 46
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/a;->bsP:J

    return-wide v0
.end method

.method static synthetic bPO(Lcn/nubia/videogenerator/local/a;)J
    .registers 3

    .prologue
    .line 47
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/a;->bsQ:J

    return-wide v0
.end method

.method static synthetic bPP(Lcn/nubia/videogenerator/local/a;Z)V
    .registers 2

    .prologue
    .line 43
    iput-boolean p1, p0, Lcn/nubia/videogenerator/local/a;->bsM:Z

    return-void
.end method

.method static synthetic bPQ(Lcn/nubia/videogenerator/local/a;J)V
    .registers 4

    .prologue
    .line 53
    iput-wide p1, p0, Lcn/nubia/videogenerator/local/a;->bsW:J

    return-void
.end method

.method static synthetic bPR(Lcn/nubia/videogenerator/local/a;)Lcn/nubia/videogenerator/b/d;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsO:Lcn/nubia/videogenerator/b/d;

    return-object v0
.end method

.method static synthetic bPS(Lcn/nubia/videogenerator/local/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsK:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bPT(Lcn/nubia/videogenerator/local/a;)I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcn/nubia/videogenerator/local/a;->bsV:I

    return v0
.end method

.method static synthetic bPU(Lcn/nubia/videogenerator/local/a;)J
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/a;->bsX:J

    return-wide v0
.end method

.method static synthetic bPV(Lcn/nubia/videogenerator/local/a;)J
    .registers 3

    .prologue
    .line 49
    iget-wide v0, p0, Lcn/nubia/videogenerator/local/a;->bsS:J

    return-wide v0
.end method

.method static synthetic bPW(Lcn/nubia/videogenerator/local/a;Lcn/nubia/videogenerator/b/l;)V
    .registers 2

    .prologue
    .line 39
    iput-object p1, p0, Lcn/nubia/videogenerator/local/a;->bsI:Lcn/nubia/videogenerator/b/l;

    return-void
.end method

.method static synthetic bPX(Lcn/nubia/videogenerator/local/a;Lcn/nubia/videogenerator/b/d;)V
    .registers 2

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/videogenerator/local/a;->bsO:Lcn/nubia/videogenerator/b/d;

    return-void
.end method


# virtual methods
.method public bPA(Lcn/nubia/videogenerator/b/l;Lcn/nubia/videogenerator/b/d;)V
    .registers 3

    .prologue
    .line 65
    iput-object p1, p0, Lcn/nubia/videogenerator/local/a;->bsI:Lcn/nubia/videogenerator/b/l;

    .line 66
    iput-object p2, p0, Lcn/nubia/videogenerator/local/a;->bsO:Lcn/nubia/videogenerator/b/d;

    .line 67
    return-void
.end method

.method public bPB()Landroid/media/MediaFormat;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsH:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public bPC()Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 124
    const/4 v0, 0x1

    .line 125
    iget-object v2, p0, Lcn/nubia/videogenerator/local/a;->bsH:Landroid/media/MediaFormat;

    if-nez v2, :cond_7

    .line 132
    :cond_6
    :goto_6
    return v0

    .line 126
    :cond_7
    iget-object v2, p0, Lcn/nubia/videogenerator/local/a;->bsH:Landroid/media/MediaFormat;

    const-string/jumbo v3, "mime"

    invoke-virtual {v2, v3}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/videogenerator/local/a;->bsK:Ljava/lang/String;

    const-string/jumbo v2, "AudioLocalSource"

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "isNeedToDecoer mimetype:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcn/nubia/videogenerator/local/a;->bsK:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v2, Lcn/nubia/videogenerator/local/a;->bsG:Ljava/util/HashMap;

    iget-object v3, p0, Lcn/nubia/videogenerator/local/a;->bsK:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v1

    .line 129
    goto :goto_6
.end method

.method public start()V
    .registers 4

    .prologue
    .line 111
    iget-boolean v0, p0, Lcn/nubia/videogenerator/local/a;->bsN:Z

    if-eqz v0, :cond_12

    .line 114
    :cond_4
    :goto_4
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/a;->bsL:Lcn/nubia/videogenerator/local/b;

    const-string/jumbo v2, "AudioLocalSource"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 115
    return-void

    .line 111
    :cond_12
    iget-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsH:Landroid/media/MediaFormat;

    if-eqz v0, :cond_4

    .line 112
    iget-object v0, p0, Lcn/nubia/videogenerator/local/a;->bsO:Lcn/nubia/videogenerator/b/d;

    iget-object v1, p0, Lcn/nubia/videogenerator/local/a;->bsH:Landroid/media/MediaFormat;

    invoke-interface {v0, v1}, Lcn/nubia/videogenerator/b/d;->brp(Landroid/media/MediaFormat;)V

    goto :goto_4
.end method

.method public stop()V
    .registers 2

    .prologue
    .line 119
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/videogenerator/local/a;->bsM:Z

    .line 120
    return-void
.end method
