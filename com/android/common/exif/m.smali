.class public Lcom/android/common/exif/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Pw:J

.field private final Px:J


# direct methods
.method public constructor <init>(FF)V
    .registers 7

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    cmpg-float v0, p1, v2

    if-gez v0, :cond_19

    .line 41
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/common/exif/m;->Px:J

    .line 42
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/exif/m;->Pw:J

    .line 39
    :goto_18
    return-void

    .line 44
    :cond_19
    div-float v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/common/exif/m;->Px:J

    .line 45
    div-float v0, v2, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/common/exif/m;->Pw:J

    goto :goto_18
.end method

.method public constructor <init>(JJ)V
    .registers 6

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-wide p1, p0, Lcom/android/common/exif/m;->Px:J

    .line 36
    iput-wide p3, p0, Lcom/android/common/exif/m;->Pw:J

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/android/common/exif/m;)V
    .registers 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iget-wide v0, p1, Lcom/android/common/exif/m;->Px:J

    iput-wide v0, p0, Lcom/android/common/exif/m;->Px:J

    .line 54
    iget-wide v0, p1, Lcom/android/common/exif/m;->Pw:J

    iput-wide v0, p0, Lcom/android/common/exif/m;->Pw:J

    .line 52
    return-void
.end method


# virtual methods
.method public Qq()D
    .registers 5

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/android/common/exif/m;->Px:J

    long-to-double v0, v0

    iget-wide v2, p0, Lcom/android/common/exif/m;->Pw:J

    long-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public Qr()J
    .registers 3

    .prologue
    .line 61
    iget-wide v0, p0, Lcom/android/common/exif/m;->Px:J

    return-wide v0
.end method

.method public Qs()J
    .registers 3

    .prologue
    .line 68
    iget-wide v0, p0, Lcom/android/common/exif/m;->Pw:J

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    if-nez p1, :cond_5

    .line 82
    return v1

    .line 84
    :cond_5
    if-ne p0, p1, :cond_8

    .line 85
    return v0

    .line 87
    :cond_8
    instance-of v2, p1, Lcom/android/common/exif/m;

    if-eqz v2, :cond_21

    .line 88
    check-cast p1, Lcom/android/common/exif/m;

    .line 89
    iget-wide v2, p0, Lcom/android/common/exif/m;->Px:J

    iget-wide v4, p1, Lcom/android/common/exif/m;->Px:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    iget-wide v2, p0, Lcom/android/common/exif/m;->Pw:J

    iget-wide v4, p1, Lcom/android/common/exif/m;->Pw:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1f

    :goto_1e
    return v0

    :cond_1f
    move v0, v1

    goto :goto_1e

    .line 91
    :cond_21
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/android/common/exif/m;->Px:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/common/exif/m;->Pw:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
