.class public Lu/aly/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final byk:Lu/aly/aO;

.field private static final byl:Lu/aly/cB;

.field private static final bym:Lu/aly/cB;

.field private static final byn:Lu/aly/cB;

.field private static final byo:Lu/aly/cB;

.field private static final byp:Ljava/util/Map;

.field public static final byq:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/List;

.field public c:Ljava/util/List;

.field public d:Ljava/util/List;

.field private l:[Lu/aly/be$e;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v6, 0xb

    const/4 v5, 0x1

    const/16 v9, 0xc

    const/4 v8, 0x2

    const/16 v7, 0xf

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "InstantMsg"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/be;->byk:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "id"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->byl:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "errors"

    invoke-direct {v0, v1, v7, v8}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->bym:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "events"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->byn:Lu/aly/cB;

    .line 38
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "game_events"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/be;->byo:Lu/aly/cB;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/be;->byp:Ljava/util/Map;

    .line 42
    sget-object v0, Lu/aly/be;->byp:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/cF;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/cF;-><init>(Lu/aly/dJ;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/be;->byp:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/cZ;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/cZ;-><init>(Lu/aly/dJ;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/be$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lu/aly/be$e;->bAY:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "id"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/be$e;->bAZ:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "errors"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/av;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lu/aly/be$e;->bBa:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "events"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/ax;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/be$e;->bBb:Lu/aly/be$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "game_events"

    new-instance v4, Lu/aly/cx;

    new-instance v5, Lu/aly/da;

    const-class v6, Lu/aly/ax;

    invoke-direct {v5, v9, v6}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v7, v5}, Lu/aly/cx;-><init>(BLu/aly/cw;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/be;->byq:Ljava/util/Map;

    const-class v0, Lu/aly/be;

    .line 135
    sget-object v1, Lu/aly/be;->byq:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 119
    new-array v0, v0, [Lu/aly/be$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/be$e;->bAZ:Lu/aly/be$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/be$e;->bBa:Lu/aly/be$e;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lu/aly/be$e;->bBb:Lu/aly/be$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/be;->l:[Lu/aly/be$e;

    .line 139
    return-void
.end method

.method static synthetic bXA()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->byn:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bXB()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->byo:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bXx()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->byk:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic bXy()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->byl:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bXz()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/be;->bym:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lu/aly/be;
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lu/aly/be;->a:Ljava/lang/String;

    .line 196
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 209
    if-eqz p1, :cond_3

    .line 212
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 336
    sget-object v0, Lu/aly/be;->byp:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 337
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 340
    sget-object v0, Lu/aly/be;->byp:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 341
    return-void
.end method

.method public bXm(Lu/aly/av;)V
    .registers 3

    .prologue
    .line 223
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 226
    :goto_4
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    return-void

    .line 224
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    goto :goto_4
.end method

.method public bXn(Z)V
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
    iput-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    goto :goto_2
.end method

.method public bXo(Lu/aly/ax;)V
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 265
    :goto_4
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-void

    .line 263
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    goto :goto_4
.end method

.method public bXp()Z
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bXq(Z)V
    .registers 3

    .prologue
    .line 287
    if-eqz p1, :cond_3

    .line 290
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    goto :goto_2
.end method

.method public bXr()I
    .registers 2

    .prologue
    .line 293
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public bXs(Lu/aly/ax;)V
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 304
    :goto_4
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 305
    return-void

    .line 302
    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    goto :goto_4
.end method

.method public bXt()Ljava/util/List;
    .registers 2

    .prologue
    .line 308
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    return-object v0
.end method

.method public bXu()Z
    .registers 2

    .prologue
    .line 322
    iget-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public bXv(Z)V
    .registers 3

    .prologue
    .line 326
    if-eqz p1, :cond_3

    .line 329
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 327
    iput-object v0, p0, Lu/aly/be;->d:Ljava/util/List;

    goto :goto_2
.end method

.method public bXw()V
    .registers 4

    .prologue
    .line 391
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 395
    return-void

    .line 392
    :cond_5
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/be;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lu/aly/be;->a:Ljava/lang/String;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 244
    iget-object v0, p0, Lu/aly/be;->b:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public l()I
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public n()Ljava/util/List;
    .registers 2

    .prologue
    .line 269
    iget-object v0, p0, Lu/aly/be;->c:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "InstantMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "id:"

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object v1, p0, Lu/aly/be;->a:Ljava/lang/String;

    if-eqz v1, :cond_34

    .line 352
    iget-object v1, p0, Lu/aly/be;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :goto_17
    invoke-virtual {p0}, Lu/aly/be;->k()Z

    move-result v1

    if-nez v1, :cond_3b

    .line 365
    :goto_1d
    invoke-virtual {p0}, Lu/aly/be;->bXp()Z

    move-result v1

    if-nez v1, :cond_58

    .line 375
    :goto_23
    invoke-virtual {p0}, Lu/aly/be;->bXu()Z

    move-result v1

    if-nez v1, :cond_75

    :goto_29
    const-string/jumbo v1, ")"

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 386
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_34
    const-string/jumbo v1, "null"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_3b
    const-string/jumbo v1, ", "

    .line 356
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "errors:"

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    iget-object v1, p0, Lu/aly/be;->b:Ljava/util/List;

    if-eqz v1, :cond_51

    .line 361
    iget-object v1, p0, Lu/aly/be;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_51
    const-string/jumbo v1, "null"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_58
    const-string/jumbo v1, ", "

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "events:"

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v1, p0, Lu/aly/be;->c:Ljava/util/List;

    if-eqz v1, :cond_6e

    .line 371
    iget-object v1, p0, Lu/aly/be;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_6e
    const-string/jumbo v1, "null"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_23

    :cond_75
    const-string/jumbo v1, ", "

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "game_events:"

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v1, p0, Lu/aly/be;->d:Ljava/util/List;

    if-eqz v1, :cond_8b

    .line 381
    iget-object v1, p0, Lu/aly/be;->d:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_8b
    const-string/jumbo v1, "null"

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29
.end method
