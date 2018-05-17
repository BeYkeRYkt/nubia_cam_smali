.class Lcom/loc/aP;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SourceFile"


# instance fields
.field public bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field final synthetic bgm:Lcom/loc/L;

.field private c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/loc/L;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/aP;->bgm:Lcom/loc/L;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-direct {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;-><init>()V

    iput-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/L;Lcom/loc/u;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/loc/aP;-><init>(Lcom/loc/L;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 5

    invoke-static {p1, p2, p3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const-wide/16 v4, 0x0

    const-string/jumbo v0, "retype"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ed

    const-string/jumbo v0, "rdesc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f5

    const-string/jumbo v0, "adcode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_fd

    const-string/jumbo v0, "citycode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_105

    const-string/jumbo v0, "radius"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10d

    const-string/jumbo v0, "cenx"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12c

    const-string/jumbo v0, "ceny"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_148

    const-string/jumbo v0, "desc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_164

    const-string/jumbo v0, "country"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16c

    const-string/jumbo v0, "province"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_175

    const-string/jumbo v0, "city"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17e

    const-string/jumbo v0, "district"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_187

    const-string/jumbo v0, "road"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_190

    const-string/jumbo v0, "street"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_199

    const-string/jumbo v0, "number"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a2

    const-string/jumbo v0, "poiname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ab

    const-string/jumbo v0, "BIZ"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b4

    const-string/jumbo v0, "cens"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e3

    const-string/jumbo v0, "pid"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1ec

    const-string/jumbo v0, "flr"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f5

    const-string/jumbo v0, "coord"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1fe

    const-string/jumbo v0, "mcell"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_214

    const-string/jumbo v0, "gkeyloc"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    const-string/jumbo v0, "gkeygeo"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ec

    const-string/jumbo v0, "apiTime"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21d

    const-string/jumbo v0, "aoiname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22a

    :cond_ec
    :goto_ec
    return-void

    :cond_ed
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHX(Ljava/lang/String;)V

    goto :goto_ec

    :cond_f5
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHZ(Ljava/lang/String;)V

    goto :goto_ec

    :cond_fd
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIf(Ljava/lang/String;)V

    goto :goto_ec

    :cond_105
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIb(Ljava/lang/String;)V

    goto :goto_ec

    :cond_10d
    :try_start_10d
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHP(F)V
    :try_end_118
    .catch Ljava/lang/Throwable; {:try_start_10d .. :try_end_118} :catch_119

    goto :goto_ec

    :catch_119
    move-exception v0

    const-string/jumbo v1, "parser"

    const-string/jumbo v2, "endElement3"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    const v1, 0x45733000    # 3891.0f

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHP(F)V

    goto :goto_ec

    :cond_12c
    :try_start_12c
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHJ(D)V
    :try_end_137
    .catch Ljava/lang/Throwable; {:try_start_12c .. :try_end_137} :catch_138

    goto :goto_ec

    :catch_138
    move-exception v0

    const-string/jumbo v1, "parser"

    const-string/jumbo v2, "endElement2"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHJ(D)V

    goto :goto_ec

    :cond_148
    :try_start_148
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHM(D)V
    :try_end_153
    .catch Ljava/lang/Throwable; {:try_start_148 .. :try_end_153} :catch_154

    goto :goto_ec

    :catch_154
    move-exception v0

    const-string/jumbo v1, "parser"

    const-string/jumbo v2, "endElement1"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0, v4, v5}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHM(D)V

    goto :goto_ec

    :cond_164
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bId(Ljava/lang/String;)V

    goto :goto_ec

    :cond_16c
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIh(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_175
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIj(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_17e
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIl(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_187
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIn(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_190
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIp(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_199
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIr(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_1a2
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIt(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_1ab
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIv(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_1b4
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIH()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1d8

    :goto_1bc
    :try_start_1bc
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v0}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIH()Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "BIZ"

    iget-object v2, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1ca
    .catch Ljava/lang/Throwable; {:try_start_1bc .. :try_end_1ca} :catch_1cc

    goto/16 :goto_ec

    :catch_1cc
    move-exception v0

    const-string/jumbo v1, "parser"

    const-string/jumbo v2, "endElement"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_1d8
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bII(Lorg/json/JSONObject;)V

    goto :goto_1bc

    :cond_1e3
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIy(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_1ec
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIA(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_1f5
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIB(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_1fe
    sget-object v0, Lcom/loc/bx;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20f

    :goto_206
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bID(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_20f
    iget-object v0, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    sput-object v0, Lcom/loc/bx;->f:Ljava/lang/String;

    goto :goto_206

    :cond_214
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIG(Ljava/lang/String;)V

    goto/16 :goto_ec

    :cond_21d
    iget-object v0, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    invoke-virtual {v2, v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bHT(J)V

    goto/16 :goto_ec

    :cond_22a
    iget-object v0, p0, Lcom/loc/aP;->bgl:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iget-object v1, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/autonavi/aps/amapapi/model/AmapLoc;->bIx(Ljava/lang/String;)V

    goto/16 :goto_ec
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/aP;->c:Ljava/lang/String;

    return-void
.end method
