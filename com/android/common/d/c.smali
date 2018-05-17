.class public Lcom/android/common/d/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/d/e;


# instance fields
.field private MD:Landroid/graphics/Bitmap;

.field private ME:I

.field private MF:Landroid/net/Uri;

.field private MG:F


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/graphics/Bitmap;IF)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/common/d/c;->MF:Landroid/net/Uri;

    .line 10
    iput-object v0, p0, Lcom/android/common/d/c;->MD:Landroid/graphics/Bitmap;

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/d/c;->ME:I

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/common/d/c;->MG:F

    .line 15
    iput-object p1, p0, Lcom/android/common/d/c;->MF:Landroid/net/Uri;

    .line 16
    iput-object p2, p0, Lcom/android/common/d/c;->MD:Landroid/graphics/Bitmap;

    .line 17
    iput p3, p0, Lcom/android/common/d/c;->ME:I

    .line 18
    iput p4, p0, Lcom/android/common/d/c;->MG:F

    .line 14
    return-void
.end method


# virtual methods
.method public Jl()Lcom/android/common/m/a;
    .registers 5

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/common/d/c;->MD:Landroid/graphics/Bitmap;

    .line 24
    iget-object v1, p0, Lcom/android/common/d/c;->MD:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/common/d/c;->MG:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    .line 25
    iget-object v2, p0, Lcom/android/common/d/c;->MD:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/common/d/c;->MG:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 26
    const/4 v3, 0x1

    .line 23
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/d/c;->MD:Landroid/graphics/Bitmap;

    .line 27
    iget-object v0, p0, Lcom/android/common/d/c;->MF:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/common/d/c;->MD:Landroid/graphics/Bitmap;

    iget v2, p0, Lcom/android/common/d/c;->ME:I

    invoke-static {v0, v1, v2}, Lcom/android/common/m/a;->agS(Landroid/net/Uri;Landroid/graphics/Bitmap;I)Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method
