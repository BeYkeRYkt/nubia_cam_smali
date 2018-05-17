.class public Lu/aly/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bwA:Lu/aly/aO;

.field private static final bwB:Lu/aly/cB;

.field private static final bwC:Lu/aly/cB;

.field private static final bwD:Lu/aly/cB;

.field private static final bwE:Lu/aly/cB;

.field private static final bwF:Lu/aly/cB;

.field private static final bwG:Lu/aly/cB;

.field private static final bwH:Lu/aly/cB;

.field private static final bwI:Lu/aly/cB;

.field private static final bwJ:Lu/aly/cB;

.field private static final bwK:Lu/aly/cB;

.field private static final bwL:Ljava/util/Map;

.field public static final bwM:Ljava/util/Map;


# instance fields
.field private A:[Lu/aly/aq$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Lu/aly/bm;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I

.field private z:B


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    const/4 v3, 0x0

    const/4 v10, 0x1

    const/16 v9, 0x8

    const/4 v8, 0x2

    const/16 v7, 0xb

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "AppInfo"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/aq;->bwA:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "key"

    invoke-direct {v0, v1, v7, v10}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwB:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "version"

    invoke-direct {v0, v1, v7, v8}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwC:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "version_index"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwD:Lu/aly/cB;

    .line 38
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "package_name"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwE:Lu/aly/cB;

    .line 39
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "sdk_type"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwF:Lu/aly/cB;

    .line 40
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "sdk_version"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwG:Lu/aly/cB;

    .line 41
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "channel"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwH:Lu/aly/cB;

    .line 42
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "wrapper_type"

    invoke-direct {v0, v1, v7, v9}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwI:Lu/aly/cB;

    .line 43
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "wrapper_version"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwJ:Lu/aly/cB;

    .line 44
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "vertical_type"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/aq;->bwK:Lu/aly/cB;

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/aq;->bwL:Ljava/util/Map;

    .line 48
    sget-object v0, Lu/aly/aq;->bwL:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/cq;

    invoke-direct {v2, v3}, Lu/aly/cq;-><init>(Lu/aly/ds;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lu/aly/aq;->bwL:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/dc;

    invoke-direct {v2, v3}, Lu/aly/dc;-><init>(Lu/aly/ds;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/aq$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 164
    sget-object v1, Lu/aly/aq$e;->bBf:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "key"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v1, Lu/aly/aq$e;->bBg:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "version"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v1, Lu/aly/aq$e;->bBh:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "version_index"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v9}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v1, Lu/aly/aq$e;->bBi:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "package_name"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    sget-object v1, Lu/aly/aq$e;->bBj:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "sdk_type"

    new-instance v4, Lu/aly/cu;

    const-class v5, Lu/aly/bm;

    const/16 v6, 0x10

    invoke-direct {v4, v6, v5}, Lu/aly/cu;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    sget-object v1, Lu/aly/aq$e;->bBk:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "sdk_version"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v1, Lu/aly/aq$e;->bBl:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "channel"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v1, Lu/aly/aq$e;->bBm:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "wrapper_type"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v1, Lu/aly/aq$e;->bBn:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "wrapper_version"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v1, Lu/aly/aq$e;->bBo:Lu/aly/aq$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "vertical_type"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v9}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/aq;->bwM:Ljava/util/Map;

    const-class v0, Lu/aly/aq;

    .line 185
    sget-object v1, Lu/aly/aq;->bwM:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 186
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-byte v2, p0, Lu/aly/aq;->z:B

    const/4 v0, 0x6

    .line 160
    new-array v0, v0, [Lu/aly/aq$e;

    sget-object v1, Lu/aly/aq$e;->bBg:Lu/aly/aq$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/aq$e;->bBh:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/aq$e;->bBi:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lu/aly/aq$e;->bBm:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lu/aly/aq$e;->bBn:Lu/aly/aq$e;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lu/aly/aq$e;->bBo:Lu/aly/aq$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/aq;->A:[Lu/aly/aq$e;

    .line 189
    return-void
.end method

.method static synthetic bVj()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwA:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic bVk()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwB:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVl()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwC:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVm()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwD:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVn()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwE:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVo()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwF:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVp()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwG:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVq()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwH:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVr()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwI:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVs()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwJ:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVt()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/aq;->bwK:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/aq;
    .registers 3

    .prologue
    .line 310
    iput p1, p0, Lu/aly/aq;->c:I

    .line 311
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/aq;->bUP(Z)V

    .line 312
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lu/aly/aq;->a:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 276
    if-eqz p1, :cond_3

    .line 279
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 277
    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lu/aly/aq;->b:Ljava/lang/String;

    .line 287
    return-object p0
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 508
    sget-object v0, Lu/aly/aq;->bwL:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 509
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 512
    sget-object v0, Lu/aly/aq;->bwL:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 513
    return-void
.end method

.method public bUO(Z)V
    .registers 3

    .prologue
    .line 300
    if-eqz p1, :cond_3

    .line 303
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 301
    iput-object v0, p0, Lu/aly/aq;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public bUP(Z)V
    .registers 4

    .prologue
    .line 325
    iget-byte v0, p0, Lu/aly/aq;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/aq;->z:B

    .line 326
    return-void
.end method

.method public bUQ(Ljava/lang/String;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 333
    iput-object p1, p0, Lu/aly/aq;->d:Ljava/lang/String;

    .line 334
    return-object p0
.end method

.method public bUR()Z
    .registers 2

    .prologue
    .line 343
    iget-object v0, p0, Lu/aly/aq;->d:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bUS(Z)V
    .registers 3

    .prologue
    .line 347
    if-eqz p1, :cond_3

    .line 350
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 348
    iput-object v0, p0, Lu/aly/aq;->d:Ljava/lang/String;

    goto :goto_2
.end method

.method public bUT(Lu/aly/bm;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 365
    iput-object p1, p0, Lu/aly/aq;->e:Lu/aly/bm;

    .line 366
    return-object p0
.end method

.method public bUU(Z)V
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
    iput-object v0, p0, Lu/aly/aq;->e:Lu/aly/bm;

    goto :goto_2
.end method

.method public bUV(Ljava/lang/String;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 389
    iput-object p1, p0, Lu/aly/aq;->f:Ljava/lang/String;

    .line 390
    return-object p0
.end method

.method public bUW(Z)V
    .registers 3

    .prologue
    .line 403
    if-eqz p1, :cond_3

    .line 406
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lu/aly/aq;->f:Ljava/lang/String;

    goto :goto_2
.end method

.method public bUX(Ljava/lang/String;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lu/aly/aq;->g:Ljava/lang/String;

    .line 414
    return-object p0
.end method

.method public bUY(Z)V
    .registers 3

    .prologue
    .line 427
    if-eqz p1, :cond_3

    .line 430
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 428
    iput-object v0, p0, Lu/aly/aq;->g:Ljava/lang/String;

    goto :goto_2
.end method

.method public bUZ(Ljava/lang/String;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 437
    iput-object p1, p0, Lu/aly/aq;->h:Ljava/lang/String;

    .line 438
    return-object p0
.end method

.method public bVa()Z
    .registers 2

    .prologue
    .line 447
    iget-object v0, p0, Lu/aly/aq;->h:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bVb(Z)V
    .registers 3

    .prologue
    .line 451
    if-eqz p1, :cond_3

    .line 454
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 452
    iput-object v0, p0, Lu/aly/aq;->h:Ljava/lang/String;

    goto :goto_2
.end method

.method public bVc(Ljava/lang/String;)Lu/aly/aq;
    .registers 2

    .prologue
    .line 461
    iput-object p1, p0, Lu/aly/aq;->i:Ljava/lang/String;

    .line 462
    return-object p0
.end method

.method public bVd()Z
    .registers 2

    .prologue
    .line 471
    iget-object v0, p0, Lu/aly/aq;->i:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bVe(Z)V
    .registers 3

    .prologue
    .line 475
    if-eqz p1, :cond_3

    .line 478
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lu/aly/aq;->i:Ljava/lang/String;

    goto :goto_2
.end method

.method public bVf(I)Lu/aly/aq;
    .registers 3

    .prologue
    .line 485
    iput p1, p0, Lu/aly/aq;->j:I

    .line 486
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/aq;->bVh(Z)V

    .line 487
    return-object p0
.end method

.method public bVg()Z
    .registers 3

    .prologue
    .line 496
    iget-byte v0, p0, Lu/aly/aq;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bVh(Z)V
    .registers 4

    .prologue
    .line 500
    iget-byte v0, p0, Lu/aly/aq;->z:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/aq;->z:B

    .line 501
    return-void
.end method

.method public bVi()V
    .registers 4

    .prologue
    .line 609
    iget-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 612
    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/bm;

    if-eqz v0, :cond_2f

    .line 615
    iget-object v0, p0, Lu/aly/aq;->f:Ljava/lang/String;

    if-eqz v0, :cond_4d

    .line 618
    iget-object v0, p0, Lu/aly/aq;->g:Ljava/lang/String;

    if-eqz v0, :cond_6b

    .line 622
    return-void

    .line 610
    :cond_11
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'key\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 613
    :cond_2f
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'sdk_type\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 616
    :cond_4d
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'sdk_version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 619
    :cond_6b
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'channel\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/aq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 296
    iget-object v0, p0, Lu/aly/aq;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public l()Z
    .registers 3

    .prologue
    .line 321
    iget-byte v0, p0, Lu/aly/aq;->z:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "AppInfo("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "key:"

    .line 520
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    iget-object v1, p0, Lu/aly/aq;->a:Ljava/lang/String;

    if-eqz v1, :cond_85

    .line 524
    iget-object v1, p0, Lu/aly/aq;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    :goto_17
    invoke-virtual {p0}, Lu/aly/aq;->i()Z

    move-result v1

    if-nez v1, :cond_8c

    .line 537
    :goto_1d
    invoke-virtual {p0}, Lu/aly/aq;->l()Z

    move-result v1

    if-nez v1, :cond_ab

    .line 543
    :goto_23
    invoke-virtual {p0}, Lu/aly/aq;->bUR()Z

    move-result v1

    if-nez v1, :cond_be

    :goto_29
    const-string/jumbo v1, ", "

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sdk_type:"

    .line 554
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    iget-object v1, p0, Lu/aly/aq;->e:Lu/aly/bm;

    if-eqz v1, :cond_dd

    .line 558
    iget-object v1, p0, Lu/aly/aq;->e:Lu/aly/bm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_3e
    const-string/jumbo v1, ", "

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sdk_version:"

    .line 562
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 563
    iget-object v1, p0, Lu/aly/aq;->f:Ljava/lang/String;

    if-eqz v1, :cond_e5

    .line 566
    iget-object v1, p0, Lu/aly/aq;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_53
    const-string/jumbo v1, ", "

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "channel:"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    iget-object v1, p0, Lu/aly/aq;->g:Ljava/lang/String;

    if-eqz v1, :cond_ed

    .line 574
    iget-object v1, p0, Lu/aly/aq;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    :goto_68
    invoke-virtual {p0}, Lu/aly/aq;->bVa()Z

    move-result v1

    if-nez v1, :cond_f5

    .line 587
    :goto_6e
    invoke-virtual {p0}, Lu/aly/aq;->bVd()Z

    move-result v1

    if-nez v1, :cond_114

    .line 597
    :goto_74
    invoke-virtual {p0}, Lu/aly/aq;->bVg()Z

    move-result v1

    if-nez v1, :cond_133

    :goto_7a
    const-string/jumbo v1, ")"

    .line 603
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 604
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_85
    const-string/jumbo v1, "null"

    .line 522
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_8c
    const-string/jumbo v1, ", "

    .line 528
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version:"

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    iget-object v1, p0, Lu/aly/aq;->b:Ljava/lang/String;

    if-eqz v1, :cond_a3

    .line 533
    iget-object v1, p0, Lu/aly/aq;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    :cond_a3
    const-string/jumbo v1, "null"

    .line 531
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1d

    :cond_ab
    const-string/jumbo v1, ", "

    .line 538
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version_index:"

    .line 539
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    iget v1, p0, Lu/aly/aq;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_23

    :cond_be
    const-string/jumbo v1, ", "

    .line 544
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "package_name:"

    .line 545
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    iget-object v1, p0, Lu/aly/aq;->d:Ljava/lang/String;

    if-eqz v1, :cond_d5

    .line 549
    iget-object v1, p0, Lu/aly/aq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    :cond_d5
    const-string/jumbo v1, "null"

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    :cond_dd
    const-string/jumbo v1, "null"

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3e

    :cond_e5
    const-string/jumbo v1, "null"

    .line 564
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_53

    :cond_ed
    const-string/jumbo v1, "null"

    .line 572
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_68

    :cond_f5
    const-string/jumbo v1, ", "

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wrapper_type:"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    iget-object v1, p0, Lu/aly/aq;->h:Ljava/lang/String;

    if-eqz v1, :cond_10c

    .line 583
    iget-object v1, p0, Lu/aly/aq;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6e

    :cond_10c
    const-string/jumbo v1, "null"

    .line 581
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6e

    :cond_114
    const-string/jumbo v1, ", "

    .line 588
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "wrapper_version:"

    .line 589
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 590
    iget-object v1, p0, Lu/aly/aq;->i:Ljava/lang/String;

    if-eqz v1, :cond_12b

    .line 593
    iget-object v1, p0, Lu/aly/aq;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_74

    :cond_12b
    const-string/jumbo v1, "null"

    .line 591
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_74

    :cond_133
    const-string/jumbo v1, ", "

    .line 598
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "vertical_type:"

    .line 599
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 600
    iget v1, p0, Lu/aly/aq;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_7a
.end method
