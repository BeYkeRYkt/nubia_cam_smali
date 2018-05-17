.class public Lcom/loc/aX;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:D

.field public b:D

.field final synthetic bgy:Lcom/loc/cy;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:I


# direct methods
.method public constructor <init>(Lcom/loc/cy;DD)V
    .registers 8

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/aX;->bgy:Lcom/loc/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/aX;->a:D

    iput-wide v0, p0, Lcom/loc/aX;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/aX;->c:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/loc/aX;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/aX;->e:I

    iput-wide p2, p0, Lcom/loc/aX;->a:D

    iput-wide p4, p0, Lcom/loc/aX;->b:D

    return-void
.end method

.method public constructor <init>(Lcom/loc/cy;DDII)V
    .registers 10

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/aX;->bgy:Lcom/loc/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/aX;->a:D

    iput-wide v0, p0, Lcom/loc/aX;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/aX;->c:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/loc/aX;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/aX;->e:I

    iput-wide p2, p0, Lcom/loc/aX;->a:D

    iput-wide p4, p0, Lcom/loc/aX;->b:D

    iput p6, p0, Lcom/loc/aX;->c:I

    iput p7, p0, Lcom/loc/aX;->e:I

    return-void
.end method

.method public constructor <init>(Lcom/loc/cy;DDILjava/lang/String;DI)V
    .registers 13

    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/loc/aX;->bgy:Lcom/loc/cy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/loc/aX;->a:D

    iput-wide v0, p0, Lcom/loc/aX;->b:D

    const/4 v0, 0x0

    iput v0, p0, Lcom/loc/aX;->c:I

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/loc/aX;->d:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/loc/aX;->e:I

    iput-wide p2, p0, Lcom/loc/aX;->a:D

    iput-wide p4, p0, Lcom/loc/aX;->b:D

    iput-object p7, p0, Lcom/loc/aX;->d:Ljava/lang/String;

    iput p6, p0, Lcom/loc/aX;->c:I

    iput p10, p0, Lcom/loc/aX;->e:I

    return-void
.end method

.method private bAt(Lcom/loc/aX;)Z
    .registers 14

    const-wide v10, 0x40b3880000000000L    # 5000.0

    const-wide v8, 0x407f400000000000L    # 500.0

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/loc/aX;->bAu(Lcom/loc/aX;)D

    move-result-wide v4

    cmpg-double v2, v4, v8

    if-gez v2, :cond_17

    return v0

    :cond_17
    iget v2, p0, Lcom/loc/aX;->e:I

    if-gtz v2, :cond_3d

    :cond_1b
    iget v2, p0, Lcom/loc/aX;->e:I

    if-eqz v2, :cond_62

    :goto_1f
    iget v2, p0, Lcom/loc/aX;->e:I

    if-lez v2, :cond_76

    :cond_23
    cmpg-double v2, v4, v10

    if-gez v2, :cond_94

    move v2, v0

    :goto_28
    if-nez v2, :cond_3b

    iget v2, p0, Lcom/loc/aX;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_96

    move v2, v0

    :goto_32
    if-nez v2, :cond_3b

    iget v2, p1, Lcom/loc/aX;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_3c

    :cond_3b
    move v1, v0

    :cond_3c
    return v1

    :cond_3d
    iget v2, p1, Lcom/loc/aX;->e:I

    if-nez v2, :cond_1b

    :cond_41
    iget v2, p0, Lcom/loc/aX;->e:I

    if-ne v2, v0, :cond_67

    :cond_45
    const-wide v2, 0x40a7700000000000L    # 3000.0

    cmpg-double v2, v4, v2

    if-gez v2, :cond_72

    iget v2, p0, Lcom/loc/aX;->c:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_70

    move v2, v0

    :goto_57
    if-nez v2, :cond_61

    iget v2, p1, Lcom/loc/aX;->c:I

    int-to-double v2, v2

    mul-double/2addr v2, v6

    cmpg-double v2, v4, v2

    if-gez v2, :cond_72

    :cond_61
    :goto_61
    return v0

    :cond_62
    iget v2, p1, Lcom/loc/aX;->e:I

    if-gtz v2, :cond_41

    goto :goto_1f

    :cond_67
    iget v2, p1, Lcom/loc/aX;->e:I

    if-eq v2, v0, :cond_45

    cmpg-double v2, v4, v10

    if-gez v2, :cond_74

    :goto_6f
    return v0

    :cond_70
    move v2, v1

    goto :goto_57

    :cond_72
    move v0, v1

    goto :goto_61

    :cond_74
    move v0, v1

    goto :goto_6f

    :cond_76
    iget v2, p1, Lcom/loc/aX;->e:I

    if-gtz v2, :cond_23

    iget v2, p0, Lcom/loc/aX;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_98

    move v2, v0

    :goto_82
    if-nez v2, :cond_92

    iget v2, p1, Lcom/loc/aX;->c:I

    int-to-double v2, v2

    cmpg-double v2, v4, v2

    if-gez v2, :cond_9a

    move v2, v0

    :goto_8c
    if-nez v2, :cond_92

    cmpg-double v2, v4, v8

    if-gez v2, :cond_93

    :cond_92
    move v1, v0

    :cond_93
    return v1

    :cond_94
    move v2, v1

    goto :goto_28

    :cond_96
    move v2, v1

    goto :goto_32

    :cond_98
    move v2, v1

    goto :goto_82

    :cond_9a
    move v2, v1

    goto :goto_8c
.end method

.method private bAu(Lcom/loc/aX;)D
    .registers 14

    const-wide v4, 0x4056800000000000L    # 90.0

    const-wide v10, 0x4066800000000000L    # 180.0

    const-wide v8, 0x400921fb54442d28L    # 3.1415926535898

    iget-wide v0, p0, Lcom/loc/aX;->a:D

    sub-double v0, v4, v0

    const-wide v2, 0x40d4e90000000000L    # 21412.0

    mul-double/2addr v0, v2

    div-double/2addr v0, v4

    const-wide v2, 0x41583fbd40000000L    # 6356725.0

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/loc/aX;->a:D

    mul-double/2addr v2, v8

    div-double/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    iget-wide v4, p1, Lcom/loc/aX;->b:D

    iget-wide v6, p0, Lcom/loc/aX;->b:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v2, v4

    iget-wide v4, p1, Lcom/loc/aX;->a:D

    iget-wide v6, p0, Lcom/loc/aX;->a:D

    sub-double/2addr v4, v6

    mul-double/2addr v4, v8

    div-double/2addr v4, v10

    mul-double/2addr v0, v4

    mul-double/2addr v2, v2

    mul-double/2addr v0, v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic bAv(Lcom/loc/aX;Lcom/loc/aX;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/loc/aX;->bAt(Lcom/loc/aX;)Z

    move-result v0

    return v0
.end method

.method static synthetic bAw(Lcom/loc/aX;Lcom/loc/aX;)D
    .registers 4

    invoke-direct {p0, p1}, Lcom/loc/aX;->bAu(Lcom/loc/aX;)D

    move-result-wide v0

    return-wide v0
.end method
