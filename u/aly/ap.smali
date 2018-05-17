.class public Lu/aly/ap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cj;


# static fields
.field private static final btv:Lu/aly/aO;

.field private static final btw:Lu/aly/cB;

.field private static final btx:Lu/aly/cB;

.field private static final bty:Ljava/util/Map;

.field public static final btz:Ljava/util/Map;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/16 v5, 0xb

    .line 32
    new-instance v0, Lu/aly/aO;

    const-string/jumbo v1, "ActiveUser"

    invoke-direct {v0, v1}, Lu/aly/aO;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ap;->btv:Lu/aly/aO;

    .line 34
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "provider"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ap;->btw:Lu/aly/cB;

    .line 35
    new-instance v0, Lu/aly/cB;

    const-string/jumbo v1, "puid"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cB;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ap;->btx:Lu/aly/cB;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/ap;->bty:Ljava/util/Map;

    .line 39
    sget-object v0, Lu/aly/ap;->bty:Ljava/util/Map;

    const-class v1, Lu/aly/b;

    new-instance v2, Lu/aly/g;

    invoke-direct {v2, v3}, Lu/aly/g;-><init>(Lu/aly/ac;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lu/aly/ap;->bty:Ljava/util/Map;

    const-class v1, Lu/aly/dC;

    new-instance v2, Lu/aly/cs;

    invoke-direct {v2, v3}, Lu/aly/cs;-><init>(Lu/aly/ac;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/ap$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 111
    sget-object v1, Lu/aly/ap$e;->bxH:Lu/aly/ap$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "provider"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lu/aly/ap$e;->bxI:Lu/aly/ap$e;

    new-instance v2, Lu/aly/cv;

    const-string/jumbo v3, "puid"

    new-instance v4, Lu/aly/cw;

    invoke-direct {v4, v5}, Lu/aly/cw;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cv;-><init>(Ljava/lang/String;BLu/aly/cw;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/ap;->btz:Ljava/util/Map;

    const-class v0, Lu/aly/ap;

    .line 116
    sget-object v1, Lu/aly/ap;->btz:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cv;->bUh(Ljava/lang/Class;Ljava/util/Map;)V

    .line 117
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 126
    invoke-direct {p0}, Lu/aly/ap;-><init>()V

    .line 127
    iput-object p1, p0, Lu/aly/ap;->a:Ljava/lang/String;

    .line 128
    iput-object p2, p0, Lu/aly/ap;->b:Ljava/lang/String;

    .line 129
    return-void
.end method

.method static synthetic k()Lu/aly/aO;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/ap;->btv:Lu/aly/aO;

    return-object v0
.end method

.method static synthetic l()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/ap;->btw:Lu/aly/cB;

    return-object v0
.end method

.method static synthetic m()Lu/aly/cB;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lu/aly/ap;->btx:Lu/aly/cB;

    return-object v0
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    .prologue
    .line 172
    if-eqz p1, :cond_3

    .line 175
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQJ(Z)V
    .registers 3

    .prologue
    .line 196
    if-eqz p1, :cond_3

    .line 199
    :goto_2
    return-void

    :cond_3
    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    goto :goto_2
.end method

.method public bQK(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 206
    sget-object v0, Lu/aly/ap;->bty:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQs(Lu/aly/dl;Lu/aly/cj;)V

    .line 207
    return-void
.end method

.method public bQL(Lu/aly/dl;)V
    .registers 4

    .prologue
    .line 210
    sget-object v0, Lu/aly/ap;->bty:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/dl;->bUC()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/M;

    invoke-interface {v0}, Lu/aly/M;->b()Lu/aly/cH;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/cH;->bQr(Lu/aly/dl;Lu/aly/cj;)V

    .line 211
    return-void
.end method

.method public j()V
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lu/aly/ap;->a:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 242
    iget-object v0, p0, Lu/aly/ap;->b:Ljava/lang/String;

    if-eqz v0, :cond_27

    .line 246
    return-void

    .line 240
    :cond_9
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'provider\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_27
    new-instance v0, Lu/aly/dj;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'puid\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lu/aly/ap;->toString()Ljava/lang/String;

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
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "ActiveUser("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "provider:"

    .line 218
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    iget-object v1, p0, Lu/aly/ap;->a:Ljava/lang/String;

    if-eqz v1, :cond_37

    .line 222
    iget-object v1, p0, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_17
    const-string/jumbo v1, ", "

    .line 225
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "puid:"

    .line 226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    iget-object v1, p0, Lu/aly/ap;->b:Ljava/lang/String;

    if-eqz v1, :cond_3e

    .line 230
    iget-object v1, p0, Lu/aly/ap;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2c
    const-string/jumbo v1, ")"

    .line 233
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_37
    const-string/jumbo v1, "null"

    .line 220
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_17

    :cond_3e
    const-string/jumbo v1, "null"

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2c
.end method
