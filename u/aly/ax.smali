.class public Lu/aly/ax;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bzg:Lu/aly/aO;

.field private static final bzh:Lu/aly/cB;

.field private static final bzi:Lu/aly/cB;

.field private static final bzj:Lu/aly/cB;

.field private static final bzk:Lu/aly/cB;

.field private static final bzl:Lu/aly/cB;

.field private static final bzm:Ljava/util/Map;

.field public static final bzn:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/util/Map;

.field public c:J

.field public d:I

.field public e:J

.field private q:B

.field private r:[Lu/aly/ax$e;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/16 v12, 0x8

    const/16 v6, 0xb

    const/4 v11, 0x2

    const/16 v10, 0xa

    const/4 v9, 0x1

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "Event"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ax;->bzg:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "name"

    invoke-direct {v0, v1, v6, v9}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->bzh:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "properties"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2, v11}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->bzi:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "duration"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->bzj:Lu/aly/cB;

    .line 38
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "acc"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v12, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->bzk:Lu/aly/cB;

    .line 39
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "ts"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v10, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ax;->bzl:Lu/aly/cB;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ax;->bzm:Ljava/util/Map;

    .line 43
    sget-object v0, Lu/aly/ax;->bzm:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/w;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/w;-><init>(Lu/aly/aM;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lu/aly/ax;->bzm:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/ab;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/ab;-><init>(Lu/aly/aM;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ax$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 132
    sget-object v1, Lu/aly/ax$e;->byJ:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "name"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lu/aly/ax$e;->byK:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "properties"

    new-instance v4, Lu/aly/cy;

    new-instance v5, Lu/aly/cw;

    invoke-direct {v5, v6}, Lu/aly/cw;-><init>(B)V

    new-instance v6, Lu/aly/da;

    const-class v7, Lu/aly/bj;

    const/16 v8, 0xc

    invoke-direct {v6, v8, v7}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    const/16 v7, 0xd

    invoke-direct {v4, v7, v5, v6}, Lu/aly/cy;-><init>(BLu/aly/cw;Lu/aly/cw;)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lu/aly/ax$e;->byL:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "duration"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v10}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v11, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lu/aly/ax$e;->byM:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "acc"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v12}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v11, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lu/aly/ax$e;->byN:Lu/aly/ax$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "ts"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v10}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ax;->bzn:Ljava/util/Map;

    const-class v0, Lu/aly/ax;

    .line 145
    sget-object v1, Lu/aly/ax;->bzn:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 146
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput-byte v2, p0, Lu/aly/ax;->q:B

    const/4 v0, 0x2

    .line 128
    new-array v0, v0, [Lu/aly/ax$e;

    sget-object v1, Lu/aly/ax$e;->byL:Lu/aly/ax$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/ax$e;->byM:Lu/aly/ax$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/ax;->r:[Lu/aly/ax$e;

    .line 149
    return-void
.end method

.method static synthetic bYA()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->bzi:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bYB()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->bzj:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bYC()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->bzk:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bYD()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->bzl:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bYy()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->bzg:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic bYz()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ax;->bzh:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/ax;
    .registers 3

    .prologue
    .line 294
    iput p1, p0, Lu/aly/ax;->d:I

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->bYt(Z)V

    .line 296
    return-object p0
.end method

.method public a(J)Lu/aly/ax;
    .registers 4

    .prologue
    .line 271
    iput-wide p1, p0, Lu/aly/ax;->c:J

    .line 272
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->bYr(Z)V

    .line 273
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/ax;
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    .line 213
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 226
    if-eqz p1, :cond_3

    .line 229
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 340
    sget-object v0, Lu/aly/ax;->bzm:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 341
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 344
    sget-object v0, Lu/aly/ax;->bzm:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 345
    return-void
.end method

.method public bYp(Ljava/util/Map;)Lu/aly/ax;
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    .line 248
    return-object p0
.end method

.method public bYq(Z)V
    .registers 3

    .prologue
    .line 261
    if-eqz p1, :cond_3

    .line 264
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    goto :goto_2
.end method

.method public bYr(Z)V
    .registers 4

    .prologue
    .line 286
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 287
    return-void
.end method

.method public bYs()Z
    .registers 3

    .prologue
    .line 305
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bYt(Z)V
    .registers 4

    .prologue
    .line 309
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 310
    return-void
.end method

.method public bYu(J)Lu/aly/ax;
    .registers 4

    .prologue
    .line 317
    iput-wide p1, p0, Lu/aly/ax;->e:J

    .line 318
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ax;->bYw(Z)V

    .line 319
    return-object p0
.end method

.method public bYv()Z
    .registers 3

    .prologue
    .line 328
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bYw(Z)V
    .registers 4

    .prologue
    .line 332
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x2

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/ax;->q:B

    .line 333
    return-void
.end method

.method public bYx()V
    .registers 4

    .prologue
    .line 389
    iget-object v0, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 392
    iget-object v0, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-eqz v0, :cond_27

    .line 397
    return-void

    .line 390
    :cond_9
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 393
    :cond_27
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'properties\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ax;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Z
    .registers 3

    .prologue
    .line 282
    iget-byte v0, p0, Lu/aly/ax;->q:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Event("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "name:"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    if-eqz v1, :cond_54

    .line 356
    iget-object v1, p0, Lu/aly/ax;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    const-string/jumbo v1, ", "

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "properties:"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    if-eqz v1, :cond_5b

    .line 364
    iget-object v1, p0, Lu/aly/ax;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 367
    :goto_2c
    invoke-virtual {p0}, Lu/aly/ax;->m()Z

    move-result v1

    if-nez v1, :cond_62

    .line 373
    :goto_32
    invoke-virtual {p0}, Lu/aly/ax;->bYs()Z

    move-result v1

    if-nez v1, :cond_74

    :goto_38
    const-string/jumbo v1, ", "

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ts:"

    .line 380
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    iget-wide v2, p0, Lu/aly/ax;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    .line 383
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_54
    const-string/jumbo v1, "null"

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_5b
    const-string/jumbo v1, "null"

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c

    :cond_62
    const-string/jumbo v1, ", "

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "duration:"

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    iget-wide v2, p0, Lu/aly/ax;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_32

    :cond_74
    const-string/jumbo v1, ", "

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "acc:"

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    iget v1, p0, Lu/aly/ax;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_38
.end method
