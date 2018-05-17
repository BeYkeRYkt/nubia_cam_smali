.class public Lu/aly/bb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final btA:Lu/aly/aO;

.field private static final btB:Lu/aly/cB;

.field private static final btC:Lu/aly/cB;

.field private static final btD:Lu/aly/cB;

.field private static final btE:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/String;

.field private j:[Lu/aly/bb$e;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x2

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "IdTracking"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bb;->btA:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "snapshots"

    invoke-direct {v0, v1, v12, v10}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->btB:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->btC:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bb;->btD:Lu/aly/cB;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bb;->btE:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/bb;->btE:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/cQ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/cQ;-><init>(Lu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/bb;->btE:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/dI;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/dI;-><init>(Lu/aly/cc;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bb$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 118
    sget-object v1, Lu/aly/bb$e;->bzS:Lu/aly/bb$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "snapshots"

    new-instance v4, Lu/aly/cy;

    new-instance v5, Lu/aly/cw;

    invoke-direct {v5, v9}, Lu/aly/cw;-><init>(B)V

    new-instance v6, Lu/aly/da;

    const-class v7, Lu/aly/ba;

    invoke-direct {v6, v11, v7}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/cy;-><init>(BLu/aly/cw;Lu/aly/cw;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lu/aly/bb$e;->bzT:Lu/aly/bb$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "journals"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/az;

    invoke-direct {v5, v11, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    const/16 v6, 0xf

    invoke-direct {v4, v6, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/bb$e;->bzU:Lu/aly/bb$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "checksum"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v9}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bb;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bb;

    .line 128
    sget-object v1, Lu/aly/bb;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 129
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 114
    new-array v0, v0, [Lu/aly/bb$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bb$e;->bzT:Lu/aly/bb$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bb$e;->bzU:Lu/aly/bb$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bb;->j:[Lu/aly/bb$e;

    .line 132
    return-void
.end method

.method static synthetic bQR()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bb;->btA:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic bQS()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bb;->btB:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bQT()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bb;->btC:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bQU()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bb;->btD:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/List;)Lu/aly/bb;
    .registers 2

    .prologue
    .line 238
    iput-object p1, p0, Lu/aly/bb;->b:Ljava/util/List;

    .line 239
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 213
    if-eqz p1, :cond_3

    .line 216
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lu/aly/bb;->a:Ljava/util/Map;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 286
    sget-object v0, Lu/aly/bb;->btE:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 287
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 290
    sget-object v0, Lu/aly/bb;->btE:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 291
    return-void
.end method

.method public bQM(Ljava/util/Map;)Lu/aly/bb;
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lu/aly/bb;->a:Ljava/util/Map;

    .line 200
    return-object p0
.end method

.method public bQN(Z)V
    .registers 3

    .prologue
    .line 252
    if-eqz p1, :cond_3

    .line 255
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 253
    iput-object v0, p0, Lu/aly/bb;->b:Ljava/util/List;

    goto :goto_2
.end method

.method public bQO()Z
    .registers 2

    .prologue
    .line 272
    iget-object v0, p0, Lu/aly/bb;->c:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bQP(Z)V
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
    iput-object v0, p0, Lu/aly/bb;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQQ()V
    .registers 4

    .prologue
    .line 331
    iget-object v0, p0, Lu/aly/bb;->a:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 335
    return-void

    .line 332
    :cond_5
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bb;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d()Ljava/util/Map;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lu/aly/bb;->a:Ljava/util/Map;

    return-object v0
.end method

.method public j()Ljava/util/List;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lu/aly/bb;->b:Ljava/util/List;

    return-object v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 248
    iget-object v0, p0, Lu/aly/bb;->b:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "snapshots:"

    .line 298
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-object v1, p0, Lu/aly/bb;->a:Ljava/util/Map;

    if-eqz v1, :cond_2e

    .line 302
    iget-object v1, p0, Lu/aly/bb;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 305
    :goto_17
    invoke-virtual {p0}, Lu/aly/bb;->l()Z

    move-result v1

    if-nez v1, :cond_35

    .line 315
    :goto_1d
    invoke-virtual {p0}, Lu/aly/bb;->bQO()Z

    move-result v1

    if-nez v1, :cond_52

    :goto_23
    const-string/jumbo v1, ")"

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2e
    const-string/jumbo v1, "null"

    .line 300
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_35
    const-string/jumbo v1, ", "

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "journals:"

    .line 307
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    iget-object v1, p0, Lu/aly/bb;->b:Ljava/util/List;

    if-eqz v1, :cond_4b

    .line 311
    iget-object v1, p0, Lu/aly/bb;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_4b
    const-string/jumbo v1, "null"

    .line 309
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_52
    const-string/jumbo v1, ", "

    .line 316
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checksum:"

    .line 317
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lu/aly/bb;->c:Ljava/lang/String;

    if-eqz v1, :cond_68

    .line 321
    iget-object v1, p0, Lu/aly/bb;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_68
    const-string/jumbo v1, "null"

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23
.end method
