.class public Lu/aly/bn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final buB:Lu/aly/aO;

.field private static final buC:Lu/aly/cB;

.field private static final buD:Lu/aly/cB;

.field private static final buE:Lu/aly/cB;

.field private static final buF:Lu/aly/cB;

.field private static final buG:Lu/aly/cB;

.field private static final buH:Lu/aly/cB;

.field private static final buI:Lu/aly/cB;

.field private static final buJ:Ljava/util/Map;

.field public static final buK:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:J

.field public d:J

.field public e:Ljava/util/List;

.field public f:Ljava/util/List;

.field public g:Lu/aly/bo;

.field private u:B

.field private v:[Lu/aly/bn$e;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/16 v10, 0xf

    const/16 v9, 0xc

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/16 v6, 0xa

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "Session"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bn;->buB:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "id"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2, v7}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->buC:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "start_time"

    invoke-direct {v0, v1, v6, v8}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->buD:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "end_time"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->buE:Lu/aly/cB;

    .line 38
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "duration"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->buF:Lu/aly/cB;

    .line 39
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "pages"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v10, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->buG:Lu/aly/cB;

    .line 40
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "locations"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v10, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->buH:Lu/aly/cB;

    .line 41
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "traffic"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->buI:Lu/aly/cB;

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bn;->buJ:Ljava/util/Map;

    .line 45
    sget-object v0, Lu/aly/bn;->buJ:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/bx;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bx;-><init>(Lu/aly/S;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lu/aly/bn;->buJ:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/c;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/c;-><init>(Lu/aly/S;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bn$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 142
    sget-object v1, Lu/aly/bn$e;->bvI:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "id"

    new-instance v4, Lu/aly/cw;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v1, Lu/aly/bn$e;->bvJ:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "start_time"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lu/aly/bn$e;->bvK:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "end_time"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v1, Lu/aly/bn$e;->bvL:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "duration"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lu/aly/bn$e;->bvM:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "pages"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/bi;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lu/aly/bn$e;->bvN:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "locations"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/bg;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v10, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    sget-object v1, Lu/aly/bn$e;->bvO:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "traffic"

    new-instance v4, Lu/aly/da;

    const-class v5, Lu/aly/bo;

    invoke-direct {v4, v9, v5}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bn;->buK:Ljava/util/Map;

    const-class v0, Lu/aly/bn;

    .line 159
    sget-object v1, Lu/aly/bn;->buK:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 160
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-byte v2, p0, Lu/aly/bn;->u:B

    const/4 v0, 0x3

    .line 138
    new-array v0, v0, [Lu/aly/bn$e;

    sget-object v1, Lu/aly/bn$e;->bvM:Lu/aly/bn$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bn$e;->bvN:Lu/aly/bn$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/bn$e;->bvO:Lu/aly/bn$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bn;->v:[Lu/aly/bn$e;

    .line 163
    return-void
.end method

.method static synthetic bSb()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buB:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic bSc()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buC:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bSd()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buD:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bSe()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buE:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bSf()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buF:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bSg()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buG:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bSh()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buH:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bSi()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bn;->buI:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(J)Lu/aly/bn;
    .registers 4

    .prologue
    .line 258
    iput-wide p1, p0, Lu/aly/bn;->b:J

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->bRK(Z)V

    .line 260
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bn;
    .registers 2

    .prologue
    .line 234
    iput-object p1, p0, Lu/aly/bn;->a:Ljava/lang/String;

    .line 235
    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/bn;
    .registers 2

    .prologue
    .line 342
    iput-object p1, p0, Lu/aly/bn;->e:Ljava/util/List;

    .line 343
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 248
    if-eqz p1, :cond_3

    .line 251
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 249
    iput-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 429
    sget-object v0, Lu/aly/bn;->buJ:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 430
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 433
    sget-object v0, Lu/aly/bn;->buJ:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 434
    return-void
.end method

.method public bRK(Z)V
    .registers 4

    .prologue
    .line 273
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 274
    return-void
.end method

.method public bRL(J)Lu/aly/bn;
    .registers 4

    .prologue
    .line 281
    iput-wide p1, p0, Lu/aly/bn;->c:J

    .line 282
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->bRM(Z)V

    .line 283
    return-object p0
.end method

.method public bRM(Z)V
    .registers 4

    .prologue
    .line 296
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 297
    return-void
.end method

.method public bRN(J)Lu/aly/bn;
    .registers 4

    .prologue
    .line 304
    iput-wide p1, p0, Lu/aly/bn;->d:J

    .line 305
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->bRP(Z)V

    .line 306
    return-object p0
.end method

.method public bRO()Z
    .registers 3

    .prologue
    .line 315
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bRP(Z)V
    .registers 4

    .prologue
    .line 319
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bn;->u:B

    .line 320
    return-void
.end method

.method public bRQ()I
    .registers 2

    .prologue
    .line 323
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bRR()Z
    .registers 2

    .prologue
    .line 352
    iget-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bRS(Z)V
    .registers 3

    .prologue
    .line 356
    if-eqz p1, :cond_3

    .line 359
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 357
    iput-object v0, p0, Lu/aly/bn;->e:Ljava/util/List;

    goto :goto_2
.end method

.method public bRT(Lu/aly/bg;)V
    .registers 3

    .prologue
    .line 370
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 373
    :goto_4
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 374
    return-void

    .line 371
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    goto :goto_4
.end method

.method public bRU(Ljava/util/List;)Lu/aly/bn;
    .registers 2

    .prologue
    .line 381
    iput-object p1, p0, Lu/aly/bn;->f:Ljava/util/List;

    .line 382
    return-object p0
.end method

.method public bRV()Z
    .registers 2

    .prologue
    .line 391
    iget-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bRW(Z)V
    .registers 3

    .prologue
    .line 395
    if-eqz p1, :cond_3

    .line 398
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 396
    iput-object v0, p0, Lu/aly/bn;->f:Ljava/util/List;

    goto :goto_2
.end method

.method public bRX(Lu/aly/bo;)Lu/aly/bn;
    .registers 2

    .prologue
    .line 405
    iput-object p1, p0, Lu/aly/bn;->g:Lu/aly/bo;

    .line 406
    return-object p0
.end method

.method public bRY()Z
    .registers 2

    .prologue
    .line 415
    iget-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bRZ(Z)V
    .registers 3

    .prologue
    .line 419
    if-eqz p1, :cond_3

    .line 422
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 420
    iput-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    goto :goto_2
.end method

.method public bSa()V
    .registers 4

    .prologue
    .line 496
    iget-object v0, p0, Lu/aly/bn;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 503
    iget-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    if-nez v0, :cond_27

    .line 506
    :goto_8
    return-void

    .line 497
    :cond_9
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 504
    :cond_27
    iget-object v0, p0, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0}, Lu/aly/bo;->j()V

    goto :goto_8
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 269
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 292
    iget-byte v0, p0, Lu/aly/bn;->u:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Session("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id:"

    .line 441
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v1, p0, Lu/aly/bn;->a:Ljava/lang/String;

    if-eqz v1, :cond_67

    .line 445
    iget-object v1, p0, Lu/aly/bn;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    const-string/jumbo v1, ", "

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "start_time:"

    .line 449
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    iget-wide v2, p0, Lu/aly/bn;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 452
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "end_time:"

    .line 453
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    iget-wide v2, p0, Lu/aly/bn;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "duration:"

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    iget-wide v2, p0, Lu/aly/bn;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 460
    invoke-virtual {p0}, Lu/aly/bn;->bRR()Z

    move-result v1

    if-nez v1, :cond_6e

    .line 470
    :goto_50
    invoke-virtual {p0}, Lu/aly/bn;->bRV()Z

    move-result v1

    if-nez v1, :cond_8b

    .line 480
    :goto_56
    invoke-virtual {p0}, Lu/aly/bn;->bRY()Z

    move-result v1

    if-nez v1, :cond_a8

    :goto_5c
    const-string/jumbo v1, ")"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_67
    const-string/jumbo v1, "null"

    .line 443
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_6e
    const-string/jumbo v1, ", "

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "pages:"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 463
    iget-object v1, p0, Lu/aly/bn;->e:Ljava/util/List;

    if-eqz v1, :cond_84

    .line 466
    iget-object v1, p0, Lu/aly/bn;->e:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_84
    const-string/jumbo v1, "null"

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_50

    :cond_8b
    const-string/jumbo v1, ", "

    .line 471
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locations:"

    .line 472
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    iget-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    if-eqz v1, :cond_a1

    .line 476
    iget-object v1, p0, Lu/aly/bn;->f:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_a1
    const-string/jumbo v1, "null"

    .line 474
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_a8
    const-string/jumbo v1, ", "

    .line 481
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "traffic:"

    .line 482
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    iget-object v1, p0, Lu/aly/bn;->g:Lu/aly/bo;

    if-eqz v1, :cond_be

    .line 486
    iget-object v1, p0, Lu/aly/bn;->g:Lu/aly/bo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_5c

    :cond_be
    const-string/jumbo v1, "null"

    .line 484
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5c
.end method
