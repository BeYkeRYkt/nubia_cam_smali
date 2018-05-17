.class public Lu/aly/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bBA:Lu/aly/cB;

.field private static final bBB:Lu/aly/cB;

.field private static final bBC:Lu/aly/cB;

.field private static final bBD:Lu/aly/cB;

.field private static final bBE:Lu/aly/cB;

.field private static final bBF:Ljava/util/Map;

.field public static final bBG:Ljava/util/Map;

.field private static final bBu:Lu/aly/aO;

.field private static final bBv:Lu/aly/cB;

.field private static final bBw:Lu/aly/cB;

.field private static final bBx:Lu/aly/cB;

.field private static final bBy:Lu/aly/cB;

.field private static final bBz:Lu/aly/cB;


# instance fields
.field private B:B

.field private C:[Lu/aly/br$e;

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/nio/ByteBuffer;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x2

    const/16 v7, 0x8

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 32
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "UMEnvelope"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/br;->bBu:Lu/aly/aO;

    .line 34
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "version"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBv:Lu/aly/cB;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "address"

    invoke-direct {v0, v1, v5, v8}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBw:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "signature"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBx:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "serial_num"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBy:Lu/aly/cB;

    .line 38
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "ts_secs"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBz:Lu/aly/cB;

    .line 39
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "length"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBA:Lu/aly/cB;

    .line 40
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "entity"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBB:Lu/aly/cB;

    .line 41
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "guid"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBC:Lu/aly/cB;

    .line 42
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "checksum"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBD:Lu/aly/cB;

    .line 43
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "codex"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/br;->bBE:Lu/aly/cB;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/br;->bBF:Ljava/util/Map;

    .line 47
    sget-object v0, Lu/aly/br;->bBF:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/dn;

    invoke-direct {v2, v3}, Lu/aly/dn;-><init>(Lu/aly/cz;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lu/aly/br;->bBF:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/bK;

    invoke-direct {v2, v3}, Lu/aly/bK;-><init>(Lu/aly/cz;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/br$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 157
    sget-object v1, Lu/aly/br$e;->bzG:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "version"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lu/aly/br$e;->bzH:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "address"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v1, Lu/aly/br$e;->bzI:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "signature"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v1, Lu/aly/br$e;->bzJ:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "serial_num"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v1, Lu/aly/br$e;->bzK:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "ts_secs"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v1, Lu/aly/br$e;->bzL:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "length"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v1, Lu/aly/br$e;->bzM:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "entity"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5, v6}, Lu/aly/cw;-><init>(BZ)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v1, Lu/aly/br$e;->bzN:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "guid"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v1, Lu/aly/br$e;->bzO:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "checksum"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v1, Lu/aly/br$e;->bzP:Lu/aly/br$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "codex"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/br;->bBG:Ljava/util/Map;

    const-class v0, Lu/aly/br;

    .line 178
    sget-object v1, Lu/aly/br;->bBG:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 179
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-byte v2, p0, Lu/aly/br;->B:B

    const/4 v0, 0x1

    .line 153
    new-array v0, v0, [Lu/aly/br$e;

    sget-object v1, Lu/aly/br$e;->bzP:Lu/aly/br$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/br;->C:[Lu/aly/br$e;

    .line 182
    return-void
.end method

.method static synthetic cbA()Lu/aly/aO;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBu:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic cbB()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBv:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbC()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBw:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbD()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBx:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbE()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBy:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbF()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBz:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbG()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBA:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbH()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBB:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbI()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBC:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbJ()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBD:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbK()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/br;->bBE:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/br;
    .registers 3

    .prologue
    .line 339
    iput p1, p0, Lu/aly/br;->d:I

    .line 340
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/br;->cbj(Z)V

    .line 341
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/br;
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lu/aly/br;->a:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public a([B)Lu/aly/br;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 413
    if-eqz p1, :cond_b

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    :goto_7
    invoke-virtual {p0, v0}, Lu/aly/br;->cbq(Ljava/nio/ByteBuffer;)Lu/aly/br;

    .line 414
    return-object p0

    .line 413
    :cond_b
    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_7
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 281
    if-eqz p1, :cond_3

    .line 284
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lu/aly/br;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lu/aly/br;
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lu/aly/br;->b:Ljava/lang/String;

    .line 292
    return-object p0
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 513
    sget-object v0, Lu/aly/br;->bBF:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 514
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 517
    sget-object v0, Lu/aly/br;->bBF:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 518
    return-void
.end method

.method public cbf(Z)V
    .registers 3

    .prologue
    .line 305
    if-eqz p1, :cond_3

    .line 308
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lu/aly/br;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public cbg(Ljava/lang/String;)Lu/aly/br;
    .registers 2

    .prologue
    .line 315
    iput-object p1, p0, Lu/aly/br;->c:Ljava/lang/String;

    .line 316
    return-object p0
.end method

.method public cbh(Z)V
    .registers 3

    .prologue
    .line 329
    if-eqz p1, :cond_3

    .line 332
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 330
    iput-object v0, p0, Lu/aly/br;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public cbi()Z
    .registers 3

    .prologue
    .line 350
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public cbj(Z)V
    .registers 4

    .prologue
    .line 354
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/br;->B:B

    .line 355
    return-void
.end method

.method public cbk(I)Lu/aly/br;
    .registers 3

    .prologue
    .line 362
    iput p1, p0, Lu/aly/br;->e:I

    .line 363
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/br;->cbm(Z)V

    .line 364
    return-object p0
.end method

.method public cbl()Z
    .registers 3

    .prologue
    .line 373
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public cbm(Z)V
    .registers 4

    .prologue
    .line 377
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/br;->B:B

    .line 378
    return-void
.end method

.method public cbn(I)Lu/aly/br;
    .registers 3

    .prologue
    .line 385
    iput p1, p0, Lu/aly/br;->f:I

    .line 386
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/br;->cbp(Z)V

    .line 387
    return-object p0
.end method

.method public cbo()Z
    .registers 3

    .prologue
    .line 396
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public cbp(Z)V
    .registers 4

    .prologue
    .line 400
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/br;->B:B

    .line 401
    return-void
.end method

.method public cbq(Ljava/nio/ByteBuffer;)Lu/aly/br;
    .registers 2

    .prologue
    .line 418
    iput-object p1, p0, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    .line 419
    return-object p0
.end method

.method public cbr(Z)V
    .registers 3

    .prologue
    .line 432
    if-eqz p1, :cond_3

    .line 435
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 433
    iput-object v0, p0, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    goto :goto_2
.end method

.method public cbs(Ljava/lang/String;)Lu/aly/br;
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lu/aly/br;->h:Ljava/lang/String;

    .line 443
    return-object p0
.end method

.method public cbt(Z)V
    .registers 3

    .prologue
    .line 456
    if-eqz p1, :cond_3

    .line 459
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 457
    iput-object v0, p0, Lu/aly/br;->h:Ljava/lang/String;

    goto :goto_2
.end method

.method public cbu(Ljava/lang/String;)Lu/aly/br;
    .registers 2

    .prologue
    .line 466
    iput-object p1, p0, Lu/aly/br;->i:Ljava/lang/String;

    .line 467
    return-object p0
.end method

.method public cbv(Z)V
    .registers 3

    .prologue
    .line 480
    if-eqz p1, :cond_3

    .line 483
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 481
    iput-object v0, p0, Lu/aly/br;->i:Ljava/lang/String;

    goto :goto_2
.end method

.method public cbw(I)Lu/aly/br;
    .registers 3

    .prologue
    .line 490
    iput p1, p0, Lu/aly/br;->j:I

    .line 491
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/br;->cby(Z)V

    .line 492
    return-object p0
.end method

.method public cbx()Z
    .registers 3

    .prologue
    .line 501
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public cby(Z)V
    .registers 4

    .prologue
    .line 505
    iget-byte v0, p0, Lu/aly/br;->B:B

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/br;->B:B

    .line 506
    return-void
.end method

.method public cbz()V
    .registers 4

    .prologue
    .line 596
    iget-object v0, p0, Lu/aly/br;->a:Ljava/lang/String;

    if-eqz v0, :cond_19

    .line 599
    iget-object v0, p0, Lu/aly/br;->b:Ljava/lang/String;

    if-eqz v0, :cond_37

    .line 602
    iget-object v0, p0, Lu/aly/br;->c:Ljava/lang/String;

    if-eqz v0, :cond_55

    .line 608
    iget-object v0, p0, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_73

    .line 611
    iget-object v0, p0, Lu/aly/br;->h:Ljava/lang/String;

    if-eqz v0, :cond_91

    .line 614
    iget-object v0, p0, Lu/aly/br;->i:Ljava/lang/String;

    if-eqz v0, :cond_af

    .line 618
    return-void

    .line 597
    :cond_19
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'version\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 600
    :cond_37
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'address\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_55
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'signature\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 609
    :cond_73
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'entity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_91
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 615
    :cond_af
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/br;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "UMEnvelope("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "version:"

    .line 525
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    iget-object v1, p0, Lu/aly/br;->a:Ljava/lang/String;

    if-eqz v1, :cond_c4

    .line 529
    iget-object v1, p0, Lu/aly/br;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    const-string/jumbo v1, ", "

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "address:"

    .line 533
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    iget-object v1, p0, Lu/aly/br;->b:Ljava/lang/String;

    if-eqz v1, :cond_cc

    .line 537
    iget-object v1, p0, Lu/aly/br;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const-string/jumbo v1, ", "

    .line 540
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "signature:"

    .line 541
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    iget-object v1, p0, Lu/aly/br;->c:Ljava/lang/String;

    if-eqz v1, :cond_d4

    .line 545
    iget-object v1, p0, Lu/aly/br;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_41
    const-string/jumbo v1, ", "

    .line 548
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "serial_num:"

    .line 549
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 550
    iget v1, p0, Lu/aly/br;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 552
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ts_secs:"

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget v1, p0, Lu/aly/br;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 556
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "length:"

    .line 557
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    iget v1, p0, Lu/aly/br;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 560
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "entity:"

    .line 561
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    iget-object v1, p0, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_dc

    .line 565
    iget-object v1, p0, Lu/aly/br;->g:Ljava/nio/ByteBuffer;

    invoke-static {v1, v0}, Lu/aly/p;->bRC(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :goto_89
    const-string/jumbo v1, ", "

    .line 568
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "guid:"

    .line 569
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    iget-object v1, p0, Lu/aly/br;->h:Ljava/lang/String;

    if-eqz v1, :cond_e3

    .line 573
    iget-object v1, p0, Lu/aly/br;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_9e
    const-string/jumbo v1, ", "

    .line 576
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checksum:"

    .line 577
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 578
    iget-object v1, p0, Lu/aly/br;->i:Ljava/lang/String;

    if-eqz v1, :cond_ea

    .line 581
    iget-object v1, p0, Lu/aly/br;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    :goto_b3
    invoke-virtual {p0}, Lu/aly/br;->cbx()Z

    move-result v1

    if-nez v1, :cond_f1

    :goto_b9
    const-string/jumbo v1, ")"

    .line 590
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_c4
    const-string/jumbo v1, "null"

    .line 527
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_17

    :cond_cc
    const-string/jumbo v1, "null"

    .line 535
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2c

    :cond_d4
    const-string/jumbo v1, "null"

    .line 543
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_41

    :cond_dc
    const-string/jumbo v1, "null"

    .line 563
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_89

    :cond_e3
    const-string/jumbo v1, "null"

    .line 571
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9e

    :cond_ea
    const-string/jumbo v1, "null"

    .line 579
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b3

    :cond_f1
    const-string/jumbo v1, ", "

    .line 585
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "codex:"

    .line 586
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 587
    iget v1, p0, Lu/aly/br;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_b9
.end method
