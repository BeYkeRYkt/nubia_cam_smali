.class public Lcom/android/common/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/d/e;


# instance fields
.field private MA:I

.field private MB:[B

.field private MC:F

.field private Mx:I

.field private My:I

.field private Mz:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;[BIFII)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object v0, p0, Lcom/android/common/d/b;->Mz:Landroid/net/Uri;

    .line 12
    iput-object v0, p0, Lcom/android/common/d/b;->MB:[B

    .line 13
    iput v1, p0, Lcom/android/common/d/b;->My:I

    .line 14
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/common/d/b;->MC:F

    .line 15
    iput v1, p0, Lcom/android/common/d/b;->MA:I

    .line 16
    iput v1, p0, Lcom/android/common/d/b;->Mx:I

    .line 20
    iput-object p1, p0, Lcom/android/common/d/b;->Mz:Landroid/net/Uri;

    .line 21
    iput-object p2, p0, Lcom/android/common/d/b;->MB:[B

    .line 22
    iput p3, p0, Lcom/android/common/d/b;->My:I

    .line 23
    iput p4, p0, Lcom/android/common/d/b;->MC:F

    .line 24
    iput p5, p0, Lcom/android/common/d/b;->MA:I

    .line 25
    iput p6, p0, Lcom/android/common/d/b;->Mx:I

    .line 19
    return-void
.end method


# virtual methods
.method public Jl()Lcom/android/common/m/a;
    .registers 5

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/common/d/b;->MB:[B

    iget v1, p0, Lcom/android/common/d/b;->MA:I

    iget v2, p0, Lcom/android/common/d/b;->Mx:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/common/D;->avZ([BIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/d/b;->MC:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 33
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/common/d/b;->MC:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 34
    const/4 v3, 0x1

    .line 31
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/common/d/b;->Mz:Landroid/net/Uri;

    iget v2, p0, Lcom/android/common/d/b;->My:I

    invoke-static {v1, v0, v2}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method
