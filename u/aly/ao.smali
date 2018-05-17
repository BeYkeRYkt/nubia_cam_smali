.class public Lu/aly/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field public static final b:Ljava/util/Map;

.field private static final bxt:Lu/aly/aO;

.field private static final bxu:Lu/aly/cB;

.field private static final bxv:Ljava/util/Map;


# instance fields
.field public a:J

.field private g:B


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "ActivateMsg"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ao;->bxt:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "ts"

    invoke-direct {v0, v1, v6, v5}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ao;->bxu:Lu/aly/cB;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ao;->bxv:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/ao;->bxv:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/aS;

    invoke-direct {v2, v3}, Lu/aly/aS;-><init>(Lu/aly/q;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/ao;->bxv:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/k;

    invoke-direct {v2, v3}, Lu/aly/k;-><init>(Lu/aly/q;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ao$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 109
    sget-object v1, Lu/aly/ao$e;->buQ:Lu/aly/ao$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "ts"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ao;->b:Ljava/util/Map;

    const-class v0, Lu/aly/ao;

    .line 112
    sget-object v1, Lu/aly/ao;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 113
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/ao;->g:B

    .line 116
    return-void
.end method

.method public constructor <init>(J)V
    .registers 4

    .prologue
    .line 121
    invoke-direct {p0}, Lu/aly/ao;-><init>()V

    .line 122
    iput-wide p1, p0, Lu/aly/ao;->a:J

    .line 123
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/ao;->a(Z)V

    .line 124
    return-void
.end method

.method static synthetic h()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ao;->bxt:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic i()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/ao;->bxu:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 4

    .prologue
    .line 164
    iget-byte v0, p0, Lu/aly/ao;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/ao;->g:B

    .line 165
    return-void
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 172
    sget-object v0, Lu/aly/ao;->bxv:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 173
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 176
    sget-object v0, Lu/aly/ao;->bxv:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 177
    return-void
.end method

.method public e()Z
    .registers 3

    .prologue
    .line 160
    iget-byte v0, p0, Lu/aly/ao;->g:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public f()V
    .registers 1

    .prologue
    .line 195
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ActivateMsg("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "ts:"

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    iget-wide v2, p0, Lu/aly/ao;->a:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    .line 187
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
