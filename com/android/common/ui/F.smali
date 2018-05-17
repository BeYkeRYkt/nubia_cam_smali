.class public Lcom/android/common/ui/F;
.super Lcom/android/common/ui/RotateImageView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static vo:Z

.field private static final vp:I

.field private static final vq:I


# instance fields
.field private uY:Z

.field private uZ:Z

.field private va:Lcom/android/common/ui/Y;

.field private vb:Ljava/util/ArrayList;

.field protected vc:Lcom/android/common/camerastate/a;

.field protected vd:I

.field private ve:Landroid/animation/AnimatorSet;

.field private vf:Landroid/widget/TextView;

.field private vg:[Landroid/widget/TextView;

.field private vh:Landroid/widget/FrameLayout;

.field protected vi:Lcom/android/common/setting/IconListPreference;

.field private vj:I

.field private vk:Landroid/widget/TextView;

.field private vl:Landroid/animation/AnimatorSet;

.field private final vm:I

.field private final vn:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xff

    .line 51
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/common/ui/F;->vp:I

    .line 52
    const/16 v0, 0xaa

    const/16 v1, 0x33

    invoke-static {v2, v2, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/android/common/ui/F;->vq:I

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/common/ui/F;->vo:Z

    .line 42
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/common/ui/RotateImageView;-><init>(Landroid/content/Context;)V

    .line 45
    iput-object v2, p0, Lcom/android/common/ui/F;->vb:Ljava/util/ArrayList;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/ui/F;->vj:I

    .line 49
    iput-object v2, p0, Lcom/android/common/ui/F;->vc:Lcom/android/common/camerastate/a;

    .line 53
    invoke-virtual {p0}, Lcom/android/common/ui/F;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0111

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/F;->vm:I

    .line 54
    invoke-virtual {p0}, Lcom/android/common/ui/F;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/F;->vn:I

    .line 56
    iput-object v2, p0, Lcom/android/common/ui/F;->vk:Landroid/widget/TextView;

    .line 57
    iput-object v2, p0, Lcom/android/common/ui/F;->vh:Landroid/widget/FrameLayout;

    .line 58
    iput-object v2, p0, Lcom/android/common/ui/F;->vf:Landroid/widget/TextView;

    .line 59
    iput-object v2, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    .line 61
    iput-boolean v3, p0, Lcom/android/common/ui/F;->uZ:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/common/ui/F;->uY:Z

    .line 74
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/ui/F;->vd:I

    .line 76
    return-void
.end method

.method private zB(Z)V
    .registers 4

    .prologue
    .line 463
    if-eqz p1, :cond_a

    .line 464
    iget-object v0, p0, Lcom/android/common/ui/F;->vc:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amO(Lcom/android/common/camerastate/UIState;)V

    .line 462
    :goto_9
    return-void

    .line 466
    :cond_a
    iget-object v0, p0, Lcom/android/common/ui/F;->vc:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amN(Lcom/android/common/camerastate/UIState;)V

    goto :goto_9
.end method

.method static synthetic zC(Lcom/android/common/ui/F;)Lcom/android/common/ui/Y;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/F;->va:Lcom/android/common/ui/Y;

    return-object v0
.end method

.method static synthetic zD(Lcom/android/common/ui/F;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/F;->vb:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic zE(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic zF(Lcom/android/common/ui/F;)Landroid/widget/FrameLayout;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/F;->vh:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic zG(Lcom/android/common/ui/F;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/F;->vj:I

    return v0
.end method

.method static synthetic zH(Lcom/android/common/ui/F;)Landroid/animation/AnimatorSet;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic zI(Lcom/android/common/ui/F;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/ui/F;->uY:Z

    return p1
.end method

.method static synthetic zJ(Lcom/android/common/ui/F;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic zK(Lcom/android/common/ui/F;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic zL(Z)Z
    .registers 1

    sput-boolean p0, Lcom/android/common/ui/F;->vo:Z

    return p0
.end method

.method static synthetic zM(Lcom/android/common/ui/F;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/ui/F;->zs()Z

    move-result v0

    return v0
.end method

.method static synthetic zN(Lcom/android/common/ui/F;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/F;->zv(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zO(Lcom/android/common/ui/F;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/F;->zx()V

    return-void
.end method

.method static synthetic zP(Lcom/android/common/ui/F;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/ui/F;->zB(Z)V

    return-void
.end method

.method private zm(Ljava/lang/CharSequence;ILandroid/widget/FrameLayout;IIII)Landroid/widget/TextView;
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 159
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/common/ui/F;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 160
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    int-to-float v1, p7

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 162
    invoke-virtual {v0, p5, v2, p6, v2}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 163
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 164
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 165
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 167
    sget v1, Lcom/android/common/ui/F;->vp:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    new-instance v1, Lcom/android/common/ui/aM;

    invoke-direct {v1, p0, p2}, Lcom/android/common/ui/aM;-><init>(Lcom/android/common/ui/F;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 176
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    .line 177
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    add-int/2addr v1, p5

    add-int/2addr v1, p6

    const/4 v3, -0x1

    invoke-direct {v2, v1, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 178
    const/16 v1, 0x10

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 179
    iput p4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 180
    invoke-virtual {p3, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 182
    return-object v0
.end method

.method private zp()V
    .registers 11

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 357
    iget-boolean v0, p0, Lcom/android/common/ui/F;->uZ:Z

    if-eqz v0, :cond_7

    .line 358
    return-void

    .line 361
    :cond_7
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v8

    .line 362
    array-length v0, v8

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    .line 365
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 366
    invoke-virtual {p0, v0}, Lcom/android/common/ui/F;->getLocationOnScreen([I)V

    .line 367
    aget v4, v0, v2

    .line 370
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/common/ui/F;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/ui/F;->vh:Landroid/widget/FrameLayout;

    .line 371
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 372
    invoke-virtual {p0}, Lcom/android/common/ui/F;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iget-object v3, p0, Lcom/android/common/ui/F;->vh:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    :goto_35
    array-length v0, v8

    if-ge v2, v0, :cond_55

    .line 376
    iget-object v9, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    aget-object v1, v8, v2

    iget-object v3, p0, Lcom/android/common/ui/F;->vh:Landroid/widget/FrameLayout;

    .line 378
    if-nez v2, :cond_52

    iget v0, p0, Lcom/android/common/ui/F;->vm:I

    mul-int/lit8 v5, v0, 0x2

    .line 379
    :goto_44
    iget v6, p0, Lcom/android/common/ui/F;->vm:I

    .line 380
    iget v7, p0, Lcom/android/common/ui/F;->vn:I

    move-object v0, p0

    .line 376
    invoke-direct/range {v0 .. v7}, Lcom/android/common/ui/F;->zm(Ljava/lang/CharSequence;ILandroid/widget/FrameLayout;IIII)Landroid/widget/TextView;

    move-result-object v0

    aput-object v0, v9, v2

    .line 375
    add-int/lit8 v2, v2, 0x1

    goto :goto_35

    .line 378
    :cond_52
    iget v5, p0, Lcom/android/common/ui/F;->vm:I

    goto :goto_44

    .line 383
    :cond_55
    iget-object v0, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    iget v1, p0, Lcom/android/common/ui/F;->vj:I

    aget-object v0, v0, v1

    sget v1, Lcom/android/common/ui/F;->vq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 386
    iget-object v0, p0, Lcom/android/common/ui/F;->vh:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/F;->zr(Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V

    .line 389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/F;->uZ:Z

    .line 356
    return-void
.end method

.method private zr(Landroid/widget/FrameLayout;[Landroid/widget/TextView;)V
    .registers 10

    .prologue
    .line 187
    const/4 v0, 0x2

    new-array v4, v0, [I

    .line 188
    iget-object v0, p0, Lcom/android/common/ui/F;->vb:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/o;

    invoke-virtual {v0}, Lcom/android/common/o/o;->alV()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 191
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    new-array v5, v0, [I

    .line 193
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    .line 194
    new-instance v0, Lcom/android/common/ui/aN;

    move-object v1, p0

    move-object v2, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/common/ui/aN;-><init>(Lcom/android/common/ui/F;[Landroid/widget/TextView;Landroid/view/ViewTreeObserver;[I[ILandroid/widget/FrameLayout;)V

    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 338
    new-instance v0, Lcom/android/common/ui/aQ;

    invoke-direct {v0, p0, v3}, Lcom/android/common/ui/aQ;-><init>(Lcom/android/common/ui/F;Landroid/view/ViewTreeObserver;)V

    .line 353
    invoke-virtual {v3, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 185
    return-void
.end method

.method private zs()Z
    .registers 2

    .prologue
    .line 505
    sget-boolean v0, Lcom/android/common/h;->ahq:Z

    return v0
.end method

.method private zt()Z
    .registers 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/common/ui/F;->vc:Lcom/android/common/camerastate/a;

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private zv(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 510
    const-string/jumbo v0, "NubiaPopupSwitcherButton"

    invoke-static {v0, p1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    return-void
.end method

.method private zw()V
    .registers 2

    .prologue
    .line 148
    sget-boolean v0, Lcom/android/common/ui/F;->vo:Z

    if-nez v0, :cond_1c

    invoke-direct {p0}, Lcom/android/common/ui/F;->zt()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 149
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/common/ui/F;->vo:Z

    .line 150
    iget-object v0, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 151
    iget-object v0, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 152
    iget-object v0, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 147
    :cond_1c
    return-void
.end method

.method private zx()V
    .registers 2

    .prologue
    .line 139
    sget-boolean v0, Lcom/android/common/ui/F;->vo:Z

    if-nez v0, :cond_a

    invoke-direct {p0}, Lcom/android/common/ui/F;->zt()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 138
    :cond_a
    :goto_a
    return-void

    .line 140
    :cond_b
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/common/ui/F;->vo:Z

    .line 141
    iget-object v0, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 142
    iget-object v0, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 143
    iget-object v0, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_a
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 425
    iget-boolean v0, p0, Lcom/android/common/ui/F;->uY:Z

    if-eqz v0, :cond_8

    .line 426
    invoke-direct {p0}, Lcom/android/common/ui/F;->zw()V

    .line 424
    :goto_7
    return-void

    .line 428
    :cond_8
    invoke-virtual {p0}, Lcom/android/common/ui/F;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_27

    .line 429
    iget-object v0, p0, Lcom/android/common/ui/F;->vc:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 433
    new-instance v0, Lcom/android/common/c/j;

    invoke-direct {v0, p0}, Lcom/android/common/c/j;-><init>(Lcom/android/common/ui/F;)V

    .line 434
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    goto :goto_7

    .line 430
    :cond_27
    const-string/jumbo v0, "NubiaPopupSwitcherButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cannot expand, visibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/common/ui/F;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 440
    iget-object v0, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_c

    .line 441
    iget-object v0, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 442
    iput-object v1, p0, Lcom/android/common/ui/F;->ve:Landroid/animation/AnimatorSet;

    .line 444
    :cond_c
    iget-object v0, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_17

    .line 445
    iget-object v0, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 446
    iput-object v1, p0, Lcom/android/common/ui/F;->vl:Landroid/animation/AnimatorSet;

    .line 448
    :cond_17
    iget-object v0, p0, Lcom/android/common/ui/F;->vb:Ljava/util/ArrayList;

    if-eqz v0, :cond_22

    .line 449
    iget-object v0, p0, Lcom/android/common/ui/F;->vb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 450
    iput-object v1, p0, Lcom/android/common/ui/F;->vb:Ljava/util/ArrayList;

    .line 453
    :cond_22
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/common/ui/F;->zB(Z)V

    .line 454
    invoke-super {p0}, Lcom/android/common/ui/RotateImageView;->onDetachedFromWindow()V

    .line 439
    return-void
.end method

.method protected zA(I)V
    .registers 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    if-eqz v0, :cond_42

    if-ltz p1, :cond_42

    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v0

    array-length v0, v0

    if-gt p1, v0, :cond_42

    .line 125
    iget v0, p0, Lcom/android/common/ui/F;->vj:I

    .line 126
    iget-object v1, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1, p1}, Lcom/android/common/setting/IconListPreference;->Vt(I)V

    .line 127
    iget-object v1, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v1

    aget v1, v1, p1

    invoke-virtual {p0, v1}, Lcom/android/common/ui/F;->setImageResource(I)V

    .line 128
    iget-object v1, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    if-eqz v1, :cond_37

    .line 129
    iget-object v1, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    aget-object v0, v1, v0

    sget v1, Lcom/android/common/ui/F;->vp:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    iget-object v0, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    aget-object v0, v0, p1

    sget v1, Lcom/android/common/ui/F;->vq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    :cond_37
    iput p1, p0, Lcom/android/common/ui/F;->vj:I

    .line 133
    iget-object v0, p0, Lcom/android/common/ui/F;->va:Lcom/android/common/ui/Y;

    if-eqz v0, :cond_42

    .line 134
    iget-object v0, p0, Lcom/android/common/ui/F;->va:Lcom/android/common/ui/Y;

    invoke-interface {v0}, Lcom/android/common/ui/Y;->Dl()V

    .line 123
    :cond_42
    return-void
.end method

.method public zj(Lcom/android/common/setting/IconListPreference;Lcom/android/common/camerastate/a;)V
    .registers 5

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    .line 86
    iput-object p2, p0, Lcom/android/common/ui/F;->vc:Lcom/android/common/camerastate/a;

    .line 87
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vz()I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/F;->vj:I

    .line 88
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v0

    iget v1, p0, Lcom/android/common/ui/F;->vj:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/common/ui/F;->setImageResource(I)V

    .line 84
    return-void
.end method

.method public zk(Lcom/android/common/ui/Y;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/common/ui/F;->va:Lcom/android/common/ui/Y;

    .line 98
    return-void
.end method

.method public zl()V
    .registers 2

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/android/common/ui/F;->uZ:Z

    if-nez v0, :cond_8

    .line 394
    invoke-direct {p0}, Lcom/android/common/ui/F;->zp()V

    .line 392
    :goto_7
    return-void

    .line 396
    :cond_8
    invoke-direct {p0}, Lcom/android/common/ui/F;->zt()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 397
    invoke-direct {p0}, Lcom/android/common/ui/F;->zw()V

    goto :goto_7

    .line 399
    :cond_12
    invoke-direct {p0}, Lcom/android/common/ui/F;->zx()V

    goto :goto_7
.end method

.method public zn()V
    .registers 2

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/common/ui/F;->uZ:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/common/ui/F;->uY:Z

    if-eqz v0, :cond_c

    .line 106
    invoke-direct {p0}, Lcom/android/common/ui/F;->zw()V

    .line 102
    return-void

    .line 104
    :cond_c
    return-void
.end method

.method public zo(Landroid/view/View;I)V
    .registers 7

    .prologue
    .line 405
    sget-boolean v0, Lcom/android/common/ui/F;->vo:Z

    if-eqz v0, :cond_5

    .line 406
    return-void

    .line 409
    :cond_5
    iget-object v0, p0, Lcom/android/common/ui/F;->vg:[Landroid/widget/TextView;

    iget v1, p0, Lcom/android/common/ui/F;->vj:I

    aget-object v0, v0, v1

    .line 410
    if-eqz v0, :cond_12

    .line 411
    sget v1, Lcom/android/common/ui/F;->vp:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_12
    move-object v0, p1

    .line 413
    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/android/common/ui/F;->vq:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    iput p2, p0, Lcom/android/common/ui/F;->vj:I

    .line 415
    iget v0, p0, Lcom/android/common/ui/F;->vd:I

    if-nez v0, :cond_48

    .line 416
    invoke-virtual {p0}, Lcom/android/common/ui/F;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "flash"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    :cond_44
    :goto_44
    invoke-direct {p0}, Lcom/android/common/ui/F;->zw()V

    .line 404
    return-void

    .line 417
    :cond_48
    iget v0, p0, Lcom/android/common/ui/F;->vd:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_44

    .line 418
    invoke-virtual {p0}, Lcom/android/common/ui/F;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "delay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44
.end method

.method public zq(Ljava/util/ArrayList;)V
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 92
    iput-object p1, p0, Lcom/android/common/ui/F;->vb:Ljava/util/ArrayList;

    .line 93
    sput-boolean v0, Lcom/android/common/ui/F;->vo:Z

    .line 94
    iput-boolean v0, p0, Lcom/android/common/ui/F;->uY:Z

    .line 95
    invoke-virtual {p0, p0}, Lcom/android/common/ui/F;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method protected zu()Z
    .registers 2

    .prologue
    .line 459
    const/4 v0, 0x1

    return v0
.end method

.method public zy(Lcom/android/common/appService/W;)V
    .registers 4

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    if-nez v0, :cond_5

    .line 111
    return-void

    .line 114
    :cond_5
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/IconListPreference;

    iput-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    .line 115
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vz()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/F;->zA(I)V

    .line 109
    return-void
.end method

.method public zz()V
    .registers 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/common/ui/F;->vi:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vx()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/F;->zA(I)V

    .line 118
    return-void
.end method
