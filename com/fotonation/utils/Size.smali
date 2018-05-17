.class public Lcom/fotonation/utils/Size;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public Height:I

.field public Width:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 25
    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 23
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput p1, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 44
    iput p2, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/fotonation/utils/Point;)V
    .registers 3

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->X()I

    move-result v0

    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 53
    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->Y()I

    move-result v0

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/fotonation/utils/Size;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iget v0, p1, Lcom/fotonation/utils/Size;->Width:I

    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 34
    iget v0, p1, Lcom/fotonation/utils/Size;->Height:I

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v2, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 62
    iput v2, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 64
    if-eqz p1, :cond_29

    .line 65
    const/16 v0, 0x78

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

    iput v1, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 68
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 60
    :cond_29
    return-void
.end method


# virtual methods
.method public Add(Lcom/fotonation/utils/Point;)V
    .registers 4

    .prologue
    .line 87
    iget v0, p0, Lcom/fotonation/utils/Size;->Width:I

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->X()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 88
    iget v0, p0, Lcom/fotonation/utils/Size;->Height:I

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->Y()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 86
    return-void
.end method

.method public Add(Lcom/fotonation/utils/Size;)V
    .registers 4

    .prologue
    .line 78
    iget v0, p0, Lcom/fotonation/utils/Size;->Width:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Width:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 79
    iget v0, p0, Lcom/fotonation/utils/Size;->Height:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Height:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 77
    return-void
.end method

.method public AsPoint()Lcom/fotonation/utils/Point;
    .registers 4

    .prologue
    .line 122
    new-instance v0, Lcom/fotonation/utils/Point;

    iget v1, p0, Lcom/fotonation/utils/Size;->Width:I

    iget v2, p0, Lcom/fotonation/utils/Size;->Height:I

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Point;-><init>(II)V

    return-object v0
.end method

.method public IsEmpty()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 130
    iget v1, p0, Lcom/fotonation/utils/Size;->Width:I

    if-nez v1, :cond_a

    iget v1, p0, Lcom/fotonation/utils/Size;->Height:I

    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public Scale(I)V
    .registers 3

    .prologue
    .line 114
    iget v0, p0, Lcom/fotonation/utils/Size;->Width:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 115
    iget v0, p0, Lcom/fotonation/utils/Size;->Height:I

    mul-int/2addr v0, p1

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 113
    return-void
.end method

.method public Subtract(Lcom/fotonation/utils/Point;)V
    .registers 4

    .prologue
    .line 105
    iget v0, p0, Lcom/fotonation/utils/Size;->Width:I

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->X()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 106
    iget v0, p0, Lcom/fotonation/utils/Size;->Height:I

    invoke-virtual {p1}, Lcom/fotonation/utils/Point;->Y()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 104
    return-void
.end method

.method public Subtract(Lcom/fotonation/utils/Size;)V
    .registers 4

    .prologue
    .line 96
    iget v0, p0, Lcom/fotonation/utils/Size;->Width:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Width:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Width:I

    .line 97
    iget v0, p0, Lcom/fotonation/utils/Size;->Height:I

    iget v1, p1, Lcom/fotonation/utils/Size;->Height:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/fotonation/utils/Size;->Height:I

    .line 95
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 135
    if-ne p0, p1, :cond_5

    .line 136
    return v0

    .line 138
    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lcom/fotonation/utils/Size;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    .line 139
    :cond_11
    return v1

    .line 141
    :cond_12
    check-cast p1, Lcom/fotonation/utils/Size;

    .line 142
    iget v2, p1, Lcom/fotonation/utils/Size;->Width:I

    iget v3, p0, Lcom/fotonation/utils/Size;->Width:I

    if-ne v2, v3, :cond_21

    iget v2, p1, Lcom/fotonation/utils/Size;->Height:I

    iget v3, p0, Lcom/fotonation/utils/Size;->Height:I

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
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/fotonation/utils/Size;->Width:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/fotonation/utils/Size;->Height:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
