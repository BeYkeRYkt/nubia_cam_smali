.class public Lu/aly/bd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bCc:Lu/aly/aO;

.field private static final bCd:Lu/aly/cB;

.field private static final bCe:Lu/aly/cB;

.field private static final bCf:Lu/aly/cB;

.field private static final bCg:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private k:B

.field private l:[Lu/aly/bd$e;


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

    const-string/jumbo v1, "ImprintValue"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bd;->bCc:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "value"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->bCd:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "ts"

    invoke-direct {v0, v1, v8, v7}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->bCe:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "guid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bd;->bCf:Lu/aly/cB;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bd;->bCg:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/bd;->bCg:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/y;

    invoke-direct {v2, v3}, Lu/aly/y;-><init>(Lu/aly/aG;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/bd;->bCg:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/cA;

    invoke-direct {v2, v3}, Lu/aly/cA;-><init>(Lu/aly/aG;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bd$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lu/aly/bd$e;->bxL:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "value"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lu/aly/bd$e;->bxM:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "ts"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu/aly/bd$e;->bxN:Lu/aly/bd$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "guid"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bd;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bd;

    .line 127
    sget-object v1, Lu/aly/bd;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 128
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput-byte v2, p0, Lu/aly/bd;->k:B

    const/4 v0, 0x1

    .line 116
    new-array v0, v0, [Lu/aly/bd$e;

    sget-object v1, Lu/aly/bd$e;->bxL:Lu/aly/bd$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bd;->l:[Lu/aly/bd$e;

    .line 131
    return-void
.end method

.method static synthetic ccc()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bd;->bCd:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic ccd()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bd;->bCe:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cce()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bd;->bCf:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic n()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bd;->bCc:Lu/aly/aO;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 188
    if-eqz p1, :cond_3

    .line 191
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 189
    iput-object v0, p0, Lu/aly/bd;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 245
    sget-object v0, Lu/aly/bd;->bCg:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 246
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 249
    sget-object v0, Lu/aly/bd;->bCg:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 250
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public cca(Z)V
    .registers 4

    .prologue
    .line 213
    iget-byte v0, p0, Lu/aly/bd;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bd;->k:B

    .line 214
    return-void
.end method

.method public ccb(Z)V
    .registers 3

    .prologue
    .line 235
    if-eqz p1, :cond_3

    .line 238
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()J
    .registers 3

    .prologue
    .line 194
    iget-wide v0, p0, Lu/aly/bd;->b:J

    return-wide v0
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 209
    iget-byte v0, p0, Lu/aly/bd;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .registers 4

    .prologue
    .line 285
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 289
    return-void

    .line 286
    :cond_5
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'guid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bd;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 254
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ImprintValue("

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 257
    invoke-virtual {p0}, Lu/aly/bd;->e()Z

    move-result v3

    if-nez v3, :cond_3d

    .line 266
    :goto_10
    if-eqz v0, :cond_55

    :goto_12
    const-string/jumbo v0, "ts:"

    .line 267
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 268
    iget-wide v0, p0, Lu/aly/bd;->b:J

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, ", "

    .line 270
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "guid:"

    .line 271
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 275
    iget-object v0, p0, Lu/aly/bd;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_32
    const-string/jumbo v0, ")"

    .line 278
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3d
    const-string/jumbo v0, "value:"

    .line 258
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/lang/String;

    if-eqz v0, :cond_4e

    .line 262
    iget-object v0, p0, Lu/aly/bd;->a:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4c
    move v0, v1

    .line 264
    goto :goto_10

    :cond_4e
    const-string/jumbo v0, "null"

    .line 260
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4c

    :cond_55
    const-string/jumbo v0, ", "

    .line 266
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_12

    :cond_5c
    const-string/jumbo v0, "null"

    .line 273
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_32
.end method