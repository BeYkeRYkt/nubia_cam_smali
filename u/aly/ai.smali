.class public Lu/aly/ai;
.super Lu/aly/bi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 23
    invoke-direct {p0}, Lu/aly/bi;-><init>()V

    .line 24
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, v0}, Lu/aly/ai;->cbZ(Lorg/json/JSONArray;)V

    .line 27
    return-void
.end method

.method private cbZ(Lorg/json/JSONArray;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 30
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/ai;->a(Ljava/lang/String;)Lu/aly/bi;

    const/4 v0, 0x1

    .line 31
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ai;->a(J)Lu/aly/bi;

    .line 32
    return-void
.end method
