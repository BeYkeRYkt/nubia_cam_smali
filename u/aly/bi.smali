.class public Lu/aly/bi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final bwX:Lu/aly/aO;

.field private static final bwY:Lu/aly/cB;

.field private static final bwZ:Lu/aly/cB;

.field private static final bxa:Ljava/util/Map;

.field public static final bxb:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field private i:B


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v3, 0x0

    const/16 v7, 0xb

    const/16 v6, 0xa

    const/4 v5, 0x1

    .line 33
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "Page"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bi;->bwX:Lu/aly/aO;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "page_name"

    invoke-direct {v0, v1, v7, v5}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bi;->bwY:Lu/aly/cB;

    .line 36
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "duration"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bi;->bwZ:Lu/aly/cB;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bi;->bxa:Ljava/util/Map;

    .line 40
    sget-object v0, Lu/aly/bi;->bxa:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/Q;

    invoke-direct {v2, v3}, Lu/aly/Q;-><init>(Lu/aly/aQ;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lu/aly/bi;->bxa:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/aW;

    invoke-direct {v2, v3}, Lu/aly/aW;-><init>(Lu/aly/aQ;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bi$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 114
    sget-object v1, Lu/aly/bi$e;->bxB:Lu/aly/bi$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "page_name"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v7}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v1, Lu/aly/bi$e;->bxC:Lu/aly/bi$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "duration"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v6}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bi;->bxb:Ljava/util/Map;

    const-class v0, Lu/aly/bi;

    .line 119
    sget-object v1, Lu/aly/bi;->bxb:Ljava/util/Map;

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

    iput-byte v0, p0, Lu/aly/bi;->i:B

    .line 123
    return-void
.end method

.method static synthetic k()Lu/aly/aO;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bi;->bwX:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic l()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bi;->bwY:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic m()Lu/aly/cB;
    .registers 1

    .prologue
    .line 32
    sget-object v0, Lu/aly/bi;->bwZ:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(J)Lu/aly/bi;
    .registers 4

    .prologue
    .line 186
    iput-wide p1, p0, Lu/aly/bi;->b:J

    .line 187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bi;->bVB(Z)V

    .line 188
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bi;
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lu/aly/bi;->a:Ljava/lang/String;

    .line 163
    return-object p0
.end method

.method public a(Z)V
    .registers 3

    .prologue
    .line 176
    if-eqz p1, :cond_3

    .line 179
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lu/aly/bi;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 209
    sget-object v0, Lu/aly/bi;->bxa:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 210
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 213
    sget-object v0, Lu/aly/bi;->bxa:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 214
    return-void
.end method

.method public bVB(Z)V
    .registers 4

    .prologue
    .line 201
    iget-byte v0, p0, Lu/aly/bi;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/aN;->bVG(BIZ)B

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lu/aly/bi;->i:B

    .line 202
    return-void
.end method

.method public i()Z
    .registers 3

    .prologue
    .line 197
    iget-byte v0, p0, Lu/aly/bi;->i:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/aN;->bVD(BI)Z

    move-result v0

    return v0
.end method

.method public j()V
    .registers 4

    .prologue
    .line 238
    iget-object v0, p0, Lu/aly/bi;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 243
    return-void

    .line 239
    :cond_5
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'page_name\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/bi;->toString()Ljava/lang/String;

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
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Page("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "page_name:"

    .line 221
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    iget-object v1, p0, Lu/aly/bi;->a:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 225
    iget-object v1, p0, Lu/aly/bi;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    const-string/jumbo v1, ", "

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "duration:"

    .line 229
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    iget-wide v2, p0, Lu/aly/bi;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ")"

    .line 232
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_33
    const-string/jumbo v1, "null"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17
.end method
