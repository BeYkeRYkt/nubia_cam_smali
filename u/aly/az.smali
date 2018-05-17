.class public Lu/aly/az;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bwi:Lu/aly/aO;

.field private static final bwj:Lu/aly/cB;

.field private static final bwk:Lu/aly/cB;

.field private static final bwl:Lu/aly/cB;

.field private static final bwm:Lu/aly/cB;

.field private static final bwn:Ljava/util/Map;

.field public static final bwo:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private m:B

.field private n:[Lu/aly/az$e;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v3, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "IdJournal"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/az;->bwi:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "domain"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->bwj:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "old_id"

    invoke-direct {v0, v1, v5, v7}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->bwk:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "new_id"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->bwl:Lu/aly/cB;

    .line 38
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "ts"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v8, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/az;->bwm:Lu/aly/cB;

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/az;->bwn:Ljava/util/Map;

    .line 42
    sget-object v0, Lu/aly/az;->bwn:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/aR;

    invoke-direct {v2, v3}, Lu/aly/aR;-><init>(Lu/aly/r;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lu/aly/az;->bwn:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/d;

    invoke-direct {v2, v3}, Lu/aly/d;-><init>(Lu/aly/r;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/az$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 125
    sget-object v1, Lu/aly/az$e;->bwt:Lu/aly/az$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "domain"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v1, Lu/aly/az$e;->bwu:Lu/aly/az$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "old_id"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lu/aly/az$e;->bwv:Lu/aly/az$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "new_id"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lu/aly/az$e;->bww:Lu/aly/az$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "ts"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/az;->bwo:Ljava/util/Map;

    const-class v0, Lu/aly/az;

    .line 134
    sget-object v1, Lu/aly/az;->bwo:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 135
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-byte v2, p0, Lu/aly/az;->m:B

    const/4 v0, 0x1

    .line 121
    new-array v0, v0, [Lu/aly/az$e;

    sget-object v1, Lu/aly/az$e;->bwu:Lu/aly/az$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/az;->n:[Lu/aly/az$e;

    .line 138
    return-void
.end method

.method static synthetic bUo()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/az;->bwi:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic bUp()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/az;->bwj:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bUq()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/az;->bwk:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bUr()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/az;->bwl:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bUs()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/az;->bwm:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(J)Lu/aly/az;
    .registers 4

    .prologue
    .line 259
    iput-wide p1, p0, Lu/aly/az;->d:J

    .line 260
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/az;->bUm(Z)V

    .line 261
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/az;
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lu/aly/az;->a:Ljava/lang/String;

    .line 188
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 201
    if-eqz p1, :cond_3

    .line 204
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 202
    iput-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public b(Ljava/lang/String;)Lu/aly/az;
    .registers 2

    .prologue
    .line 211
    iput-object p1, p0, Lu/aly/az;->b:Ljava/lang/String;

    .line 212
    return-object p0
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 282
    sget-object v0, Lu/aly/az;->bwn:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 283
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 286
    sget-object v0, Lu/aly/az;->bwn:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 287
    return-void
.end method

.method public bUi(Z)V
    .registers 3

    .prologue
    .line 225
    if-eqz p1, :cond_3

    .line 228
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 226
    iput-object v0, p0, Lu/aly/az;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public bUj(Ljava/lang/String;)Lu/aly/az;
    .registers 2

    .prologue
    .line 235
    iput-object p1, p0, Lu/aly/az;->c:Ljava/lang/String;

    .line 236
    return-object p0
.end method

.method public bUk(Z)V
    .registers 3

    .prologue
    .line 249
    if-eqz p1, :cond_3

    .line 252
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public bUl()Z
    .registers 3

    .prologue
    .line 270
    iget-byte v0, p0, Lu/aly/az;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public bUm(Z)V
    .registers 4

    .prologue
    .line 274
    iget-byte v0, p0, Lu/aly/az;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/az;->m:B

    .line 275
    return-void
.end method

.method public bUn()V
    .registers 4

    .prologue
    .line 329
    iget-object v0, p0, Lu/aly/az;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 332
    iget-object v0, p0, Lu/aly/az;->c:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 337
    return-void

    .line 330
    :cond_9
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'domain\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/az;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_27
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'new_id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/az;->toString()Ljava/lang/String;

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
    .line 221
    iget-object v0, p0, Lu/aly/az;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "domain:"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object v1, p0, Lu/aly/az;->a:Ljava/lang/String;

    if-eqz v1, :cond_4e

    .line 298
    iget-object v1, p0, Lu/aly/az;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :goto_17
    invoke-virtual {p0}, Lu/aly/az;->i()Z

    move-result v1

    if-nez v1, :cond_55

    :goto_1d
    const-string/jumbo v1, ", "

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "new_id:"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    iget-object v1, p0, Lu/aly/az;->c:Ljava/lang/String;

    if-eqz v1, :cond_72

    .line 316
    iget-object v1, p0, Lu/aly/az;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const-string/jumbo v1, ", "

    .line 319
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ts:"

    .line 320
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    iget-wide v2, p0, Lu/aly/az;->d:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4e
    const-string/jumbo v1, "null"

    .line 296
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_55
    const-string/jumbo v1, ", "

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "old_id:"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget-object v1, p0, Lu/aly/az;->b:Ljava/lang/String;

    if-eqz v1, :cond_6b

    .line 307
    iget-object v1, p0, Lu/aly/az;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_6b
    const-string/jumbo v1, "null"

    .line 305
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    :cond_72
    const-string/jumbo v1, "null"

    .line 314
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32
.end method
