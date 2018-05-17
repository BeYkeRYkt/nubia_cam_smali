.class public Lcom/android/common/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/m;


# static fields
.field private static aib:Ljava/lang/String;

.field private static aim:J


# instance fields
.field private ahX:Lcom/android/common/appService/W;

.field private ahY:Lcom/android/common/camerastate/a;

.field private ahZ:Lcom/android/common/q;

.field private aia:J

.field private aic:Z

.field private aid:Z

.field private aie:Ljava/util/ArrayList;

.field private aif:Lcom/android/common/o;

.field private aig:Z

.field private aih:Lcom/android/common/r;

.field private aii:Lcom/android/common/l;

.field private aij:I

.field private aik:J

.field private ail:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/common/n;->aim:J

    .line 49
    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/n;->aib:Ljava/lang/String;

    .line 24
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-wide v2, p0, Lcom/android/common/n;->ail:J

    .line 40
    iput-wide v2, p0, Lcom/android/common/n;->aia:J

    .line 41
    iput-wide v2, p0, Lcom/android/common/n;->aik:J

    .line 42
    iput v0, p0, Lcom/android/common/n;->aij:I

    .line 46
    iput-object v1, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    .line 47
    iput-object v1, p0, Lcom/android/common/n;->ahY:Lcom/android/common/camerastate/a;

    .line 50
    iput-boolean v0, p0, Lcom/android/common/n;->aic:Z

    .line 51
    iput-object v1, p0, Lcom/android/common/n;->aih:Lcom/android/common/r;

    .line 52
    iput-boolean v0, p0, Lcom/android/common/n;->aid:Z

    .line 53
    iput-boolean v0, p0, Lcom/android/common/n;->aig:Z

    .line 54
    new-instance v0, Lcom/android/common/l;

    iget-wide v2, p0, Lcom/android/common/n;->aia:J

    invoke-direct {v0, v2, v3, p0}, Lcom/android/common/l;-><init>(JLcom/android/common/m;)V

    iput-object v0, p0, Lcom/android/common/n;->aii:Lcom/android/common/l;

    .line 69
    new-instance v0, Lcom/android/common/q;

    invoke-direct {v0, p0, v1}, Lcom/android/common/q;-><init>(Lcom/android/common/n;Lcom/android/common/q;)V

    iput-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    .line 70
    iput-object p1, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    .line 71
    iget-object v0, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/n;->ahY:Lcom/android/common/camerastate/a;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    .line 68
    return-void
.end method

.method public static aqP()Ljava/lang/String;
    .registers 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/common/n;->aib:Ljava/lang/String;

    return-object v0
.end method

.method private aqZ()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 266
    iget-object v1, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    if-eqz v1, :cond_1b

    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/c/e;->hq()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/i;->em()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 267
    :cond_1b
    return v0

    .line 268
    :cond_1c
    iget-object v1, p0, Lcom/android/common/n;->ahY:Lcom/android/common/camerastate/a;

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_27

    const/4 v0, 0x1

    :cond_27
    return v0
.end method

.method private ara(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/common/f;->aom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    const-string/jumbo v1, "/"

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0a04b6

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const/16 v1, 0x2f

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    invoke-static {p1, p2}, Lcom/android/common/h;->apn(J)Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v1

    sget-object v2, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    if-ne v1, v2, :cond_4b

    .line 220
    sget-object v0, Lcom/android/common/appService/CameraMember;->jq:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v0}, Lcom/android/common/appService/CameraMember;->mc()I

    move-result v0

    invoke-static {v0}, Lcom/android/common/f;->aol(I)Ljava/lang/String;

    move-result-object v0

    .line 222
    :cond_4b
    return-object v0
.end method

.method private arc()J
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 232
    iget-wide v0, p0, Lcom/android/common/n;->aia:J

    iget-wide v2, p0, Lcom/android/common/n;->ail:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-gez v0, :cond_c

    .line 233
    return-wide v4

    .line 234
    :cond_c
    iget-wide v0, p0, Lcom/android/common/n;->aia:J

    iget-wide v2, p0, Lcom/android/common/n;->ail:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private ard()V
    .registers 5

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/common/n;->aii:Lcom/android/common/l;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/common/l;->aqB(J)V

    .line 167
    iget-object v0, p0, Lcom/android/common/n;->aii:Lcom/android/common/l;

    invoke-virtual {v0}, Lcom/android/common/l;->start()V

    .line 165
    return-void
.end method

.method static synthetic are(Lcom/android/common/n;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic arf(Lcom/android/common/n;)Lcom/android/common/q;
    .registers 2

    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    return-object v0
.end method

.method static synthetic arg(Lcom/android/common/n;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/n;->aia:J

    return-wide v0
.end method

.method static synthetic arh(Lcom/android/common/n;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/n;->aic:Z

    return v0
.end method

.method static synthetic ari(Lcom/android/common/n;)Lcom/android/common/o;
    .registers 2

    iget-object v0, p0, Lcom/android/common/n;->aif:Lcom/android/common/o;

    return-object v0
.end method

.method static synthetic arj(Lcom/android/common/n;)I
    .registers 2

    iget v0, p0, Lcom/android/common/n;->aij:I

    return v0
.end method

.method static synthetic ark(Lcom/android/common/n;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/n;->aik:J

    return-wide v0
.end method

.method static synthetic arl()J
    .registers 2

    sget-wide v0, Lcom/android/common/n;->aim:J

    return-wide v0
.end method

.method static synthetic arm(Lcom/android/common/n;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/common/n;->aik:J

    return-wide p1
.end method

.method static synthetic arn(Lcom/android/common/n;J)J
    .registers 4

    iput-wide p1, p0, Lcom/android/common/n;->ail:J

    return-wide p1
.end method

.method static synthetic aro(Lcom/android/common/n;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/n;->aqZ()Z

    move-result v0

    return v0
.end method

.method static synthetic arp(Lcom/android/common/n;)J
    .registers 3

    invoke-direct {p0}, Lcom/android/common/n;->arc()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic arq(Lcom/android/common/n;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/n;->run()V

    return-void
.end method

.method private release()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 225
    sput-wide v2, Lcom/android/common/n;->aim:J

    .line 226
    iput-wide v2, p0, Lcom/android/common/n;->ail:J

    .line 227
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/n;->aij:I

    .line 228
    iput-wide v2, p0, Lcom/android/common/n;->aik:J

    .line 224
    return-void
.end method

.method private run()V
    .registers 9

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v6, 0x3e8

    const/4 v4, 0x2

    .line 238
    iget-boolean v0, p0, Lcom/android/common/n;->aic:Z

    if-eqz v0, :cond_26

    .line 239
    iget-wide v0, p0, Lcom/android/common/n;->aia:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2d

    .line 240
    invoke-direct {p0}, Lcom/android/common/n;->aqZ()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 241
    iget v0, p0, Lcom/android/common/n;->aij:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/n;->aij:I

    .line 242
    iget-boolean v0, p0, Lcom/android/common/n;->aig:Z

    if-nez v0, :cond_27

    .line 243
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    .line 244
    const-wide/16 v2, 0x1f4

    .line 243
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/common/q;->sendEmptyMessageDelayed(IJ)Z

    .line 237
    :cond_26
    :goto_26
    return-void

    .line 246
    :cond_27
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    invoke-virtual {v0, v4}, Lcom/android/common/q;->sendEmptyMessage(I)Z

    goto :goto_26

    .line 250
    :cond_2d
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v6, v7}, Lcom/android/common/q;->sendEmptyMessageDelayed(IJ)Z

    .line 252
    iget-wide v0, p0, Lcom/android/common/n;->ail:J

    add-long/2addr v0, v6

    iput-wide v0, p0, Lcom/android/common/n;->ail:J

    .line 253
    iget v0, p0, Lcom/android/common/n;->aij:I

    if-nez v0, :cond_40

    .line 254
    iget-wide v0, p0, Lcom/android/common/n;->aia:J

    iput-wide v0, p0, Lcom/android/common/n;->ail:J

    .line 256
    :cond_40
    iget-wide v0, p0, Lcom/android/common/n;->aia:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_26

    iget-wide v0, p0, Lcom/android/common/n;->ail:J

    iget-wide v2, p0, Lcom/android/common/n;->aia:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_26

    .line 257
    iget v0, p0, Lcom/android/common/n;->aij:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/n;->aij:I

    .line 258
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    invoke-virtual {v0, v4, v6, v7}, Lcom/android/common/q;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_26
.end method


# virtual methods
.method public aqQ(Lcom/android/common/o;)V
    .registers 2

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/common/n;->aif:Lcom/android/common/o;

    .line 99
    return-void
.end method

.method public aqR(J)V
    .registers 4

    .prologue
    .line 91
    iput-wide p1, p0, Lcom/android/common/n;->aia:J

    .line 92
    iget-object v0, p0, Lcom/android/common/n;->aii:Lcom/android/common/l;

    invoke-virtual {v0, p1, p2}, Lcom/android/common/l;->aqB(J)V

    .line 90
    return-void
.end method

.method public aqS(Z)V
    .registers 2

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/android/common/n;->aid:Z

    .line 86
    return-void
.end method

.method public aqT(Z)V
    .registers 2

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/common/n;->aig:Z

    .line 82
    return-void
.end method

.method public aqU(Lcom/android/common/p;)V
    .registers 3

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 105
    iget-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    :cond_d
    return-void
.end method

.method public aqV(Lcom/android/common/p;)V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 108
    return-void
.end method

.method public aqW()J
    .registers 3

    .prologue
    .line 96
    iget-wide v0, p0, Lcom/android/common/n;->aia:J

    return-wide v0
.end method

.method public aqX()V
    .registers 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/p;

    .line 129
    if-eqz v0, :cond_6

    .line 130
    invoke-interface {v0}, Lcom/android/common/p;->aip()V

    goto :goto_6

    .line 127
    :cond_18
    return-void
.end method

.method public aqY()V
    .registers 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/p;

    .line 175
    if-eqz v0, :cond_6

    .line 176
    invoke-interface {v0}, Lcom/android/common/p;->aiq()V

    goto :goto_6

    .line 173
    :cond_18
    return-void
.end method

.method public arb()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/android/common/n;->aij:I

    return v0
.end method

.method public onTick(J)V
    .registers 10

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/common/n;->aif:Lcom/android/common/o;

    const-wide/16 v2, -0x1

    const/4 v6, -0x1

    move-wide v4, p1

    invoke-interface/range {v1 .. v6}, Lcom/android/common/o;->akg(JJI)V

    .line 368
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 136
    iget-boolean v0, p0, Lcom/android/common/n;->aic:Z

    if-nez v0, :cond_5a

    .line 137
    iget-object v0, p0, Lcom/android/common/n;->ahY:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 138
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hq()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 144
    iget-object v0, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2, v2}, Lcom/android/common/appService/W;->rP(ZI)V

    .line 146
    iput-boolean v2, p0, Lcom/android/common/n;->aic:Z

    .line 147
    iget-object v0, p0, Lcom/android/common/n;->ahY:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amK(Lcom/android/common/camerastate/FunctionState;)V

    .line 149
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/common/n;->aim:J

    .line 150
    sget-wide v0, Lcom/android/common/n;->aim:J

    invoke-direct {p0, v0, v1}, Lcom/android/common/n;->ara(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/common/n;->aib:Ljava/lang/String;

    .line 151
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/q;->sendEmptyMessage(I)Z

    .line 153
    iget-boolean v0, p0, Lcom/android/common/n;->aid:Z

    if-eqz v0, :cond_8a

    .line 154
    invoke-direct {p0}, Lcom/android/common/n;->ard()V

    .line 158
    :goto_42
    iget-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_48
    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/p;

    .line 159
    if-eqz v0, :cond_48

    .line 160
    invoke-interface {v0}, Lcom/android/common/p;->aip()V

    goto :goto_48

    .line 139
    :cond_5a
    const-string/jumbo v0, "Intervalometer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/n;->aic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    const-string/jumbo v2, "; command canAdd: "

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 140
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/e;->hq()Z

    move-result v2

    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-void

    .line 156
    :cond_8a
    invoke-direct {p0}, Lcom/android/common/n;->run()V

    goto :goto_42

    .line 162
    :cond_8e
    iget-object v0, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 135
    return-void
.end method

.method public stop()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 182
    iget-boolean v0, p0, Lcom/android/common/n;->aic:Z

    if-nez v0, :cond_2a

    .line 183
    const-string/jumbo v0, "Intervalometer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Interval On\uff1a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/common/n;->aic:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; can\'t stop."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    return-void

    .line 186
    :cond_2a
    iget-boolean v0, p0, Lcom/android/common/n;->aid:Z

    if-eqz v0, :cond_33

    .line 187
    iget-object v0, p0, Lcom/android/common/n;->aii:Lcom/android/common/l;

    invoke-virtual {v0}, Lcom/android/common/l;->aqA()V

    .line 189
    :cond_33
    iget-object v0, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 191
    iput-boolean v2, p0, Lcom/android/common/n;->aic:Z

    .line 192
    iget-object v0, p0, Lcom/android/common/n;->ahY:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 196
    invoke-direct {p0}, Lcom/android/common/n;->release()V

    .line 197
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    invoke-virtual {v0, v2}, Lcom/android/common/q;->removeMessages(I)V

    .line 198
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    invoke-virtual {v0, v3}, Lcom/android/common/q;->removeMessages(I)V

    .line 199
    iget-object v0, p0, Lcom/android/common/n;->ahZ:Lcom/android/common/q;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/q;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/android/common/n;->aif:Lcom/android/common/o;

    if-eqz v0, :cond_5e

    .line 202
    iget-object v0, p0, Lcom/android/common/n;->aif:Lcom/android/common/o;

    invoke-interface {v0}, Lcom/android/common/o;->ake()V

    .line 206
    :cond_5e
    iget-object v0, p0, Lcom/android/common/n;->aie:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_64
    :goto_64
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_76

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/p;

    .line 207
    if-eqz v0, :cond_64

    .line 208
    invoke-interface {v0}, Lcom/android/common/p;->aiq()V

    goto :goto_64

    .line 211
    :cond_76
    iget-object v0, p0, Lcom/android/common/n;->ahX:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2, v3}, Lcom/android/common/appService/W;->rP(ZI)V

    .line 181
    return-void
.end method

.method public xA()V
    .registers 3

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/android/common/n;->aic:Z

    if-nez v0, :cond_e

    .line 375
    const-string/jumbo v0, "Intervalometer"

    const-string/jumbo v1, "when interval is not on, not call interval finish"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void

    .line 378
    :cond_e
    iget-object v0, p0, Lcom/android/common/n;->aif:Lcom/android/common/o;

    if-eqz v0, :cond_17

    .line 379
    iget-object v0, p0, Lcom/android/common/n;->aif:Lcom/android/common/o;

    invoke-interface {v0}, Lcom/android/common/o;->onFinish()V

    .line 373
    :cond_17
    return-void
.end method
