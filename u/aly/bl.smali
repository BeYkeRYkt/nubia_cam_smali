.class public Lu/aly/bl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bwN:Lu/aly/aO;

.field private static final bwO:Lu/aly/cB;

.field private static final bwP:Lu/aly/cB;

.field private static final bwQ:Lu/aly/cB;

.field private static final bwR:Ljava/util/Map;

.field public static final d:Ljava/util/Map;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lu/aly/bc;

.field private k:B

.field private l:[Lu/aly/bl$e;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "Response"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bl;->bwN:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->bwO:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "msg"

    invoke-direct {v0, v1, v8, v6}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->bwP:Lu/aly/cB;

    .line 37
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "imprint"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->bwQ:Lu/aly/cB;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bl;->bwR:Ljava/util/Map;

    .line 41
    sget-object v0, Lu/aly/bl;->bwR:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/I;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/I;-><init>(Lu/aly/ak;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lu/aly/bl;->bwR:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/aK;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/aK;-><init>(Lu/aly/ak;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bl$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 120
    sget-object v1, Lu/aly/bl$e;->byF:Lu/aly/bl$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "resp_code"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v1, Lu/aly/bl$e;->byG:Lu/aly/bl$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "msg"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v8}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v1, Lu/aly/bl$e;->byH:Lu/aly/bl$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "imprint"

    new-instance v4, Lu/aly/da;

    const-class v5, Lu/aly/bc;

    invoke-direct {v4, v9, v5}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bl;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bl;

    .line 127
    sget-object v1, Lu/aly/bl;->d:Ljava/util/Map;

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
    iput-byte v2, p0, Lu/aly/bl;->k:B

    const/4 v0, 0x2

    .line 116
    new-array v0, v0, [Lu/aly/bl$e;

    sget-object v1, Lu/aly/bl$e;->byG:Lu/aly/bl$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bl$e;->byH:Lu/aly/bl$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bl;->l:[Lu/aly/bl$e;

    .line 131
    return-void
.end method

.method static synthetic bVA()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bl;->bwQ:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVy()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bl;->bwO:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic bVz()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bl;->bwP:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic n()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bl;->bwN:Lu/aly/aO;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 187
    iget-byte v0, p0, Lu/aly/bl;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bl;->k:B

    .line 188
    return-void
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 243
    sget-object v0, Lu/aly/bl;->bwR:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 244
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 247
    sget-object v0, Lu/aly/bl;->bwR:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 248
    return-void
.end method

.method public bVw(Z)V
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
    iput-object v0, p0, Lu/aly/bl;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public bVx(Z)V
    .registers 3

    .prologue
    .line 233
    if-eqz p1, :cond_3

    .line 236
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lu/aly/bl;->c:Lu/aly/bc;

    goto :goto_2
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 183
    iget-byte v0, p0, Lu/aly/bl;->k:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lu/aly/bl;->b:Ljava/lang/String;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 205
    iget-object v0, p0, Lu/aly/bl;->b:Ljava/lang/String;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public j()Lu/aly/bc;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lu/aly/bl;->c:Lu/aly/bc;

    return-object v0
.end method

.method public l()Z
    .registers 2

    .prologue
    .line 229
    iget-object v0, p0, Lu/aly/bl;->c:Lu/aly/bc;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public m()V
    .registers 2

    .prologue
    .line 286
    iget-object v0, p0, Lu/aly/bl;->c:Lu/aly/bc;

    if-nez v0, :cond_5

    .line 289
    :goto_4
    return-void

    .line 287
    :cond_5
    iget-object v0, p0, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0}, Lu/aly/bc;->n()V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "resp_code:"

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget v1, p0, Lu/aly/bl;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lu/aly/bl;->i()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 268
    :goto_19
    invoke-virtual {p0}, Lu/aly/bl;->l()Z

    move-result v1

    if-nez v1, :cond_47

    :goto_1f
    const-string/jumbo v1, ")"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2a
    const-string/jumbo v1, ", "

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "msg:"

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget-object v1, p0, Lu/aly/bl;->b:Ljava/lang/String;

    if-eqz v1, :cond_40

    .line 264
    iget-object v1, p0, Lu/aly/bl;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_40
    const-string/jumbo v1, "null"

    .line 262
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    :cond_47
    const-string/jumbo v1, ", "

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "imprint:"

    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    iget-object v1, p0, Lu/aly/bl;->c:Lu/aly/bc;

    if-eqz v1, :cond_5d

    .line 274
    iget-object v1, p0, Lu/aly/bl;->c:Lu/aly/bc;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1f

    :cond_5d
    const-string/jumbo v1, "null"

    .line 272
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1f
.end method
