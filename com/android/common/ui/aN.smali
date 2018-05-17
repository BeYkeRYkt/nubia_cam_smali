.class final Lcom/android/common/ui/aN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic DP:Lcom/android/common/ui/F;

.field final synthetic DQ:[Landroid/widget/TextView;

.field final synthetic DR:Landroid/view/ViewTreeObserver;

.field final synthetic DS:[I

.field final synthetic DT:[I

.field final synthetic DU:Landroid/widget/FrameLayout;


# direct methods
.method constructor <init>(Lcom/android/common/ui/F;[Landroid/widget/TextView;Landroid/view/ViewTreeObserver;[I[ILandroid/widget/FrameLayout;)V
    .registers 7

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    iput-object p2, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/common/ui/aN;->DR:Landroid/view/ViewTreeObserver;

    iput-object p4, p0, Lcom/android/common/ui/aN;->DS:[I

    iput-object p5, p0, Lcom/android/common/ui/aN;->DT:[I

    iput-object p6, p0, Lcom/android/common/ui/aN;->DU:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 15

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 199
    iget-object v0, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    if-nez v0, :cond_d

    .line 200
    :cond_c
    return-void

    .line 202
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/aN;->DR:Landroid/view/ViewTreeObserver;

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 203
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/o;

    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/aN;->DS:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 204
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zM(Lcom/android/common/ui/F;)Z

    move-result v0

    if-eqz v0, :cond_ae

    .line 205
    iget-object v0, p0, Lcom/android/common/ui/aN;->DS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    .line 208
    :goto_3f
    iget-object v1, p0, Lcom/android/common/ui/aN;->DT:[I

    const/4 v2, 0x0

    aput v0, v1, v2

    .line 209
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "0 left:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/aN;->DT:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 210
    const/4 v0, 0x1

    :goto_63
    iget-object v1, p0, Lcom/android/common/ui/aN;->DT:[I

    array-length v1, v1

    if-ge v0, v1, :cond_cd

    .line 211
    iget-object v2, p0, Lcom/android/common/ui/aN;->DT:[I

    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zM(Lcom/android/common/ui/F;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 212
    iget-object v1, p0, Lcom/android/common/ui/aN;->DT:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    iget-object v3, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    .line 211
    :goto_81
    aput v1, v2, v0

    .line 214
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "left: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ui/aN;->DT:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_63

    .line 206
    :cond_ae
    iget-object v0, p0, Lcom/android/common/ui/aN;->DS:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-virtual {v1}, Lcom/android/common/ui/F;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_3f

    .line 213
    :cond_bb
    iget-object v1, p0, Lcom/android/common/ui/aN;->DT:[I

    add-int/lit8 v3, v0, -0x1

    aget v1, v1, v3

    iget-object v3, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_81

    .line 218
    :cond_cd
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 219
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-virtual {v1, v0}, Lcom/android/common/ui/F;->getLocationOnScreen([I)V

    .line 220
    const/4 v1, 0x0

    aget v5, v0, v1

    .line 223
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v6, v1, [Landroid/animation/ObjectAnimator;

    .line 224
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    new-array v7, v1, [Landroid/animation/ObjectAnimator;

    .line 225
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ee66666    # 0.45f

    const v4, 0x3edc28f6    # 0.43f

    invoke-direct {v8, v1, v3, v4, v2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 226
    const/4 v3, 0x0

    .line 227
    const/4 v1, 0x2

    new-array v9, v1, [I

    .line 229
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zM(Lcom/android/common/ui/F;)Z

    move-result v1

    if-eqz v1, :cond_193

    .line 230
    iget-object v1, p0, Lcom/android/common/ui/aN;->DS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v1, v2

    .line 231
    const/4 v2, 0x0

    aget v0, v0, v2

    rsub-int/lit8 v0, v0, 0x0

    move v2, v1

    move v1, v0

    .line 236
    :goto_126
    const/4 v0, 0x0

    move v4, v3

    move v3, v0

    :goto_129
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v3, v0, :cond_1cd

    .line 237
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/o;

    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v0

    .line 238
    invoke-virtual {v0, v9}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 239
    if-nez v4, :cond_1a4

    .line 240
    const-string/jumbo v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v11, v13

    int-to-float v12, v2

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v6, v3

    .line 241
    const-string/jumbo v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    int-to-float v12, v2

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v7, v3

    .line 246
    :goto_172
    aget-object v10, v6, v3

    invoke-virtual {v10, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 247
    aget-object v10, v7, v3

    invoke-virtual {v10, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 248
    aget-object v10, v6, v3

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 249
    aget-object v10, v7, v3

    const-wide/16 v12, 0xc8

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 250
    iget-object v10, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    if-ne v0, v10, :cond_18f

    .line 251
    const/4 v4, 0x1

    .line 236
    :cond_18f
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_129

    .line 233
    :cond_193
    iget-object v1, p0, Lcom/android/common/ui/aN;->DS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v1, v2

    .line 234
    const/4 v2, 0x0

    aget v0, v0, v2

    rsub-int v0, v0, 0x438

    move v2, v1

    move v1, v0

    goto :goto_126

    .line 243
    :cond_1a4
    const-string/jumbo v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v11, v13

    int-to-float v12, v1

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v6, v3

    .line 244
    const-string/jumbo v10, "translationX"

    const/4 v11, 0x2

    new-array v11, v11, [F

    int-to-float v12, v1

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x0

    const/4 v13, 0x1

    aput v12, v11, v13

    invoke-static {v0, v10, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    aput-object v10, v7, v3

    goto :goto_172

    .line 254
    :cond_1cd
    const/4 v0, 0x0

    :goto_1ce
    iget-object v1, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    array-length v1, v1

    if-ge v0, v1, :cond_289

    .line 255
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v9, 0x0

    const/4 v10, 0x0

    aput v9, v4, v10

    iget-object v9, p0, Lcom/android/common/ui/aN;->DT:[I

    aget v9, v9, v0

    sub-int/2addr v9, v5

    int-to-float v9, v9

    const/4 v10, 0x1

    aput v9, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v6, v1

    .line 256
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/android/common/ui/aN;->DQ:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const-string/jumbo v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    iget-object v9, p0, Lcom/android/common/ui/aN;->DT:[I

    aget v9, v9, v0

    sub-int/2addr v9, v5

    int-to-float v9, v9

    const/4 v10, 0x0

    aput v9, v4, v10

    const/4 v9, 0x0

    const/4 v10, 0x1

    aput v9, v4, v10

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v7, v1

    .line 257
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    aget-object v1, v6, v1

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 258
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    aget-object v1, v7, v1

    invoke-virtual {v1, v8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 259
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    aget-object v1, v6, v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 260
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v1}, Lcom/android/common/ui/F;->zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    aget-object v1, v7, v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 261
    iget-object v1, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "animationDis: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ui/aN;->DT:[I

    aget v3, v3, v0

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/ui/F;->zN(Lcom/android/common/ui/F;Ljava/lang/String;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1ce

    .line 263
    :cond_289
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/common/ui/aN;->DU:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_322

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v6, v0

    .line 264
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/android/common/ui/aN;->DU:Landroid/widget/FrameLayout;

    const-string/jumbo v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_32a

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    aput-object v1, v7, v0

    .line 265
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v6, v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v7, v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 267
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v6, v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 268
    array-length v0, v7

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v7, v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 270
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zK(Lcom/android/common/ui/F;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 271
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-static {v0, v1}, Lcom/android/common/ui/F;->zJ(Lcom/android/common/ui/F;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    .line 272
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zH(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 273
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zE(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 275
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zH(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/common/ui/aO;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aO;-><init>(Lcom/android/common/ui/aN;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 302
    iget-object v0, p0, Lcom/android/common/ui/aN;->DP:Lcom/android/common/ui/F;

    invoke-static {v0}, Lcom/android/common/ui/F;->zE(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Lcom/android/common/ui/aP;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aP;-><init>(Lcom/android/common/ui/aN;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 197
    return-void

    .line 263
    :array_322
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 264
    :array_32a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
