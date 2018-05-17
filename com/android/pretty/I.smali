.class final Lcom/android/pretty/I;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aFp:Lcom/android/pretty/u;

.field final synthetic aFq:Landroid/view/View;

.field final synthetic aFr:I

.field final synthetic aFs:I

.field final synthetic aFt:I

.field final synthetic aFu:I

.field final synthetic aFv:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/pretty/u;Landroid/view/View;IIIILjava/lang/String;)V
    .registers 8

    .prologue
    .line 260
    iput-object p1, p0, Lcom/android/pretty/I;->aFp:Lcom/android/pretty/u;

    iput-object p2, p0, Lcom/android/pretty/I;->aFq:Landroid/view/View;

    iput p3, p0, Lcom/android/pretty/I;->aFr:I

    iput p4, p0, Lcom/android/pretty/I;->aFs:I

    iput p5, p0, Lcom/android/pretty/I;->aFt:I

    iput p6, p0, Lcom/android/pretty/I;->aFu:I

    iput-object p7, p0, Lcom/android/pretty/I;->aFv:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 264
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 265
    iget-object v0, p0, Lcom/android/pretty/I;->aFq:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 267
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/pretty/I;->aFr:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 268
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/android/pretty/I;->aFs:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 269
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/android/pretty/I;->aFt:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 270
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v1, p0, Lcom/android/pretty/I;->aFu:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 272
    iget-object v0, p0, Lcom/android/pretty/I;->aFq:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 275
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_4d

    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_72

    .line 276
    :cond_4d
    const/4 v2, 0x1

    .line 277
    iget v4, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 278
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 279
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 280
    iget v4, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 283
    :cond_72
    new-instance v4, Lcom/android/pretty/w;

    iget-object v5, p0, Lcom/android/pretty/I;->aFp:Lcom/android/pretty/u;

    iget-object v6, p0, Lcom/android/pretty/I;->aFv:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/pretty/I;->aFq:Landroid/view/View;

    invoke-direct {v4, v5, v6, v3, v7}, Lcom/android/pretty/w;-><init>(Lcom/android/pretty/u;Ljava/lang/String;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 285
    if-eqz v2, :cond_83

    .line 286
    invoke-virtual {v1, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 263
    :goto_82
    return-void

    .line 288
    :cond_83
    invoke-virtual {v0, v4}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_82
.end method
