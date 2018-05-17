.class public Lu/aly/as;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field public static final b:Ljava/util/Map;

.field private static final bxS:Lu/aly/aO;

.field private static final bxT:Lu/aly/cB;

.field private static final bxU:Ljava/util/Map;


# instance fields
.field public a:Lu/aly/bf;

.field private f:[Lu/aly/as$e;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0xc

    .line 32
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "ControlPolicy"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/as;->bxS:Lu/aly/aO;

    .line 34
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "latent"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/as;->bxT:Lu/aly/cB;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/as;->bxU:Ljava/util/Map;

    .line 38
    sget-object v0, Lu/aly/as;->bxU:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/dA;

    invoke-direct {v2, v3}, Lu/aly/dA;-><init>(Lu/aly/cn;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lu/aly/as;->bxU:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/bX;

    invoke-direct {v2, v3}, Lu/aly/bX;-><init>(Lu/aly/cn;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/as$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 107
    sget-object v1, Lu/aly/as$e;->bzp:Lu/aly/as$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "latent"

    new-instance v4, Lu/aly/da;

    const-class v5, Lu/aly/bf;

    invoke-direct {v4, v6, v5}, Lu/aly/da;-><init>(BLjava/lang/Class;)V

    const/4 v5, 0x2

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/as;->b:Ljava/util/Map;

    const-class v0, Lu/aly/as;

    .line 110
    sget-object v1, Lu/aly/as;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 111
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 4

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 103
    new-array v0, v0, [Lu/aly/as$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/as$e;->bzp:Lu/aly/as$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/as;->f:[Lu/aly/as$e;

    .line 114
    return-void
.end method

.method static synthetic h()Lu/aly/aO;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/as;->bxS:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic i()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/as;->bxT:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 153
    if-eqz p1, :cond_3

    .line 156
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lu/aly/as;->a:Lu/aly/bf;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 163
    sget-object v0, Lu/aly/as;->bxU:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 164
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 167
    sget-object v0, Lu/aly/as;->bxU:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 168
    return-void
.end method

.method public bWo(Lu/aly/bf;)Lu/aly/as;
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lu/aly/as;->a:Lu/aly/bf;

    .line 140
    return-object p0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lu/aly/as;->a:Lu/aly/bf;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public f()V
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lu/aly/as;->a:Lu/aly/bf;

    if-nez v0, :cond_5

    .line 194
    :goto_4
    return-void

    .line 192
    :cond_5
    iget-object v0, p0, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0}, Lu/aly/bf;->j()V

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ControlPolicy("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Lu/aly/as;->e()Z

    move-result v1

    if-nez v1, :cond_19

    :goto_e
    const-string/jumbo v1, ")"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_19
    const-string/jumbo v1, "latent:"

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    iget-object v1, p0, Lu/aly/as;->a:Lu/aly/bf;

    if-eqz v1, :cond_29

    .line 180
    iget-object v1, p0, Lu/aly/as;->a:Lu/aly/bf;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_e

    :cond_29
    const-string/jumbo v1, "null"

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e
.end method
