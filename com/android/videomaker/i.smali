.class public Lcom/android/videomaker/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected aMc:Landroid/graphics/Bitmap;

.field private aMd:I

.field private aMe:Ljava/lang/String;

.field protected aMf:Lcom/android/videomaker/p;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/android/videomaker/p;)V
    .registers 5

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/videomaker/i;->aMc:Landroid/graphics/Bitmap;

    .line 14
    iput p1, p0, Lcom/android/videomaker/i;->aMd:I

    .line 15
    iput-object p2, p0, Lcom/android/videomaker/i;->aMe:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/android/videomaker/i;->aMf:Lcom/android/videomaker/p;

    .line 17
    invoke-virtual {p0}, Lcom/android/videomaker/i;->bcg()V

    .line 13
    return-void
.end method


# virtual methods
.method public bcf()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 25
    iget-object v0, p0, Lcom/android/videomaker/i;->aMc:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/videomaker/i;->aMc:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 24
    :cond_d
    :goto_d
    return-void

    .line 26
    :cond_e
    iget-object v0, p0, Lcom/android/videomaker/i;->aMc:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 27
    iput-object v1, p0, Lcom/android/videomaker/i;->aMc:Landroid/graphics/Bitmap;

    goto :goto_d
.end method

.method public bcg()V
    .registers 2

    .prologue
    .line 21
    invoke-static {p0}, Lcom/android/videomaker/t;->beb(Lcom/android/videomaker/i;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/i;->aMc:Landroid/graphics/Bitmap;

    .line 20
    return-void
.end method

.method public bch()Landroid/graphics/Bitmap;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/videomaker/i;->aMc:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public bci()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/videomaker/i;->aMe:Ljava/lang/String;

    return-object v0
.end method

.method public bcj()Lcom/android/videomaker/p;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/videomaker/i;->aMf:Lcom/android/videomaker/p;

    return-object v0
.end method
