.class public Lcom/android/clone/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aTF:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/clone/j;->aTF:I

    .line 7
    return-void
.end method


# virtual methods
.method public bkQ()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/android/clone/j;->aTF:I

    return v0
.end method

.method public bkR()V
    .registers 2

    .prologue
    .line 114
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/clone/j;->aTF:I

    .line 115
    invoke-static {}, Lcom/android/clone/CloneJni;->bkp()I

    .line 113
    return-void
.end method

.method public bkS(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 82
    invoke-static {p1}, Lcom/android/clone/CloneJni;->bkw(Landroid/graphics/Bitmap;)I

    .line 81
    return-void
.end method

.method public bkT()[B
    .registers 2

    .prologue
    .line 91
    invoke-static {}, Lcom/android/clone/CloneJni;->bkq()[B

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public bkU([BILandroid/graphics/Bitmap;IIII)I
    .registers 16

    .prologue
    .line 21
    iget v0, p0, Lcom/android/clone/j;->aTF:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_10

    .line 22
    const-string/jumbo v0, "Clone"

    const-string/jumbo v1, "savePicture failed, because mPicture > 5"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const/4 v0, -0x1

    return v0

    .line 26
    :cond_10
    iget v0, p0, Lcom/android/clone/j;->aTF:I

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/android/clone/CloneJni;->bkx(IIIII[BILandroid/graphics/Bitmap;)I

    move-result v0

    .line 28
    iget v1, p0, Lcom/android/clone/j;->aTF:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/clone/j;->aTF:I

    .line 29
    if-gez v0, :cond_41

    .line 30
    const-string/jumbo v1, "Clone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "savePicture failed, because ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 v0, -0x1

    return v0

    .line 33
    :cond_41
    iget v0, p0, Lcom/android/clone/j;->aTF:I

    return v0
.end method

.method public bkV(ILandroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 103
    invoke-static {p1, p2}, Lcom/android/clone/CloneJni;->bks(ILandroid/graphics/Bitmap;)I

    .line 102
    return-void
.end method

.method public bkW(ILandroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 107
    invoke-static {p1, p2}, Lcom/android/clone/CloneJni;->bkt(ILandroid/graphics/Bitmap;)I

    .line 106
    return-void
.end method

.method public bkX(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 52
    invoke-static {p1}, Lcom/android/clone/CloneJni;->bkr(Landroid/graphics/Bitmap;)I

    .line 51
    return-void
.end method

.method public bkY(ILandroid/graphics/Bitmap;)V
    .registers 3

    .prologue
    .line 73
    invoke-static {p1, p2}, Lcom/android/clone/CloneJni;->bku(ILandroid/graphics/Bitmap;)I

    .line 72
    return-void
.end method

.method public bkZ(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .registers 4

    .prologue
    .line 63
    invoke-static {p1, p2, p3}, Lcom/android/clone/CloneJni;->bkv(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    .line 62
    return-void
.end method
