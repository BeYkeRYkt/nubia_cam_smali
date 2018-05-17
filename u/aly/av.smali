.class public Lu/aly/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bBX:Lu/aly/aO;

.field private static final bBY:Lu/aly/cB;

.field private static final bBZ:Lu/aly/cB;

.field private static final bCa:Lu/aly/cB;

.field private static final bCb:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:Lu/aly/aw;

.field private k:B

.field private l:[Lu/aly/av$e;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v4, 0x0

    const/16 v8, 0xb

    const/16 v6, 0xa

    const/4 v7, 0x2

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "Error"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/av;->bBX:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "ts"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->bBY:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "context"

    invoke-direct {v0, v1, v8, v7}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->bBZ:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "source"

    const/16 v2, 0x8

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/av;->bCa:Lu/aly/cB;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/av;->bCb:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/av;->bCb:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/de;

    invoke-direct {v2, v4}, Lu/aly/de;-><init>(Lu/aly/bG;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/av;->bCb:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/dE;

    invoke-direct {v2, v4}, Lu/aly/dE;-><init>(Lu/aly/bG;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/av$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 128
    sget-object v1, Lu/aly/av$e;->bAz:Lu/aly/av$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "ts"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lu/aly/av$e;->bAA:Lu/aly/av$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "context"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lu/aly/av$e;->bAB:Lu/aly/av$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "source"

    new-instance v4, Lu/aly/cu;

    const-class v5, Lu/aly/aw;

    const/16 v6, 0x10

    invoke-direct {v4, v6, v5}, Lu/aly/cu;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/av;->d:Ljava/util/Map;

    const-class v0, Lu/aly/av;

    .line 135
    sget-object v1, Lu/aly/av;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 136
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-byte v2, p0, Lu/aly/av;->k:B

    const/4 v0, 0x1

    .line 124
    new-array v0, v0, [Lu/aly/av$e;

    sget-object v1, Lu/aly/av$e;->bAB:Lu/aly/av$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/av;->l:[Lu/aly/av$e;

    .line 139
    return-void
.end method

.method static synthetic cbW()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/av;->bBY:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbX()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/av;->bBZ:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic cbY()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/av;->bCa:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic n()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/av;->bBX:Lu/aly/aO;

    return-object v0
.end method


# virtual methods
.method public a(J)Lu/aly/av;
    .registers 4

    .prologue
    .line 182
    iput-wide p1, p0, Lu/aly/av;->a:J

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/av;->cbS(Z)V

    .line 184
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/av;
    .registers 2

    .prologue
    .line 205
    iput-object p1, p0, Lu/aly/av;->b:Ljava/lang/String;

    .line 206
    return-object p0
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 261
    sget-object v0, Lu/aly/av;->bCb:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 262
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 265
    sget-object v0, Lu/aly/av;->bCb:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 266
    return-void
.end method

.method public cbS(Z)V
    .registers 4

    .prologue
    .line 197
    iget-byte v0, p0, Lu/aly/av;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/av;->k:B

    .line 198
    return-void
.end method

.method public cbT(Z)V
    .registers 3

    .prologue
    .line 219
    if-eqz p1, :cond_3

    .line 222
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public cbU(Lu/aly/aw;)Lu/aly/av;
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Lu/aly/av;->c:Lu/aly/aw;

    .line 238
    return-object p0
.end method

.method public cbV(Z)V
    .registers 3

    .prologue
    .line 251
    if-eqz p1, :cond_3

    .line 254
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 252
    iput-object v0, p0, Lu/aly/av;->c:Lu/aly/aw;

    goto :goto_2
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 193
    iget-byte v0, p0, Lu/aly/av;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lu/aly/av;->c:Lu/aly/aw;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public m()V
    .registers 4

    .prologue
    .line 301
    iget-object v0, p0, Lu/aly/av;->b:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 305
    return-void

    .line 302
    :cond_5
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'context\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/av;->toString()Ljava/lang/String;

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
    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Error("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ts:"

    .line 273
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    iget-wide v2, p0, Lu/aly/av;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 276
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "context:"

    .line 277
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    iget-object v1, p0, Lu/aly/av;->b:Ljava/lang/String;

    if-eqz v1, :cond_39

    .line 281
    iget-object v1, p0, Lu/aly/av;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    :goto_28
    invoke-virtual {p0}, Lu/aly/av;->l()Z

    move-result v1

    if-nez v1, :cond_40

    :goto_2e
    const-string/jumbo v1, ")"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    const-string/jumbo v1, "null"

    .line 279
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_28

    :cond_40
    const-string/jumbo v1, ", "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "source:"

    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    iget-object v1, p0, Lu/aly/av;->c:Lu/aly/aw;

    if-eqz v1, :cond_56

    .line 290
    iget-object v1, p0, Lu/aly/av;->c:Lu/aly/aw;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_2e

    :cond_56
    const-string/jumbo v1, "null"

    .line 288
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2e
.end method
