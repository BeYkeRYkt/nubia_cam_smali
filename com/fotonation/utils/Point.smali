.class public Lcom/fotonation/utils/Point;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected x:I

.field protected y:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 25
    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 23
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/fotonation/utils/Point;->x:I

    .line 44
    iput p2, p0, Lcom/fotonation/utils/Point;->y:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/fotonation/utils/Point;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lcom/fotonation/utils/Point;->x:I

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 34
    iget v0, p1, Lcom/fotonation/utils/Point;->y:I

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 32
    return-void
.end method

.method public constructor <init>(Lcom/fotonation/utils/Size;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iget v0, p1, Lcom/fotonation/utils/Size;->Width:I

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 53
    iget v0, p1, Lcom/fotonation/utils/Size;->Height:I

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 51
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v2, p0, Lcom/fotonation/utils/Point;->x:I

    .line 62
    iput v2, p0, Lcom/fotonation/utils/Point;->y:I

    .line 64
    if-eqz p1, :cond_29

    .line 65
    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 66
    const/4 v1, -0x1

    if-eq v0, v1, :cond_29

    .line 67
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fotonation/utils/Point;->x:I

    .line 68
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 60
    :cond_29
    return-void
.end method


# virtual methods
.method public Add(Lcom/fotonation/utils/Point;)V
    .registers 4

    .prologue
    .line 162
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    iget v1, p1, Lcom/fotonation/utils/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 163
    iget v0, p0, Lcom/fotonation/utils/Point;->y:I

    iget v1, p1, Lcom/fotonation/utils/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 161
    return-void
.end method

.method public Add(Lcom/fotonation/utils/Size;)V
    .registers 4

    .prologue
    .line 153
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 154
    iget v0, p0, Lcom/fotonation/utils/Point;->y:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 152
    return-void
.end method

.method public AsSize()Lcom/fotonation/utils/Size;
    .registers 4

    .prologue
    .line 77
    new-instance v0, Lcom/fotonation/utils/Size;

    iget v1, p0, Lcom/fotonation/utils/Point;->x:I

    iget v2, p0, Lcom/fotonation/utils/Point;->y:I

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Size;-><init>(II)V

    return-object v0
.end method

.method public Copy(Lcom/fotonation/utils/Point;)V
    .registers 3

    .prologue
    .line 189
    iget v0, p1, Lcom/fotonation/utils/Point;->x:I

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 190
    iget v0, p1, Lcom/fotonation/utils/Point;->y:I

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 188
    return-void
.end method

.method public GetDistance()D
    .registers 4

    .prologue
    .line 126
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    iget v1, p0, Lcom/fotonation/utils/Point;->x:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/fotonation/utils/Point;->y:I

    iget v2, p0, Lcom/fotonation/utils/Point;->y:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public GetDistance(Lcom/fotonation/utils/Point;)D
    .registers 5

    .prologue
    .line 116
    iget v0, p1, Lcom/fotonation/utils/Point;->x:I

    iget v1, p0, Lcom/fotonation/utils/Point;->x:I

    sub-int/2addr v0, v1

    .line 117
    iget v1, p1, Lcom/fotonation/utils/Point;->y:I

    iget v2, p0, Lcom/fotonation/utils/Point;->y:I

    sub-int/2addr v1, v2

    .line 118
    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public IsEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 198
    iget v1, p0, Lcom/fotonation/utils/Point;->x:I

    if-nez v1, :cond_a

    iget v1, p0, Lcom/fotonation/utils/Point;->y:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public Offset(II)V
    .registers 4

    .prologue
    .line 144
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 145
    iget v0, p0, Lcom/fotonation/utils/Point;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 143
    return-void
.end method

.method public Offset(Lcom/fotonation/utils/Point;)V
    .registers 4

    .prologue
    .line 134
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    iget v1, p1, Lcom/fotonation/utils/Point;->x:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 135
    iget v0, p0, Lcom/fotonation/utils/Point;->y:I

    iget v1, p1, Lcom/fotonation/utils/Point;->y:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 133
    return-void
.end method

.method public SetX(I)V
    .registers 2

    .prologue
    .line 92
    iput p1, p0, Lcom/fotonation/utils/Point;->x:I

    .line 91
    return-void
.end method

.method public SetY(I)V
    .registers 2

    .prologue
    .line 107
    iput p1, p0, Lcom/fotonation/utils/Point;->y:I

    .line 106
    return-void
.end method

.method public Subtract(Lcom/fotonation/utils/Point;)V
    .registers 4

    .prologue
    .line 180
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->X()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 181
    iget v0, p0, Lcom/fotonation/utils/Point;->y:I

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->Y()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 179
    return-void
.end method

.method public Subtract(Lcom/fotonation/utils/Size;)V
    .registers 4

    .prologue
    .line 171
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->x:I

    .line 172
    iget v0, p0, Lcom/fotonation/utils/Point;->y:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Point;->y:I

    .line 170
    return-void
.end method

.method public X()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/fotonation/utils/Point;->x:I

    return v0
.end method

.method public Y()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/fotonation/utils/Point;->y:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 203
    if-ne p0, p1, :cond_5

    .line 204
    return v0

    .line 206
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fotonation/utils/Point;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 207
    :cond_11
    return v1

    .line 209
    :cond_12
    check-cast p1, Lcom/fotonation/utils/Point;

    .line 210
    iget v2, p1, Lcom/fotonation/utils/Point;->x:I

    iget v3, p0, Lcom/fotonation/utils/Point;->x:I

    if-ne v2, v3, :cond_21

    iget v2, p1, Lcom/fotonation/utils/Point;->y:I

    iget v3, p0, Lcom/fotonation/utils/Point;->y:I

    if-ne v2, v3, :cond_21

    :goto_20
    return v0

    :cond_21
    move v0, v1

    goto :goto_20
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/fotonation/utils/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fotonation/utils/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
