.class public Lu/aly/bc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bAk:Lu/aly/aO;

.field private static final bAl:Lu/aly/cB;

.field private static final bAm:Lu/aly/cB;

.field private static final bAn:Lu/aly/cB;

.field private static final bAo:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# instance fields
.field public a:Ljava/util/Map;

.field public b:I

.field public c:Ljava/lang/String;

.field private k:B


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .prologue
    const/4 v3, 0x0

    const/16 v12, 0xd

    const/16 v11, 0x8

    const/16 v10, 0xb

    const/4 v9, 0x1

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "Imprint"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bc;->bAk:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "property"

    invoke-direct {v0, v1, v12, v9}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->bAl:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v11, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->bAm:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bc;->bAn:Lu/aly/cB;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bc;->bAo:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/bc;->bAo:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/bB;

    invoke-direct {v2, v3}, Lu/aly/bB;-><init>(Lu/aly/V;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/bc;->bAo:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/n;

    invoke-direct {v2, v3}, Lu/aly/n;-><init>(Lu/aly/V;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bc$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 119
    sget-object v1, Lu/aly/bc$e;->buY:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "property"

    new-instance v4, Lu/aly/cy;

    new-instance v5, Lu/aly/cw;

    invoke-direct {v5, v10}, Lu/aly/cw;-><init>(B)V

    new-instance v6, Lu/aly/da;

    const-class v7, Lu/aly/bd;

    const/16 v8, 0xc

    invoke-direct {v6, v8, v7}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/cy;-><init>(BLu/aly/cw;Lu/aly/cw;)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v1, Lu/aly/bc$e;->buZ:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "version"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v11}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v1, Lu/aly/bc$e;->bva:Lu/aly/bc$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "checksum"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v10}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bc;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bc;

    .line 128
    sget-object v1, Lu/aly/bc;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 129
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bc;->k:B

    .line 132
    return-void
.end method

.method static synthetic bZA()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bc;->bAl:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bZB()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bc;->bAm:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bZC()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bc;->bAn:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bZz()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bc;->bAk:Lu/aly/aO;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bc;
    .registers 3

    .prologue
    .line 224
    iput p1, p0, Lu/aly/bc;->b:I

    .line 225
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bc;->bZx(Z)V

    .line 226
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bc;
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lu/aly/bc;->c:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 214
    if-eqz p1, :cond_3

    .line 217
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 215
    iput-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 271
    sget-object v0, Lu/aly/bc;->bAo:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 272
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 275
    sget-object v0, Lu/aly/bc;->bAo:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 276
    return-void
.end method

.method public bZx(Z)V
    .registers 4

    .prologue
    .line 239
    iget-byte v0, p0, Lu/aly/bc;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bc;->k:B

    .line 240
    return-void
.end method

.method public bZy(Z)V
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
    iput-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    goto :goto_2
.end method

.method public d()Ljava/util/Map;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    return-object v0
.end method

.method public f()Z
    .registers 2

    .prologue
    .line 210
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public h()I
    .registers 2

    .prologue
    .line 220
    iget v0, p0, Lu/aly/bc;->b:I

    return v0
.end method

.method public j()Z
    .registers 3

    .prologue
    .line 235
    iget-byte v0, p0, Lu/aly/bc;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 243
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .registers 4

    .prologue
    .line 308
    iget-object v0, p0, Lu/aly/bc;->a:Ljava/util/Map;

    if-eqz v0, :cond_9

    .line 312
    iget-object v0, p0, Lu/aly/bc;->c:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 316
    return-void

    .line 309
    :cond_9
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_27
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bc;->toString()Ljava/lang/String;

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
    .line 280
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "property:"

    .line 283
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/util/Map;

    if-eqz v1, :cond_48

    .line 287
    iget-object v1, p0, Lu/aly/bc;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_17
    const-string/jumbo v1, ", "

    .line 290
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "version:"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget v1, p0, Lu/aly/bc;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "checksum:"

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lu/aly/bc;->c:Ljava/lang/String;

    if-eqz v1, :cond_4f

    .line 299
    iget-object v1, p0, Lu/aly/bc;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3d
    const-string/jumbo v1, ")"

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_48
    const-string/jumbo v1, "null"

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_4f
    const-string/jumbo v1, "null"

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3d
.end method
