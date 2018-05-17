.class public Lu/aly/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bAu:Lu/aly/aO;

.field private static final bAv:Lu/aly/cB;

.field private static final bAw:Lu/aly/cB;

.field private static final bAx:Ljava/util/Map;

.field public static final bAy:Ljava/util/Map;


# instance fields
.field public a:I

.field public b:J

.field private j:B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    .line 32
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "Latent"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bf;->bAu:Lu/aly/aO;

    .line 34
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "latency"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->bAv:Lu/aly/cB;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "interval"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bf;->bAw:Lu/aly/cB;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bf;->bAx:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/bf;->bAx:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/aB;

    invoke-direct {v2, v3}, Lu/aly/aB;-><init>(Lu/aly/s;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/bf;->bAx:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/bq;

    invoke-direct {v2, v3}, Lu/aly/bq;-><init>(Lu/aly/s;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bf$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lu/aly/bf$e;->bwT:Lu/aly/bf$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "latency"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lu/aly/bf$e;->bwU:Lu/aly/bf$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "interval"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bf;->bAy:Ljava/util/Map;

    const-class v0, Lu/aly/bf;

    .line 119
    sget-object v1, Lu/aly/bf;->bAy:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 120
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 123
    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 6

    .prologue
    const/4 v0, 0x1

    .line 129
    invoke-direct {p0}, Lu/aly/bf;-><init>()V

    .line 130
    iput p1, p0, Lu/aly/bf;->a:I

    .line 131
    invoke-virtual {p0, v0}, Lu/aly/bf;->a(Z)V

    .line 132
    iput-wide p2, p0, Lu/aly/bf;->b:J

    .line 133
    invoke-virtual {p0, v0}, Lu/aly/bf;->bZI(Z)V

    .line 134
    return-void
.end method

.method static synthetic k()Lu/aly/aO;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bf;->bAu:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic l()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bf;->bAv:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic m()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/bf;->bAw:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 177
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 178
    return-void
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 208
    sget-object v0, Lu/aly/bf;->bAx:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 209
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 212
    sget-object v0, Lu/aly/bf;->bAx:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 213
    return-void
.end method

.method public bZI(Z)V
    .registers 4

    .prologue
    .line 200
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bf;->j:B

    .line 201
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 173
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 196
    iget-byte v0, p0, Lu/aly/bf;->j:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .registers 1

    .prologue
    .line 236
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 217
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Latent("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "latency:"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    iget v1, p0, Lu/aly/bf;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "interval:"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    iget-wide v2, p0, Lu/aly/bf;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
