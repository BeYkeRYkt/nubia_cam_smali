.class Lu/aly/cS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bz;)V
    .registers 2

    .prologue
    .line 202
    invoke-direct {p0}, Lu/aly/cS;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 204
    if-eqz p1, :cond_20

    .line 206
    :cond_3
    if-eqz p1, :cond_23

    .line 208
    if-eqz p2, :cond_25

    .line 210
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_27

    .line 212
    instance-of v0, p1, Ljava/util/Set;

    if-nez v0, :cond_30

    .line 214
    instance-of v0, p1, Ljava/util/Map;

    if-nez v0, :cond_39

    .line 216
    instance-of v0, p1, [B

    if-nez v0, :cond_42

    .line 219
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-static {p1, p2}, Lu/aly/p;->bRy(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0

    .line 204
    :cond_20
    if-nez p2, :cond_3

    .line 205
    return v0

    :cond_23
    const/4 v0, -0x1

    .line 207
    return v0

    :cond_25
    const/4 v0, 0x1

    .line 209
    return v0

    .line 211
    :cond_27
    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    invoke-static {p1, p2}, Lu/aly/p;->bRz(Ljava/util/List;Ljava/util/List;)I

    move-result v0

    return v0

    .line 213
    :cond_30
    check-cast p1, Ljava/util/Set;

    check-cast p2, Ljava/util/Set;

    invoke-static {p1, p2}, Lu/aly/p;->bRA(Ljava/util/Set;Ljava/util/Set;)I

    move-result v0

    return v0

    .line 215
    :cond_39
    check-cast p1, Ljava/util/Map;

    check-cast p2, Ljava/util/Map;

    invoke-static {p1, p2}, Lu/aly/p;->bRB(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    return v0

    .line 217
    :cond_42
    check-cast p1, [B

    check-cast p1, [B

    check-cast p2, [B

    check-cast p2, [B

    invoke-static {p1, p2}, Lu/aly/p;->a([B[B)I

    move-result v0

    return v0
.end method
