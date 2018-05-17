.class public Lu/aly/bh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bvA:Lu/aly/cB;

.field private static final bvB:Lu/aly/cB;

.field private static final bvC:Lu/aly/cB;

.field private static final bvD:Lu/aly/cB;

.field private static final bvE:Lu/aly/cB;

.field private static final bvF:Lu/aly/cB;

.field private static final bvG:Ljava/util/Map;

.field public static final bvH:Ljava/util/Map;

.field private static final bvv:Lu/aly/aO;

.field private static final bvw:Lu/aly/cB;

.field private static final bvx:Lu/aly/cB;

.field private static final bvy:Lu/aly/cB;

.field private static final bvz:Lu/aly/cB;


# instance fields
.field private B:B

.field private C:[Lu/aly/bh$e;

.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:D

.field public e:D

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Ljava/lang/String;

.field public i:Lu/aly/an;

.field public j:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x4

    const/16 v5, 0x8

    const/16 v8, 0xb

    const/4 v7, 0x2

    .line 32
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "MiscInfo"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bh;->bvv:Lu/aly/aO;

    .line 34
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "time_zone"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvw:Lu/aly/cB;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "language"

    invoke-direct {v0, v1, v8, v7}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvx:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "country"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v8, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvy:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "latitude"

    invoke-direct {v0, v1, v6, v6}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvz:Lu/aly/cB;

    .line 38
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "longitude"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvA:Lu/aly/cB;

    .line 39
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "carrier"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvB:Lu/aly/cB;

    .line 40
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "latency"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvC:Lu/aly/cB;

    .line 41
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "display_name"

    invoke-direct {v0, v1, v8, v5}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvD:Lu/aly/cB;

    .line 42
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "access_type"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvE:Lu/aly/cB;

    .line 43
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "access_subtype"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v8, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bh;->bvF:Lu/aly/cB;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bh;->bvG:Ljava/util/Map;

    .line 47
    sget-object v0, Lu/aly/bh;->bvG:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/bW;

    invoke-direct {v2, v3}, Lu/aly/bW;-><init>(Lu/aly/cL;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lu/aly/bh;->bvG:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/cW;

    invoke-direct {v2, v3}, Lu/aly/cW;-><init>(Lu/aly/cL;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bh$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 165
    sget-object v1, Lu/aly/bh$e;->bup:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "time_zone"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lu/aly/bh$e;->buq:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "language"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lu/aly/bh$e;->bur:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "country"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lu/aly/bh$e;->bus:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "latitude"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lu/aly/bh$e;->but:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "longitude"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lu/aly/bh$e;->buu:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "carrier"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v1, Lu/aly/bh$e;->buv:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "latency"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v1, Lu/aly/bh$e;->buw:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "display_name"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v1, Lu/aly/bh$e;->bux:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "access_type"

    new-instance v4, Lu/aly/cu;

    const-class v5, Lu/aly/an;

    const/16 v6, 0x10

    invoke-direct {v4, v6, v5}, Lu/aly/cu;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v1, Lu/aly/bh$e;->buy:Lu/aly/bh$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "access_subtype"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bh;->bvH:Ljava/util/Map;

    const-class v0, Lu/aly/bh;

    .line 186
    sget-object v1, Lu/aly/bh;->bvH:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 187
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-byte v2, p0, Lu/aly/bh;->B:B

    const/16 v0, 0xa

    .line 161
    new-array v0, v0, [Lu/aly/bh$e;

    sget-object v1, Lu/aly/bh$e;->bup:Lu/aly/bh$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bh$e;->buq:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/bh$e;->bur:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/bh$e;->bus:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/bh$e;->but:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lu/aly/bh$e;->buu:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lu/aly/bh$e;->buv:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lu/aly/bh$e;->buw:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lu/aly/bh$e;->bux:Lu/aly/bh$e;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lu/aly/bh$e;->buy:Lu/aly/bh$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bh;->C:[Lu/aly/bh$e;

    .line 190
    return-void
.end method

.method static synthetic bTA()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvB:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTB()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvC:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTC()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvD:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTD()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvE:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTE()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvF:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTu()Lu/aly/aO;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvv:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic bTv()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvw:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTw()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvx:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTx()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvy:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTy()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvz:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bTz()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bh;->bvA:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bh;
    .registers 3

    .prologue
    .line 248
    iput p1, p0, Lu/aly/bh;->a:I

    .line 249
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bh;->a(Z)V

    .line 250
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bh;
    .registers 2

    .prologue
    .line 271
    iput-object p1, p0, Lu/aly/bh;->b:Ljava/lang/String;

    .line 272
    return-object p0
.end method

.method public a(Z)V
    .registers 4

    .prologue
    .line 263
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    .line 264
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/bh;
    .registers 2

    .prologue
    .line 295
    iput-object p1, p0, Lu/aly/bh;->c:Ljava/lang/String;

    .line 296
    return-object p0
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 492
    sget-object v0, Lu/aly/bh;->bvG:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 493
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 496
    sget-object v0, Lu/aly/bh;->bvG:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 497
    return-void
.end method

.method public bTa(Z)V
    .registers 3

    .prologue
    .line 285
    if-eqz p1, :cond_3

    .line 288
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 286
    iput-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public bTb(Z)V
    .registers 3

    .prologue
    .line 309
    if-eqz p1, :cond_3

    .line 312
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 310
    iput-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public bTc()Z
    .registers 3

    .prologue
    .line 330
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bTd(Z)V
    .registers 4

    .prologue
    .line 334
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    .line 335
    return-void
.end method

.method public bTe()Z
    .registers 3

    .prologue
    .line 353
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bTf(Z)V
    .registers 4

    .prologue
    .line 357
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    .line 358
    return-void
.end method

.method public bTg(Ljava/lang/String;)Lu/aly/bh;
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, Lu/aly/bh;->f:Ljava/lang/String;

    .line 366
    return-object p0
.end method

.method public bTh()Z
    .registers 2

    .prologue
    .line 375
    iget-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bTi(Z)V
    .registers 3

    .prologue
    .line 379
    if-eqz p1, :cond_3

    .line 382
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 380
    iput-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    goto :goto_2
.end method

.method public bTj()Z
    .registers 3

    .prologue
    .line 400
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bTk(Z)V
    .registers 4

    .prologue
    .line 404
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bh;->B:B

    .line 405
    return-void
.end method

.method public bTl()Z
    .registers 2

    .prologue
    .line 422
    iget-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bTm(Z)V
    .registers 3

    .prologue
    .line 426
    if-eqz p1, :cond_3

    .line 429
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    goto :goto_2
.end method

.method public bTn(Lu/aly/an;)Lu/aly/bh;
    .registers 2

    .prologue
    .line 444
    iput-object p1, p0, Lu/aly/bh;->i:Lu/aly/an;

    .line 445
    return-object p0
.end method

.method public bTo()Z
    .registers 2

    .prologue
    .line 454
    iget-object v0, p0, Lu/aly/bh;->i:Lu/aly/an;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bTp(Z)V
    .registers 3

    .prologue
    .line 458
    if-eqz p1, :cond_3

    .line 461
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 459
    iput-object v0, p0, Lu/aly/bh;->i:Lu/aly/an;

    goto :goto_2
.end method

.method public bTq(Ljava/lang/String;)Lu/aly/bh;
    .registers 2

    .prologue
    .line 468
    iput-object p1, p0, Lu/aly/bh;->j:Ljava/lang/String;

    .line 469
    return-object p0
.end method

.method public bTr()Z
    .registers 2

    .prologue
    .line 478
    iget-object v0, p0, Lu/aly/bh;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bTs(Z)V
    .registers 3

    .prologue
    .line 482
    if-eqz p1, :cond_3

    .line 485
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 483
    iput-object v0, p0, Lu/aly/bh;->j:Ljava/lang/String;

    goto :goto_2
.end method

.method public bTt()V
    .registers 1

    .prologue
    .line 594
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 259
    iget-byte v0, p0, Lu/aly/bh;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "MiscInfo("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 504
    invoke-virtual {p0}, Lu/aly/bh;->e()Z

    move-result v3

    if-nez v3, :cond_51

    .line 509
    :goto_10
    invoke-virtual {p0}, Lu/aly/bh;->i()Z

    move-result v3

    if-nez v3, :cond_5e

    .line 519
    :goto_16
    invoke-virtual {p0}, Lu/aly/bh;->l()Z

    move-result v3

    if-nez v3, :cond_7f

    .line 529
    :goto_1c
    invoke-virtual {p0}, Lu/aly/bh;->bTc()Z

    move-result v3

    if-nez v3, :cond_a0

    .line 535
    :goto_22
    invoke-virtual {p0}, Lu/aly/bh;->bTe()Z

    move-result v3

    if-nez v3, :cond_b7

    .line 541
    :goto_28
    invoke-virtual {p0}, Lu/aly/bh;->bTh()Z

    move-result v3

    if-nez v3, :cond_ce

    .line 551
    :goto_2e
    invoke-virtual {p0}, Lu/aly/bh;->bTj()Z

    move-result v3

    if-nez v3, :cond_f0

    .line 557
    :goto_34
    invoke-virtual {p0}, Lu/aly/bh;->bTl()Z

    move-result v3

    if-nez v3, :cond_107

    .line 567
    :goto_3a
    invoke-virtual {p0}, Lu/aly/bh;->bTo()Z

    move-result v3

    if-nez v3, :cond_129

    .line 577
    :goto_40
    invoke-virtual {p0}, Lu/aly/bh;->bTr()Z

    move-result v1

    if-nez v1, :cond_14b

    :goto_46
    const-string/jumbo v0, ")"

    .line 587
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_51
    const-string/jumbo v0, "time_zone:"

    .line 505
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    iget v0, p0, Lu/aly/bh;->a:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 507
    goto :goto_10

    .line 510
    :cond_5e
    if-eqz v0, :cond_71

    :goto_60
    const-string/jumbo v0, "language:"

    .line 511
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

    if-eqz v0, :cond_78

    .line 515
    iget-object v0, p0, Lu/aly/bh;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6f
    move v0, v1

    .line 517
    goto :goto_16

    :cond_71
    const-string/jumbo v0, ", "

    .line 510
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_78
    const-string/jumbo v0, "null"

    .line 513
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6f

    .line 520
    :cond_7f
    if-eqz v0, :cond_92

    :goto_81
    const-string/jumbo v0, "country:"

    .line 521
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    iget-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    if-eqz v0, :cond_99

    .line 525
    iget-object v0, p0, Lu/aly/bh;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_90
    move v0, v1

    .line 527
    goto :goto_1c

    :cond_92
    const-string/jumbo v0, ", "

    .line 520
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_81

    :cond_99
    const-string/jumbo v0, "null"

    .line 523
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 530
    :cond_a0
    if-eqz v0, :cond_b0

    :goto_a2
    const-string/jumbo v0, "latitude:"

    .line 531
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    iget-wide v4, p0, Lu/aly/bh;->d:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 533
    goto/16 :goto_22

    :cond_b0
    const-string/jumbo v0, ", "

    .line 530
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a2

    .line 536
    :cond_b7
    if-eqz v0, :cond_c7

    :goto_b9
    const-string/jumbo v0, "longitude:"

    .line 537
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    iget-wide v4, p0, Lu/aly/bh;->e:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move v0, v1

    .line 539
    goto/16 :goto_28

    :cond_c7
    const-string/jumbo v0, ", "

    .line 536
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b9

    .line 542
    :cond_ce
    if-eqz v0, :cond_e2

    :goto_d0
    const-string/jumbo v0, "carrier:"

    .line 543
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 544
    iget-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    if-eqz v0, :cond_e9

    .line 547
    iget-object v0, p0, Lu/aly/bh;->f:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_df
    move v0, v1

    .line 549
    goto/16 :goto_2e

    :cond_e2
    const-string/jumbo v0, ", "

    .line 542
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d0

    :cond_e9
    const-string/jumbo v0, "null"

    .line 545
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_df

    .line 552
    :cond_f0
    if-eqz v0, :cond_100

    :goto_f2
    const-string/jumbo v0, "latency:"

    .line 553
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v0, p0, Lu/aly/bh;->g:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v1

    .line 555
    goto/16 :goto_34

    :cond_100
    const-string/jumbo v0, ", "

    .line 552
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f2

    .line 558
    :cond_107
    if-eqz v0, :cond_11b

    :goto_109
    const-string/jumbo v0, "display_name:"

    .line 559
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    iget-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    if-eqz v0, :cond_122

    .line 563
    iget-object v0, p0, Lu/aly/bh;->h:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_118
    move v0, v1

    .line 565
    goto/16 :goto_3a

    :cond_11b
    const-string/jumbo v0, ", "

    .line 558
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_109

    :cond_122
    const-string/jumbo v0, "null"

    .line 561
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_118

    .line 568
    :cond_129
    if-eqz v0, :cond_13d

    :goto_12b
    const-string/jumbo v0, "access_type:"

    .line 569
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v0, p0, Lu/aly/bh;->i:Lu/aly/an;

    if-eqz v0, :cond_144

    .line 573
    iget-object v0, p0, Lu/aly/bh;->i:Lu/aly/an;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_13a
    move v0, v1

    .line 575
    goto/16 :goto_40

    :cond_13d
    const-string/jumbo v0, ", "

    .line 568
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12b

    :cond_144
    const-string/jumbo v0, "null"

    .line 571
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_13a

    .line 578
    :cond_14b
    if-eqz v0, :cond_15e

    :goto_14d
    const-string/jumbo v0, "access_subtype:"

    .line 579
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v0, p0, Lu/aly/bh;->j:Ljava/lang/String;

    if-eqz v0, :cond_165

    .line 583
    iget-object v0, p0, Lu/aly/bh;->j:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_46

    :cond_15e
    const-string/jumbo v0, ", "

    .line 578
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_14d

    :cond_165
    const-string/jumbo v0, "null"

    .line 581
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_46
.end method
