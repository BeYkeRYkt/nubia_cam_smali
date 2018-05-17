.class public Lcom/android/gallery3d/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static aHR(JJ)I
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 171
    cmp-long v3, p0, v4

    if-ltz v3, :cond_1a

    cmp-long v3, p2, v4

    if-ltz v3, :cond_1a

    .line 172
    cmp-long v3, p0, p2

    if-gez v3, :cond_12

    :goto_11
    return v0

    :cond_12
    cmp-long v0, p0, p2

    if-lez v0, :cond_18

    move v0, v1

    goto :goto_11

    :cond_18
    move v0, v2

    goto :goto_11

    .line 174
    :cond_1a
    cmp-long v3, p2, p0

    if-gez v3, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    cmp-long v0, p2, p0

    if-lez v0, :cond_25

    move v0, v1

    goto :goto_1e

    :cond_25
    move v0, v2

    goto :goto_1e
.end method


# virtual methods
.method public aHQ(Lcom/android/gallery3d/a/h;Lcom/android/gallery3d/a/h;)I
    .registers 7

    .prologue
    .line 179
    invoke-interface {p1}, Lcom/android/gallery3d/a/h;->aHt()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/gallery3d/a/h;->aHt()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/a/i;->aHR(JJ)I

    move-result v0

    .line 180
    if-nez v0, :cond_1a

    .line 181
    invoke-interface {p1}, Lcom/android/gallery3d/a/h;->aHs()J

    move-result-wide v0

    invoke-interface {p2}, Lcom/android/gallery3d/a/h;->aHs()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery3d/a/i;->aHR(JJ)I

    move-result v0

    .line 187
    :cond_1a
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 178
    check-cast p1, Lcom/android/gallery3d/a/h;

    check-cast p2, Lcom/android/gallery3d/a/h;

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/a/i;->aHQ(Lcom/android/gallery3d/a/h;Lcom/android/gallery3d/a/h;)I

    move-result v0

    return v0
.end method
