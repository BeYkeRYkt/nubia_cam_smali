.class public Lcom/fotonation/utils/Rectangle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected height:I

.field protected left:I

.field protected top:I

.field protected width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 18
    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 19
    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 20
    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 16
    return-void
.end method

.method public constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 43
    iput p2, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 44
    iput p3, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 45
    iput p4, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/fotonation/utils/Rectangle;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 29
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 30
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->width:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 31
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->height:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v3, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 54
    iput v3, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 55
    iput v3, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 56
    iput v3, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 58
    if-eqz p1, :cond_55

    .line 59
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 60
    const/16 v1, 0x3b

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 61
    const/16 v2, 0x78

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 62
    if-eq v0, v4, :cond_55

    if-eq v1, v4, :cond_55

    if-eq v2, v4, :cond_55

    .line 63
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 64
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 65
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 66
    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 52
    :cond_55
    return-void
.end method

.method public static Inflate(Lcom/fotonation/utils/Rectangle;II)Lcom/fotonation/utils/Rectangle;
    .registers 3

    .prologue
    .line 396
    invoke-virtual {p0, p1, p2}, Lcom/fotonation/utils/Rectangle;->Inflate(II)V

    .line 397
    return-object p0
.end method

.method public static Intersect(Lcom/fotonation/utils/Rectangle;Lcom/fotonation/utils/Rectangle;)Lcom/fotonation/utils/Rectangle;
    .registers 8

    .prologue
    .line 302
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v1, p1, Lcom/fotonation/utils/Rectangle;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 303
    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iget v3, p1, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 304
    iget v2, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v3, p1, Lcom/fotonation/utils/Rectangle;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 305
    iget v3, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v4, p0, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iget v5, p1, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 306
    if-lt v1, v0, :cond_38

    if-lt v3, v2, :cond_38

    .line 308
    new-instance v4, Lcom/fotonation/utils/Rectangle;

    sub-int/2addr v1, v0

    sub-int/2addr v3, v2

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/fotonation/utils/Rectangle;-><init>(IIII)V

    return-object v4

    .line 310
    :cond_38
    new-instance v0, Lcom/fotonation/utils/Rectangle;

    invoke-direct {v0}, Lcom/fotonation/utils/Rectangle;-><init>()V

    return-object v0
.end method

.method public static Union(Lcom/fotonation/utils/Rectangle;Lcom/fotonation/utils/Rectangle;)Lcom/fotonation/utils/Rectangle;
    .registers 8

    .prologue
    .line 332
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v1, p1, Lcom/fotonation/utils/Rectangle;->left:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 333
    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v1, v2

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iget v3, p1, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 334
    iget v2, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v3, p1, Lcom/fotonation/utils/Rectangle;->top:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 335
    iget v3, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v4, p0, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v3, v4

    iget v4, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iget v5, p1, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 336
    new-instance v4, Lcom/fotonation/utils/Rectangle;

    sub-int/2addr v1, v0

    sub-int/2addr v3, v2

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/fotonation/utils/Rectangle;-><init>(IIII)V

    return-object v4
.end method


# virtual methods
.method public Bottom()I
    .registers 3

    .prologue
    .line 162
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public Contains(II)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 264
    invoke-virtual {p0}, Lcom/fotonation/utils/Rectangle;->Left()I

    move-result v1

    if-lt p1, v1, :cond_1a

    .line 265
    invoke-virtual {p0}, Lcom/fotonation/utils/Rectangle;->Right()I

    move-result v1

    if-ge p1, v1, :cond_1a

    .line 266
    invoke-virtual {p0}, Lcom/fotonation/utils/Rectangle;->Top()I

    move-result v1

    if-lt p2, v1, :cond_1a

    .line 267
    invoke-virtual {p0}, Lcom/fotonation/utils/Rectangle;->Bottom()I

    move-result v1

    if-ge p2, v1, :cond_1a

    const/4 v0, 0x1

    .line 264
    :cond_1a
    return v0
.end method

.method public Contains(Lcom/fotonation/utils/Point;)Z
    .registers 4

    .prologue
    .line 254
    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->X()I

    move-result v0

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->Y()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fotonation/utils/Rectangle;->Contains(II)Z

    move-result v0

    return v0
.end method

.method public Contains(Lcom/fotonation/utils/Rectangle;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 278
    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->left:I

    if-gt v1, v2, :cond_26

    iget v1, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_26

    .line 279
    iget v1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->top:I

    if-gt v1, v2, :cond_26

    iget v1, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v2, v3

    if-gt v1, v2, :cond_26

    const/4 v0, 0x1

    .line 278
    :cond_26
    return v0
.end method

.method public Copy(Lcom/fotonation/utils/Rectangle;)V
    .registers 3

    .prologue
    .line 72
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 73
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 74
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->width:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 75
    iget v0, p1, Lcom/fotonation/utils/Rectangle;->height:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 71
    return-void
.end method

.method public GetArea()I
    .registers 3

    .prologue
    .line 245
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->height:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public GetCenter()Lcom/fotonation/utils/Point;
    .registers 5

    .prologue
    .line 223
    new-instance v0, Lcom/fotonation/utils/Point;

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->height:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public GetLocation()Lcom/fotonation/utils/Point;
    .registers 4

    .prologue
    .line 237
    new-instance v0, Lcom/fotonation/utils/Point;

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->top:I

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public GetSize()Lcom/fotonation/utils/Size;
    .registers 4

    .prologue
    .line 230
    new-instance v0, Lcom/fotonation/utils/Size;

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->width:I

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->height:I

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Size;-><init>(II)V

    return-object v0
.end method

.method public Height()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    return v0
.end method

.method public Inflate(II)V
    .registers 5

    .prologue
    .line 371
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 372
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 373
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 374
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    mul-int/lit8 v1, p2, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 370
    return-void
.end method

.method public Inflate(Lcom/fotonation/utils/Size;)V
    .registers 4

    .prologue
    .line 382
    iget v0, p1, Lcom/fotonation/utils/Size;->Width:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Height:I

    invoke-virtual {p0, v0, v1}, Lcom/fotonation/utils/Rectangle;->Inflate(II)V

    .line 381
    return-void
.end method

.method public Intersect(Lcom/fotonation/utils/Rectangle;)V
    .registers 4

    .prologue
    .line 287
    invoke-static {p1, p0}, Lcom/fotonation/utils/Rectangle;->Intersect(Lcom/fotonation/utils/Rectangle;Lcom/fotonation/utils/Rectangle;)Lcom/fotonation/utils/Rectangle;

    move-result-object v0

    .line 288
    iget v1, v0, Lcom/fotonation/utils/Rectangle;->left:I

    iput v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 289
    iget v1, v0, Lcom/fotonation/utils/Rectangle;->top:I

    iput v1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 290
    iget v1, v0, Lcom/fotonation/utils/Rectangle;->width:I

    iput v1, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 291
    iget v0, v0, Lcom/fotonation/utils/Rectangle;->height:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 286
    return-void
.end method

.method public IntersectsWith(Lcom/fotonation/utils/Rectangle;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 345
    iget v1, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_26

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iget v3, p1, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_26

    .line 346
    iget v1, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iget v2, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_26

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iget v3, p1, Lcom/fotonation/utils/Rectangle;->height:I

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_26

    const/4 v0, 0x1

    .line 345
    :cond_26
    return v0
.end method

.method public IsEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 438
    iget v1, p0, Lcom/fotonation/utils/Rectangle;->height:I

    if-nez v1, :cond_12

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->width:I

    if-nez v1, :cond_12

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    if-nez v1, :cond_12

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    if-nez v1, :cond_12

    const/4 v0, 0x1

    :cond_12
    return v0
.end method

.method public Left()I
    .registers 2

    .prologue
    .line 82
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    return v0
.end method

.method public Offset(II)V
    .registers 4

    .prologue
    .line 421
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 422
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 420
    return-void
.end method

.method public Offset(Lcom/fotonation/utils/Point;)V
    .registers 4

    .prologue
    .line 430
    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->X()I

    move-result v0

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->Y()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/fotonation/utils/Rectangle;->Offset(II)V

    .line 429
    return-void
.end method

.method public Right()I
    .registers 3

    .prologue
    .line 142
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->width:I

    add-int/2addr v0, v1

    return v0
.end method

.method public Scale(III)V
    .registers 5

    .prologue
    .line 358
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    mul-int/2addr v0, p1

    shr-int/2addr v0, p3

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 359
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    mul-int/2addr v0, p2

    shr-int/2addr v0, p3

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 360
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    mul-int/2addr v0, p1

    shr-int/2addr v0, p3

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 361
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    mul-int/2addr v0, p2

    shr-int/2addr v0, p3

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 356
    return-void
.end method

.method public Scale(Lcom/fotonation/utils/Rectangle;III)V
    .registers 6

    .prologue
    .line 409
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    mul-int/2addr v0, p2

    shr-int/2addr v0, p4

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 410
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    mul-int/2addr v0, p3

    shr-int/2addr v0, p4

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 411
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    mul-int/2addr v0, p2

    shr-int/2addr v0, p4

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 412
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    mul-int/2addr v0, p3

    shr-int/2addr v0, p4

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 407
    return-void
.end method

.method public SetBottom(I)V
    .registers 3

    .prologue
    .line 170
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    if-ge p1, v0, :cond_c

    .line 171
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 172
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 169
    :goto_b
    return-void

    .line 175
    :cond_c
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    goto :goto_b
.end method

.method public SetHeight(I)V
    .registers 3

    .prologue
    .line 210
    if-gez p1, :cond_b

    .line 211
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 212
    neg-int v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 209
    :goto_a
    return-void

    .line 215
    :cond_b
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->height:I

    goto :goto_a
.end method

.method public SetLeft(I)V
    .registers 2

    .prologue
    .line 90
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 89
    return-void
.end method

.method public SetRight(I)V
    .registers 3

    .prologue
    .line 150
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    if-ge p1, v0, :cond_c

    .line 151
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 152
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 149
    :goto_b
    return-void

    .line 155
    :cond_c
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    sub-int v0, p1, v0

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    goto :goto_b
.end method

.method public SetTop(I)V
    .registers 2

    .prologue
    .line 120
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 119
    return-void
.end method

.method public SetWidth(I)V
    .registers 3

    .prologue
    .line 190
    if-gez p1, :cond_b

    .line 191
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 192
    neg-int v0, p1

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 189
    :goto_a
    return-void

    .line 195
    :cond_b
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->width:I

    goto :goto_a
.end method

.method public SetX(I)V
    .registers 2

    .prologue
    .line 105
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 104
    return-void
.end method

.method public SetY(I)V
    .registers 2

    .prologue
    .line 135
    iput p1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 134
    return-void
.end method

.method public Top()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    return v0
.end method

.method public Union(Lcom/fotonation/utils/Rectangle;)V
    .registers 4

    .prologue
    .line 318
    invoke-static {p1, p0}, Lcom/fotonation/utils/Rectangle;->Union(Lcom/fotonation/utils/Rectangle;Lcom/fotonation/utils/Rectangle;)Lcom/fotonation/utils/Rectangle;

    move-result-object v0

    .line 319
    iget v1, v0, Lcom/fotonation/utils/Rectangle;->left:I

    iput v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    .line 320
    iget v1, v0, Lcom/fotonation/utils/Rectangle;->top:I

    iput v1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    .line 321
    iget v1, v0, Lcom/fotonation/utils/Rectangle;->width:I

    iput v1, p0, Lcom/fotonation/utils/Rectangle;->width:I

    .line 322
    iget v0, v0, Lcom/fotonation/utils/Rectangle;->height:I

    iput v0, p0, Lcom/fotonation/utils/Rectangle;->height:I

    .line 317
    return-void
.end method

.method public Width()I
    .registers 2

    .prologue
    .line 182
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->width:I

    return v0
.end method

.method public X()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->left:I

    return v0
.end method

.method public Y()I
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/fotonation/utils/Rectangle;->top:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 443
    if-ne p0, p1, :cond_5

    .line 444
    return v0

    .line 446
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fotonation/utils/Rectangle;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 447
    :cond_11
    return v1

    .line 449
    :cond_12
    check-cast p1, Lcom/fotonation/utils/Rectangle;

    .line 450
    iget v2, p1, Lcom/fotonation/utils/Rectangle;->left:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->left:I

    if-ne v2, v3, :cond_2f

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->top:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->top:I

    if-ne v2, v3, :cond_2f

    .line 451
    iget v2, p1, Lcom/fotonation/utils/Rectangle;->width:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->width:I

    if-ne v2, v3, :cond_2f

    iget v2, p1, Lcom/fotonation/utils/Rectangle;->height:I

    iget v3, p0, Lcom/fotonation/utils/Rectangle;->height:I

    if-ne v2, v3, :cond_2d

    .line 450
    :goto_2c
    return v0

    :cond_2d
    move v0, v1

    .line 451
    goto :goto_2c

    :cond_2f
    move v0, v1

    .line 450
    goto :goto_2c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->left:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fotonation/utils/Rectangle;->top:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    const-string/jumbo v1, ";"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    iget v1, p0, Lcom/fotonation/utils/Rectangle;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    const-string/jumbo v1, "x"

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 460
    iget v1, p0, Lcom/fotonation/utils/Rectangle;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
