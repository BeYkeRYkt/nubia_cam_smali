.class public Lcom/android/common/ui/FaceView;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private final CP:Z

.field final CQ:I

.field private final CR:I

.field private CS:I

.field private final CT:Landroid/graphics/drawable/Drawable;

.field private final CU:Landroid/graphics/drawable/Drawable;

.field private final CV:Landroid/graphics/drawable/Drawable;

.field private CW:Landroid/graphics/drawable/Drawable;

.field private CX:[Landroid/hardware/Camera$Face;

.field CY:Landroid/os/Handler;

.field private CZ:Landroid/graphics/Matrix;

.field private Da:Z

.field private Db:I

.field private Dc:Landroid/graphics/Paint;

.field private Dd:Z

.field private De:Landroid/graphics/RectF;

.field private final Df:I

.field private final Dg:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/16 v4, 0x3c

    const/4 v3, 0x1

    const/4 v0, 0x0

    const v2, 0x7f0200e5

    const v1, 0x7f0200e1

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v0, p0, Lcom/android/common/ui/FaceView;->CP:Z

    .line 46
    iput v0, p0, Lcom/android/common/ui/FaceView;->CQ:I

    .line 55
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CZ:Landroid/graphics/Matrix;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->De:Landroid/graphics/RectF;

    .line 65
    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/common/ui/FaceView;->Df:I

    .line 66
    iput v4, p0, Lcom/android/common/ui/FaceView;->Dg:I

    .line 67
    iput v4, p0, Lcom/android/common/ui/FaceView;->CR:I

    .line 195
    new-instance v0, Lcom/android/common/ui/bs;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bs;-><init>(Lcom/android/common/ui/FaceView;)V

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CY:Landroid/os/Handler;

    .line 72
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adP()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 73
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CV:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CU:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CT:Landroid/graphics/drawable/Drawable;

    .line 82
    :goto_5a
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->CV:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CW:Landroid/graphics/drawable/Drawable;

    .line 84
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->Dc:Landroid/graphics/Paint;

    .line 85
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->Dc:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 86
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->Dc:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setDither(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->Dc:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->Dc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->Dc:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->Dc:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 69
    return-void

    .line 77
    :cond_8b
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CV:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CU:Landroid/graphics/drawable/Drawable;

    .line 79
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CT:Landroid/graphics/drawable/Drawable;

    goto :goto_5a
.end method


# virtual methods
.method public GD(I)V
    .registers 2

    .prologue
    .line 104
    iput p1, p0, Lcom/android/common/ui/FaceView;->CS:I

    .line 103
    return-void
.end method

.method public GE(Z)V
    .registers 2

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/common/ui/FaceView;->Da:Z

    .line 114
    return-void
.end method

.method public GF()V
    .registers 2

    .prologue
    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/FaceView;->Dd:Z

    .line 157
    return-void
.end method

.method public GG([Landroid/hardware/Camera$Face;)V
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 96
    iget-boolean v0, p0, Lcom/android/common/ui/FaceView;->Dd:Z

    if-eqz v0, :cond_6

    return-void

    .line 97
    :cond_6
    iput-object p1, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    .line 98
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->invalidate()V

    .line 99
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->CY:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 100
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->CY:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 94
    return-void
.end method

.method public GH()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 120
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-lez v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    return v0
.end method

.method public clear()V
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->CV:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CW:Landroid/graphics/drawable/Drawable;

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    .line 149
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->invalidate()V

    .line 150
    iget-object v0, p0, Lcom/android/common/ui/FaceView;->CY:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 144
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 163
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    if-eqz v1, :cond_74

    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-lez v1, :cond_74

    .line 165
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CZ:Landroid/graphics/Matrix;

    iget-boolean v2, p0, Lcom/android/common/ui/FaceView;->Da:Z

    iget v3, p0, Lcom/android/common/ui/FaceView;->CS:I

    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->getHeight()I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/common/h;->aqa(Landroid/graphics/Matrix;ZIII)V

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 170
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CZ:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/common/ui/FaceView;->Db:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 171
    iget v1, p0, Lcom/android/common/ui/FaceView;->Db:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 172
    :goto_2d
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    array-length v1, v1

    if-ge v0, v1, :cond_71

    .line 174
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->De:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/common/ui/FaceView;->CX:[Landroid/hardware/Camera$Face;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/hardware/Camera$Face;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 176
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CZ:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/common/ui/FaceView;->De:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 179
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CW:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/common/ui/FaceView;->De:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/common/ui/FaceView;->De:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 180
    iget-object v4, p0, Lcom/android/common/ui/FaceView;->De:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget-object v5, p0, Lcom/android/common/ui/FaceView;->De:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 179
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    iget-object v1, p0, Lcom/android/common/ui/FaceView;->CW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_2d

    .line 184
    :cond_71
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 186
    :cond_74
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 162
    return-void
.end method

.method public vn(IZ)V
    .registers 3

    .prologue
    .line 110
    iput p1, p0, Lcom/android/common/ui/FaceView;->Db:I

    .line 111
    invoke-virtual {p0}, Lcom/android/common/ui/FaceView;->invalidate()V

    .line 109
    return-void
.end method
