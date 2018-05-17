.class public Lcom/android/e/b;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/p;
.implements Lcom/android/common/ui/Q;


# instance fields
.field private aWA:Landroid/hardware/Camera$Size;

.field private aWB:F

.field aWC:Landroid/view/View;

.field private aWD:F

.field private aWE:F

.field private aWF:Landroid/os/Handler;

.field private aWG:[B

.field private aWH:I

.field private aWI:I

.field aWb:I

.field aWc:I

.field aWd:I

.field private aWe:Z

.field aWf:Z

.field aWg:Z

.field aWh:Z

.field private aWi:I

.field private aWj:F

.field private aWk:F

.field private aWl:Lcom/android/e/g;

.field private aWm:Lcom/android/common/g/a;

.field private aWn:Lcom/android/e/h;

.field private aWo:Lcom/fotonation/utils/Point;

.field private aWp:Landroid/graphics/Rect;

.field private aWq:Landroid/os/Handler;

.field private aWr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

.field private aWs:F

.field private aWt:F

.field aWu:Lcom/android/common/ui/RotateImageView;

.field aWv:Lcom/android/common/ui/RotateImageView;

.field private aWw:F

.field private aWx:F

.field private aWy:Landroid/graphics/Rect;

.field private aWz:Lcom/android/e/d;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0xb4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 52
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/android/e/b;->aWB:F

    .line 58
    iput-boolean v3, p0, Lcom/android/e/b;->aWe:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/e/b;->aWf:Z

    .line 60
    iput-boolean v3, p0, Lcom/android/e/b;->aWg:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/e/b;->aWh:Z

    .line 63
    iput v1, p0, Lcom/android/e/b;->aWs:F

    iput v1, p0, Lcom/android/e/b;->aWt:F

    .line 67
    iput v1, p0, Lcom/android/e/b;->aWw:F

    iput v1, p0, Lcom/android/e/b;->aWx:F

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/e/b;->aWp:Landroid/graphics/Rect;

    .line 177
    new-instance v0, Lcom/android/e/i;

    invoke-direct {v0, p0}, Lcom/android/e/i;-><init>(Lcom/android/e/b;)V

    iput-object v0, p0, Lcom/android/e/b;->aWr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 566
    iput-object v5, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    .line 567
    iput v2, p0, Lcom/android/e/b;->aWi:I

    .line 568
    new-instance v0, Lcom/fotonation/utils/Point;

    const/16 v1, 0x21c

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    .line 569
    iput v4, p0, Lcom/android/e/b;->aWI:I

    iput v4, p0, Lcom/android/e/b;->aWH:I

    .line 570
    iget v0, p0, Lcom/android/e/b;->aWH:I

    iget v1, p0, Lcom/android/e/b;->aWI:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/e/b;->aWG:[B

    .line 589
    new-instance v0, Lcom/android/e/d;

    invoke-direct {v0, p0, v5}, Lcom/android/e/d;-><init>(Lcom/android/e/b;Lcom/android/e/d;)V

    iput-object v0, p0, Lcom/android/e/b;->aWz:Lcom/android/e/d;

    .line 684
    new-instance v0, Lcom/android/e/j;

    invoke-direct {v0, p0}, Lcom/android/e/j;-><init>(Lcom/android/e/b;)V

    iput-object v0, p0, Lcom/android/e/b;->aWF:Landroid/os/Handler;

    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    .prologue
    const/16 v5, 0xb4

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 52
    const/high16 v0, 0x43340000    # 180.0f

    iput v0, p0, Lcom/android/e/b;->aWB:F

    .line 58
    iput-boolean v4, p0, Lcom/android/e/b;->aWe:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/e/b;->aWf:Z

    .line 60
    iput-boolean v4, p0, Lcom/android/e/b;->aWg:Z

    .line 61
    iput-boolean v2, p0, Lcom/android/e/b;->aWh:Z

    .line 63
    iput v1, p0, Lcom/android/e/b;->aWs:F

    iput v1, p0, Lcom/android/e/b;->aWt:F

    .line 67
    iput v1, p0, Lcom/android/e/b;->aWw:F

    iput v1, p0, Lcom/android/e/b;->aWx:F

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/e/b;->aWp:Landroid/graphics/Rect;

    .line 177
    new-instance v0, Lcom/android/e/i;

    invoke-direct {v0, p0}, Lcom/android/e/i;-><init>(Lcom/android/e/b;)V

    iput-object v0, p0, Lcom/android/e/b;->aWr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 566
    iput-object v3, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    .line 567
    iput v2, p0, Lcom/android/e/b;->aWi:I

    .line 568
    new-instance v0, Lcom/fotonation/utils/Point;

    const/16 v1, 0x21c

    const/16 v2, 0x2d0

    invoke-direct {v0, v1, v2}, Lcom/fotonation/utils/Point;-><init>(II)V

    iput-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    .line 569
    iput v5, p0, Lcom/android/e/b;->aWI:I

    iput v5, p0, Lcom/android/e/b;->aWH:I

    .line 570
    iget v0, p0, Lcom/android/e/b;->aWH:I

    iget v1, p0, Lcom/android/e/b;->aWI:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/e/b;->aWG:[B

    .line 589
    new-instance v0, Lcom/android/e/d;

    invoke-direct {v0, p0, v3}, Lcom/android/e/d;-><init>(Lcom/android/e/b;Lcom/android/e/d;)V

    iput-object v0, p0, Lcom/android/e/b;->aWz:Lcom/android/e/d;

    .line 684
    new-instance v0, Lcom/android/e/j;

    invoke-direct {v0, p0}, Lcom/android/e/j;-><init>(Lcom/android/e/b;)V

    iput-object v0, p0, Lcom/android/e/b;->aWF:Landroid/os/Handler;

    .line 87
    new-instance v0, Lcom/android/e/c;

    invoke-direct {v0, p0, v3}, Lcom/android/e/c;-><init>(Lcom/android/e/b;Lcom/android/e/c;)V

    iput-object v0, p0, Lcom/android/e/b;->aWq:Landroid/os/Handler;

    .line 85
    return-void
.end method

.method private bnR()V
    .registers 4

    .prologue
    .line 616
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    invoke-virtual {v0}, Lcom/fotonation/utils/Point;->X()I

    move-result v0

    iget v1, p0, Lcom/android/e/b;->aWI:I

    if-ge v0, v1, :cond_23

    .line 617
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    iget v1, p0, Lcom/android/e/b;->aWI:I

    invoke-virtual {v0, v1}, Lcom/fotonation/utils/Point;->SetX(I)V

    .line 621
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    invoke-virtual {v0}, Lcom/fotonation/utils/Point;->Y()I

    move-result v0

    iget v1, p0, Lcom/android/e/b;->aWH:I

    if-ge v0, v1, :cond_3f

    .line 622
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    iget v1, p0, Lcom/android/e/b;->aWH:I

    invoke-virtual {v0, v1}, Lcom/fotonation/utils/Point;->SetY(I)V

    .line 615
    :cond_22
    :goto_22
    return-void

    .line 618
    :cond_23
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    invoke-virtual {v0}, Lcom/fotonation/utils/Point;->X()I

    move-result v0

    iget-object v1, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/e/b;->aWI:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_11

    .line 619
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    iget-object v1, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    iget v2, p0, Lcom/android/e/b;->aWI:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fotonation/utils/Point;->SetX(I)V

    goto :goto_11

    .line 623
    :cond_3f
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    invoke-virtual {v0}, Lcom/fotonation/utils/Point;->Y()I

    move-result v0

    iget-object v1, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/e/b;->aWH:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_22

    .line 624
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    iget-object v1, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    iget v1, v1, Landroid/hardware/Camera$Size;->height:I

    iget v2, p0, Lcom/android/e/b;->aWH:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/fotonation/utils/Point;->SetY(I)V

    goto :goto_22
.end method

.method private bnS([BIIIIII)V
    .registers 16

    .prologue
    const/4 v0, 0x0

    .line 572
    div-int/lit8 v1, p6, 0x2

    sub-int v1, p4, v1

    .line 573
    div-int/lit8 v2, p7, 0x2

    sub-int v2, p5, v2

    .line 574
    and-int/lit8 v3, v1, -0x2

    .line 575
    and-int/lit8 v2, v2, -0x2

    move v1, v0

    .line 576
    :goto_e
    if-ge v1, p7, :cond_1e

    .line 577
    add-int v4, v1, v2

    mul-int/2addr v4, p2

    add-int/2addr v4, v3

    iget-object v5, p0, Lcom/android/e/b;->aWG:[B

    mul-int v6, v1, p6

    invoke-static {p1, v4, v5, v6, p6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 576
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 579
    :cond_1e
    mul-int v1, p3, p2

    .line 580
    mul-int v4, p6, p7

    .line 581
    :goto_22
    div-int/lit8 v5, p7, 0x2

    if-ge v0, v5, :cond_37

    .line 582
    div-int/lit8 v5, v2, 0x2

    add-int/2addr v5, v0

    mul-int/2addr v5, p2

    add-int/2addr v5, v3

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/android/e/b;->aWG:[B

    mul-int v7, v0, p6

    add-int/2addr v7, v4

    invoke-static {p1, v5, v6, v7, p6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 581
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    .line 571
    :cond_37
    return-void
.end method

.method private bnT(II)V
    .registers 5

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    invoke-virtual {v0, p2}, Lcom/fotonation/utils/Point;->SetX(I)V

    .line 587
    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/fotonation/utils/Point;->SetY(I)V

    .line 585
    return-void
.end method

.method private bnU()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 194
    new-instance v0, Lcom/android/e/g;

    invoke-virtual {p0}, Lcom/android/e/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/e/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    .line 195
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x43340000    # 180.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44870000    # 1080.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/e/b;->aWB:F

    .line 196
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget v1, p0, Lcom/android/e/b;->aWB:F

    invoke-virtual {v0, v1}, Lcom/android/e/g;->boO(F)V

    .line 197
    iget v0, p0, Lcom/android/e/b;->aWw:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/e/b;->aWx:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_42

    .line 198
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/e/b;->aWw:F

    .line 199
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/e/b;->aWx:F

    .line 201
    :cond_42
    iget v0, p0, Lcom/android/e/b;->aWw:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/e/b;->aWx:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/e/b;->bnT(II)V

    .line 202
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget v1, p0, Lcom/android/e/b;->aWw:F

    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWx:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/e/g;->boM(FF)V

    .line 203
    iget v0, p0, Lcom/android/e/b;->aWs:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_88

    iget v0, p0, Lcom/android/e/b;->aWt:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_88

    .line 204
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWc:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/e/b;->aWs:F

    .line 205
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/android/e/b;->aWd:I

    if-lt v0, v1, :cond_a9

    .line 206
    iget v0, p0, Lcom/android/e/b;->aWB:F

    iget v1, p0, Lcom/android/e/b;->aWc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/e/b;->aWt:F

    .line 211
    :cond_88
    :goto_88
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget v1, p0, Lcom/android/e/b;->aWs:F

    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWt:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/e/g;->boP(FF)V

    .line 212
    iget-boolean v0, p0, Lcom/android/e/b;->aWf:Z

    if-eqz v0, :cond_a8

    .line 213
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 193
    :cond_a8
    return-void

    .line 208
    :cond_a9
    iget v0, p0, Lcom/android/e/b;->aWd:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/e/b;->aWB:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/android/e/b;->aWt:F

    goto :goto_88
.end method

.method private bnV(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 242
    new-instance v0, Lcom/android/e/h;

    iget-object v1, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-direct {v0, p1, v1, p0}, Lcom/android/e/h;-><init>(Landroid/view/View;Lcom/android/common/appService/W;Lcom/android/common/ui/Q;)V

    iput-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    .line 243
    const v0, 0x7f100116

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/e/b;->aWv:Lcom/android/common/ui/RotateImageView;

    .line 244
    iget-object v0, p0, Lcom/android/e/b;->aWv:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/e/k;

    invoke-direct {v1, p0}, Lcom/android/e/k;-><init>(Lcom/android/e/b;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 261
    const v0, 0x7f1000fa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/b;->aWC:Landroid/view/View;

    .line 262
    const v0, 0x7f100115

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/e/b;->aWu:Lcom/android/common/ui/RotateImageView;

    .line 263
    iget-object v0, p0, Lcom/android/e/b;->aWu:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/e/l;

    invoke-direct {v1, p0}, Lcom/android/e/l;-><init>(Lcom/android/e/b;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/common/ui/h;

    iget-object v1, p0, Lcom/android/e/b;->aWv:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/e/b;->aWu:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/e/b;->adw:[Lcom/android/common/ui/h;

    .line 222
    return-void
.end method

.method private bnX()Z
    .registers 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private bnY()Z
    .registers 4

    .prologue
    const/4 v2, -0x1

    .line 530
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "maf_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private bnZ(FF)Z
    .registers 9

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 526
    iget v0, p0, Lcom/android/e/b;->aWs:F

    sub-float v0, p1, v0

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/android/e/b;->aWt:F

    sub-float v2, p2, v2

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/e/b;->aWB:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_22

    const/4 v0, 0x1

    :goto_21
    return v0

    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method static synthetic boA(Lcom/android/e/b;)I
    .registers 2

    iget v0, p0, Lcom/android/e/b;->aWI:I

    return v0
.end method

.method static synthetic boB(Lcom/android/e/b;F)F
    .registers 2

    iput p1, p0, Lcom/android/e/b;->aWw:F

    return p1
.end method

.method static synthetic boC(Lcom/android/e/b;F)F
    .registers 2

    iput p1, p0, Lcom/android/e/b;->aWx:F

    return p1
.end method

.method static synthetic boD(Lcom/android/e/b;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/e/b;->bnY()Z

    move-result v0

    return v0
.end method

.method static synthetic boE(Lcom/android/e/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/e/b;->bnR()V

    return-void
.end method

.method static synthetic boF(Lcom/android/e/b;[BIIIIII)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/e/b;->bnS([BIIIIII)V

    return-void
.end method

.method static synthetic boG(Lcom/android/e/b;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/e/b;->bnT(II)V

    return-void
.end method

.method static synthetic boH(Lcom/android/e/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/e/b;->boh()V

    return-void
.end method

.method static synthetic boI(Lcom/android/e/b;FF)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/e/b;->boj(FF)V

    return-void
.end method

.method static synthetic boJ(Lcom/android/e/b;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/e/b;->bom()V

    return-void
.end method

.method private boa(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 435
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ne v1, v2, :cond_1a

    .line 436
    iget v1, p1, Landroid/graphics/Rect;->right:I

    iget v2, p2, Landroid/graphics/Rect;->right:I

    if-ne v1, v2, :cond_1a

    .line 437
    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    if-ne v1, v2, :cond_1a

    .line 438
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x1

    .line 435
    :cond_1a
    return v0
.end method

.method private bob()V
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v0

    iput-object v0, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    .line 441
    return-void
.end method

.method public static boc()Lcom/android/e/b;
    .registers 2

    .prologue
    .line 91
    new-instance v0, Lcom/android/e/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/e/b;-><init>(I)V

    return-object v0
.end method

.method private bog()V
    .registers 4

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 730
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/appService/a;

    iget-object v2, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/appService/a;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qh(Lcom/android/common/appService/a;)V

    .line 731
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->start()V

    .line 733
    :cond_1d
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->hK()V

    .line 728
    return-void
.end method

.method private boh()V
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 219
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    invoke-virtual {v0}, Lcom/android/e/g;->release()V

    .line 217
    return-void
.end method

.method private boi(FF)V
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 450
    iget v0, p0, Lcom/android/e/b;->aWd:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_14

    .line 451
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    iget v1, p0, Lcom/android/e/b;->aWb:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1e

    .line 452
    :cond_14
    const-string/jumbo v0, "MicrospurFragment"

    const-string/jumbo v1, "ignore click in top bar or bottom bar"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    return-void

    .line 456
    :cond_1e
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 457
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v3, p2, v1

    .line 459
    iget v1, p0, Lcom/android/e/b;->aWB:F

    iget v4, p0, Lcom/android/e/b;->aWc:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_77

    .line 460
    iget v0, p0, Lcom/android/e/b;->aWB:F

    iget v1, p0, Lcom/android/e/b;->aWc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 467
    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Lcom/android/e/b;->aWd:I

    if-lt v1, v4, :cond_98

    move v1, v2

    .line 472
    :goto_45
    iget-object v4, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v5

    iget v6, p0, Lcom/android/e/b;->aWb:I

    sub-int/2addr v5, v6

    if-gt v4, v5, :cond_9c

    .line 477
    :goto_52
    iget v4, p0, Lcom/android/e/b;->aWB:F

    add-float/2addr v4, v1

    iget v5, p0, Lcom/android/e/b;->aWc:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_a0

    .line 478
    iget v2, p0, Lcom/android/e/b;->aWB:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/e/b;->aWc:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 483
    :goto_64
    iput v0, p0, Lcom/android/e/b;->aWs:F

    .line 484
    iput v1, p0, Lcom/android/e/b;->aWt:F

    .line 485
    iget-object v2, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget-object v3, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v3, v1

    invoke-virtual {v2, v0, v1}, Lcom/android/e/g;->boP(FF)V

    .line 449
    return-void

    .line 462
    :cond_77
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget v4, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/android/e/b;->aWc:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v0

    if-gtz v1, :cond_3c

    .line 463
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWc:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_3c

    .line 470
    :cond_98
    iget v1, p0, Lcom/android/e/b;->aWd:I

    int-to-float v1, v1

    goto :goto_45

    .line 475
    :cond_9c
    iget v2, p0, Lcom/android/e/b;->aWb:I

    int-to-float v2, v2

    goto :goto_52

    .line 480
    :cond_a0
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget v4, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/android/e/b;->aWc:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_c3

    .line 481
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/e/b;->aWc:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    goto :goto_64

    :cond_c3
    move v1, v3

    goto :goto_64
.end method

.method private boj(FF)V
    .registers 7

    .prologue
    .line 493
    iget v0, p0, Lcom/android/e/b;->aWd:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_13

    .line 494
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    iget v1, p0, Lcom/android/e/b;->aWb:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1d

    .line 495
    :cond_13
    const-string/jumbo v0, "MicrospurFragment"

    const-string/jumbo v1, "ignore click in top bar or bottom bar"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    return-void

    .line 499
    :cond_1d
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    sub-float v0, p1, v0

    .line 500
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    sub-float v1, p2, v1

    .line 502
    iget v2, p0, Lcom/android/e/b;->aWB:F

    cmpg-float v2, v0, v2

    if-gez v2, :cond_5a

    .line 503
    iget v0, p0, Lcom/android/e/b;->aWB:F

    .line 508
    :cond_33
    :goto_33
    iget v2, p0, Lcom/android/e/b;->aWB:F

    cmpg-float v2, v1, v2

    if-gez v2, :cond_73

    .line 509
    iget v1, p0, Lcom/android/e/b;->aWB:F

    .line 515
    :cond_3b
    :goto_3b
    iput v0, p0, Lcom/android/e/b;->aWw:F

    .line 516
    iput v1, p0, Lcom/android/e/b;->aWx:F

    .line 517
    iget v0, p0, Lcom/android/e/b;->aWw:F

    float-to-int v0, v0

    iget v1, p0, Lcom/android/e/b;->aWx:F

    float-to-int v1, v1

    invoke-direct {p0, v0, v1}, Lcom/android/e/b;->bnT(II)V

    .line 518
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget v1, p0, Lcom/android/e/b;->aWw:F

    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWx:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/e/g;->boM(FF)V

    .line 492
    return-void

    .line 505
    :cond_5a
    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v0

    if-gez v2, :cond_33

    .line 506
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v0, v2

    goto :goto_33

    .line 511
    :cond_73
    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v2, v3

    cmpg-float v2, v2, v1

    if-gez v2, :cond_3b

    .line 512
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v1, v2

    goto :goto_3b
.end method

.method private bok(I)V
    .registers 3

    .prologue
    .line 706
    packed-switch p1, :pswitch_data_16

    .line 705
    :goto_3
    return-void

    .line 709
    :pswitch_4
    invoke-direct {p0}, Lcom/android/e/b;->bon()V

    goto :goto_3

    .line 712
    :pswitch_8
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mV()V

    .line 713
    invoke-direct {p0}, Lcom/android/e/b;->bog()V

    goto :goto_3

    .line 706
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_4
        :pswitch_8
        :pswitch_4
    .end packed-switch
.end method

.method private bol()V
    .registers 4

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 172
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/android/e/b;->aWz:Lcom/android/e/d;

    iget-object v2, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pv()I

    move-result v2

    .line 172
    invoke-virtual {v0, v1, v2}, Lcom/android/common/appService/k;->jO(Landroid/hardware/Camera$PreviewCallback;I)V

    .line 170
    :cond_19
    return-void
.end method

.method private bom()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 737
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 738
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->hJ()V

    .line 739
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qh(Lcom/android/common/appService/a;)V

    .line 736
    :cond_17
    return-void
.end method

.method private bon()V
    .registers 4

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    if-nez v0, :cond_1d

    .line 722
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/appService/a;

    iget-object v2, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-direct {v1, v2}, Lcom/android/common/appService/a;-><init>(Lcom/android/common/appService/W;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qh(Lcom/android/common/appService/a;)V

    .line 723
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->start()V

    .line 725
    :cond_1d
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qg()Lcom/android/common/appService/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/a;->hL()V

    .line 720
    return-void
.end method

.method static synthetic boo(Lcom/android/e/b;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic bop(Lcom/android/e/b;)Lcom/android/e/g;
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    return-object v0
.end method

.method static synthetic boq(Lcom/android/e/b;)Lcom/android/common/g/a;
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->aWm:Lcom/android/common/g/a;

    return-object v0
.end method

.method static synthetic bor(Lcom/android/e/b;)Lcom/fotonation/utils/Point;
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->aWo:Lcom/fotonation/utils/Point;

    return-object v0
.end method

.method static synthetic bos(Lcom/android/e/b;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->aWp:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic bot(Lcom/android/e/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/e/b;->adv:Z

    return v0
.end method

.method static synthetic bou(Lcom/android/e/b;)F
    .registers 2

    iget v0, p0, Lcom/android/e/b;->aWw:F

    return v0
.end method

.method static synthetic bov(Lcom/android/e/b;)F
    .registers 2

    iget v0, p0, Lcom/android/e/b;->aWx:F

    return v0
.end method

.method static synthetic bow(Lcom/android/e/b;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic box(Lcom/android/e/b;)Landroid/hardware/Camera$Size;
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->aWA:Landroid/hardware/Camera$Size;

    return-object v0
.end method

.method static synthetic boy(Lcom/android/e/b;)[B
    .registers 2

    iget-object v0, p0, Lcom/android/e/b;->aWG:[B

    return-object v0
.end method

.method static synthetic boz(Lcom/android/e/b;)I
    .registers 2

    iget v0, p0, Lcom/android/e/b;->aWH:I

    return v0
.end method


# virtual methods
.method public BI(Ljava/lang/String;IZI)V
    .registers 10

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 655
    iget-boolean v0, p0, Lcom/android/e/b;->adv:Z

    if-eqz v0, :cond_7

    .line 656
    return-void

    .line 659
    :cond_7
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 660
    const-string/jumbo v0, "pref_camera_interval_pro"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 671
    :goto_32
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 672
    if-eqz p3, :cond_3a

    .line 673
    invoke-direct {p0, p4}, Lcom/android/e/b;->bok(I)V

    .line 676
    :cond_3a
    if-eqz v0, :cond_57

    iget-boolean v0, p0, Lcom/android/e/b;->aWh:Z

    if-eqz v0, :cond_57

    invoke-direct {p0}, Lcom/android/e/b;->bnY()Z

    move-result v0

    if-eqz v0, :cond_57

    if-ne p4, v2, :cond_57

    .line 678
    iget-object v0, p0, Lcom/android/e/b;->aWF:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_57

    .line 679
    iget-object v0, p0, Lcom/android/e/b;->aWF:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 654
    :cond_57
    return-void

    .line 662
    :cond_58
    const-string/jumbo v0, "maf_key"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 664
    invoke-interface {v3, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 665
    const/4 v0, -0x1

    if-ne p2, v0, :cond_72

    .line 666
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/independentFocusExposure/i;->eh(Z)V

    move v0, v2

    goto :goto_32

    .line 668
    :cond_72
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/independentFocusExposure/i;->eh(Z)V

    move v0, v2

    goto :goto_32

    :cond_7d
    move v0, v1

    goto :goto_32
.end method

.method public BJ()V
    .registers 3

    .prologue
    .line 692
    iget-boolean v0, p0, Lcom/android/e/b;->adv:Z

    if-eqz v0, :cond_5

    .line 693
    return-void

    .line 695
    :cond_5
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWm:Lcom/android/common/g/a;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 691
    return-void
.end method

.method public BK()V
    .registers 3

    .prologue
    .line 700
    iget-boolean v0, p0, Lcom/android/e/b;->adv:Z

    if-eqz v0, :cond_5

    .line 701
    return-void

    .line 703
    :cond_5
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWm:Lcom/android/common/g/a;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 699
    return-void
.end method

.method public aik()V
    .registers 1

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/android/e/b;->boh()V

    .line 155
    invoke-direct {p0}, Lcom/android/e/b;->bom()V

    .line 153
    return-void
.end method

.method public aip()V
    .registers 3

    .prologue
    .line 638
    iget-object v0, p0, Lcom/android/e/b;->aWv:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 641
    iget-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    invoke-virtual {v0}, Lcom/android/e/h;->boX()V

    .line 637
    return-void
.end method

.method public aiq()V
    .registers 3

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/e/b;->aWv:Lcom/android/common/ui/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 648
    iget-boolean v0, p0, Lcom/android/e/b;->aWf:Z

    if-eqz v0, :cond_15

    .line 649
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->al(Lcom/android/common/a/b;)V

    .line 651
    :cond_15
    iget-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    invoke-virtual {v0}, Lcom/android/e/h;->boY()V

    .line 645
    return-void
.end method

.method protected aji(IIII)V
    .registers 8

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    .line 402
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    .line 403
    iget-object v1, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    if-eqz v1, :cond_15

    .line 404
    iget-object v1, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-direct {p0, v0, v1}, Lcom/android/e/b;->boa(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 400
    :cond_15
    :goto_15
    return-void

    .line 405
    :cond_16
    iget v1, p0, Lcom/android/e/b;->aWs:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 406
    iget v2, p0, Lcom/android/e/b;->aWt:F

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    add-float/2addr v0, v2

    .line 407
    invoke-direct {p0, v1, v0}, Lcom/android/e/b;->boi(FF)V

    goto :goto_15
.end method

.method protected akC()V
    .registers 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/common/o/l;->akC()V

    .line 161
    invoke-direct {p0}, Lcom/android/e/b;->bol()V

    .line 159
    return-void
.end method

.method public bnW()V
    .registers 2

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pX()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 630
    iget-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    invoke-virtual {v0}, Lcom/android/e/h;->boV()V

    .line 628
    :goto_d
    return-void

    .line 632
    :cond_e
    iget-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    invoke-virtual {v0}, Lcom/android/e/h;->boW()V

    goto :goto_d
.end method

.method public bod()V
    .registers 3

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/e/b;->aWC:Landroid/view/View;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/e/b;->aWC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_13

    .line 413
    iget-object v0, p0, Lcom/android/e/b;->aWC:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 411
    :cond_13
    return-void
.end method

.method public boe(ZZ)V
    .registers 3

    .prologue
    .line 431
    iput-boolean p1, p0, Lcom/android/e/b;->aWe:Z

    .line 430
    return-void
.end method

.method protected bof(Z)V
    .registers 2

    .prologue
    .line 165
    if-nez p1, :cond_5

    .line 166
    invoke-direct {p0}, Lcom/android/e/b;->bol()V

    .line 164
    :cond_5
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/16 v5, 0x4d2

    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 293
    iget-object v0, p0, Lcom/android/e/b;->aWC:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/e/b;->aWC:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_18

    .line 294
    iget-object v0, p0, Lcom/android/e/b;->aWC:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 296
    :cond_18
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_2f

    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amE()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v2, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v2, :cond_2f

    .line 297
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 299
    :cond_2f
    iget-boolean v0, p0, Lcom/android/e/b;->adv:Z

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/e/b;->aWf:Z

    if-eqz v0, :cond_3d

    invoke-direct {p0}, Lcom/android/e/b;->bnX()Z

    move-result v0

    if-eqz v0, :cond_67

    .line 300
    :cond_3d
    iget-boolean v0, p0, Lcom/android/e/b;->aWg:Z

    if-eqz v0, :cond_66

    .line 301
    iget v0, p0, Lcom/android/e/b;->aWs:F

    iget v2, p0, Lcom/android/e/b;->aWD:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/e/b;->aWs:F

    .line 302
    iget v0, p0, Lcom/android/e/b;->aWt:F

    iget v2, p0, Lcom/android/e/b;->aWE:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/e/b;->aWt:F

    .line 303
    iput v1, p0, Lcom/android/e/b;->aWD:F

    .line 304
    iput v1, p0, Lcom/android/e/b;->aWE:F

    .line 305
    iput-boolean v4, p0, Lcom/android/e/b;->aWg:Z

    .line 306
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget v1, p0, Lcom/android/e/b;->aWs:F

    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWt:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/e/g;->boP(FF)V

    .line 308
    :cond_66
    return v4

    .line 310
    :cond_67
    iget-boolean v0, p0, Lcom/android/e/b;->aWe:Z

    if-eqz v0, :cond_70

    .line 311
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 313
    :cond_70
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    .line 315
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_1aa

    .line 384
    :cond_8b
    :goto_8b
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 317
    :pswitch_90
    invoke-direct {p0, v0, v2}, Lcom/android/e/b;->bnZ(FF)Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 318
    iput-boolean v6, p0, Lcom/android/e/b;->aWg:Z

    .line 319
    iput v0, p0, Lcom/android/e/b;->aWj:F

    .line 320
    iput v2, p0, Lcom/android/e/b;->aWk:F

    .line 321
    iput v1, p0, Lcom/android/e/b;->aWD:F

    .line 322
    iput v1, p0, Lcom/android/e/b;->aWE:F

    .line 323
    return v6

    .line 327
    :pswitch_a1
    iget-boolean v3, p0, Lcom/android/e/b;->aWg:Z

    if-eqz v3, :cond_8b

    .line 328
    iget v3, p0, Lcom/android/e/b;->aWj:F

    sub-float/2addr v0, v3

    .line 329
    iget v3, p0, Lcom/android/e/b;->aWk:F

    sub-float/2addr v2, v3

    .line 331
    iget v3, p0, Lcom/android/e/b;->aWs:F

    add-float/2addr v3, v0

    iget v4, p0, Lcom/android/e/b;->aWB:F

    iget v5, p0, Lcom/android/e/b;->aWc:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_10b

    .line 332
    iget v0, p0, Lcom/android/e/b;->aWB:F

    iget v3, p0, Lcom/android/e/b;->aWc:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    iget v3, p0, Lcom/android/e/b;->aWs:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/e/b;->aWD:F

    .line 342
    :goto_c3
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/e/b;->aWd:I

    if-lt v0, v3, :cond_137

    move v0, v1

    .line 347
    :goto_cc
    iget-object v3, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v4

    iget v5, p0, Lcom/android/e/b;->aWb:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_13b

    .line 352
    :goto_d9
    iget v3, p0, Lcom/android/e/b;->aWt:F

    add-float/2addr v3, v2

    iget v4, p0, Lcom/android/e/b;->aWB:F

    add-float/2addr v4, v0

    iget v5, p0, Lcom/android/e/b;->aWc:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_13f

    .line 353
    iget v1, p0, Lcom/android/e/b;->aWB:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWc:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWt:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/e/b;->aWE:F

    .line 362
    :goto_f3
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget v1, p0, Lcom/android/e/b;->aWs:F

    iget v2, p0, Lcom/android/e/b;->aWD:F

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWt:F

    iget v4, p0, Lcom/android/e/b;->aWE:F

    add-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/e/g;->boP(FF)V

    .line 363
    return v6

    .line 334
    :cond_10b
    iget-object v3, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/e/b;->aWc:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/android/e/b;->aWs:F

    add-float/2addr v4, v0

    cmpg-float v3, v3, v4

    if-gtz v3, :cond_134

    .line 335
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/e/b;->aWc:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/e/b;->aWs:F

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/android/e/b;->aWD:F

    goto :goto_c3

    .line 338
    :cond_134
    iput v0, p0, Lcom/android/e/b;->aWD:F

    goto :goto_c3

    .line 345
    :cond_137
    iget v0, p0, Lcom/android/e/b;->aWd:I

    int-to-float v0, v0

    goto :goto_cc

    .line 350
    :cond_13b
    iget v1, p0, Lcom/android/e/b;->aWb:I

    int-to-float v1, v1

    goto :goto_d9

    .line 355
    :cond_13f
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iget v3, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/e/b;->aWc:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iget v3, p0, Lcom/android/e/b;->aWt:F

    add-float/2addr v3, v2

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_16a

    .line 356
    iget-object v0, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWB:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWc:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/android/e/b;->aWt:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/e/b;->aWE:F

    goto :goto_f3

    .line 359
    :cond_16a
    iput v2, p0, Lcom/android/e/b;->aWE:F

    goto :goto_f3

    .line 367
    :pswitch_16d
    iget-boolean v0, p0, Lcom/android/e/b;->aWg:Z

    if-eqz v0, :cond_197

    .line 368
    iget v0, p0, Lcom/android/e/b;->aWs:F

    iget v2, p0, Lcom/android/e/b;->aWD:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/e/b;->aWs:F

    .line 369
    iget v0, p0, Lcom/android/e/b;->aWt:F

    iget v2, p0, Lcom/android/e/b;->aWE:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/android/e/b;->aWt:F

    .line 370
    iput v1, p0, Lcom/android/e/b;->aWD:F

    .line 371
    iput v1, p0, Lcom/android/e/b;->aWE:F

    .line 372
    iput-boolean v4, p0, Lcom/android/e/b;->aWg:Z

    .line 373
    iget-object v0, p0, Lcom/android/e/b;->aWl:Lcom/android/e/g;

    iget v1, p0, Lcom/android/e/b;->aWs:F

    iget-object v2, p0, Lcom/android/e/b;->aWy:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/e/b;->aWt:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/e/g;->boP(FF)V

    .line 374
    return v6

    .line 377
    :cond_197
    invoke-direct {p0}, Lcom/android/e/b;->bnY()Z

    move-result v0

    if-nez v0, :cond_8b

    .line 378
    iget-object v0, p0, Lcom/android/e/b;->aWq:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v0, p0, Lcom/android/e/b;->aWq:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_8b

    .line 315
    nop

    :pswitch_data_1aa
    .packed-switch 0x0
        :pswitch_90
        :pswitch_16d
        :pswitch_a1
    .end packed-switch
.end method

.method public nE(II)Z
    .registers 5

    .prologue
    .line 389
    iget-boolean v0, p0, Lcom/android/e/b;->adv:Z

    if-nez v0, :cond_e

    .line 390
    iget-boolean v0, p0, Lcom/android/e/b;->aWf:Z

    if-eqz v0, :cond_e

    .line 391
    invoke-direct {p0}, Lcom/android/e/b;->bnX()Z

    move-result v0

    .line 389
    if-eqz v0, :cond_10

    .line 392
    :cond_e
    const/4 v0, 0x0

    return v0

    .line 394
    :cond_10
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/e/b;->boj(FF)V

    .line 395
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Lcom/android/e/b;->boi(FF)V

    .line 396
    const/4 v0, 0x1

    return v0
.end method

.method public ny(Z)Z
    .registers 5

    .prologue
    const/16 v2, 0x4d2

    const/4 v1, 0x0

    .line 419
    iget-boolean v0, p0, Lcom/android/e/b;->adv:Z

    if-eqz v0, :cond_8

    .line 420
    return v1

    .line 422
    :cond_8
    invoke-direct {p0}, Lcom/android/e/b;->bnY()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 423
    iget-object v0, p0, Lcom/android/e/b;->aWq:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 424
    iget-object v0, p0, Lcom/android/e/b;->aWq:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 425
    const/4 v0, 0x1

    return v0

    .line 427
    :cond_1a
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 96
    invoke-direct {p0}, Lcom/android/e/b;->bob()V

    .line 94
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/e/b;->adu:Z

    if-eqz v0, :cond_9

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 104
    :cond_9
    const v0, 0x7f040047

    .line 105
    const/4 v1, 0x0

    .line 104
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 106
    invoke-direct {p0, v0}, Lcom/android/e/b;->bnV(Landroid/view/View;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/e/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/e/b;->aWd:I

    .line 108
    invoke-virtual {p0}, Lcom/android/e/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/e/b;->aWb:I

    .line 109
    invoke-virtual {p0}, Lcom/android/e/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/e/b;->aWc:I

    .line 110
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/android/e/b;->adu:Z

    if-eqz v0, :cond_8

    .line 138
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 139
    return-void

    .line 141
    :cond_8
    iget-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    invoke-virtual {v0}, Lcom/android/e/h;->boU()V

    .line 142
    invoke-virtual {p0}, Lcom/android/e/b;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pw()Lcom/android/common/appService/k;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWz:Lcom/android/e/d;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/k;->jJ(Landroid/hardware/Camera$PreviewCallback;)V

    .line 143
    invoke-direct {p0}, Lcom/android/e/b;->boh()V

    .line 144
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pY()Lcom/android/common/a/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWm:Lcom/android/common/g/a;

    invoke-virtual {v0, v1}, Lcom/android/common/a/g;->at(Lcom/android/common/a/b;)V

    .line 146
    invoke-direct {p0}, Lcom/android/e/b;->bom()V

    .line 147
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/common/setting/e;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/e/b;->aWq:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 136
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    .line 115
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 116
    iget-boolean v0, p0, Lcom/android/e/b;->adu:Z

    if-eqz v0, :cond_8

    .line 117
    return-void

    .line 119
    :cond_8
    iget-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    invoke-virtual {v0}, Lcom/android/e/h;->boS()V

    .line 120
    iget-object v0, p0, Lcom/android/e/b;->aWn:Lcom/android/e/h;

    invoke-virtual {v0}, Lcom/android/e/h;->boT()V

    .line 121
    invoke-direct {p0}, Lcom/android/e/b;->bnU()V

    .line 123
    new-instance v0, Lcom/android/common/g/a;

    invoke-virtual {p0}, Lcom/android/e/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/g/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/e/b;->aWm:Lcom/android/common/g/a;

    .line 125
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/m;->MT(I)Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-nez v0, :cond_31

    .line 126
    return-void

    .line 128
    :cond_31
    invoke-direct {p0}, Lcom/android/e/b;->bol()V

    .line 130
    invoke-virtual {p0}, Lcom/android/e/b;->bnW()V

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/e/b;->aWe:Z

    .line 132
    iget-object v0, p0, Lcom/android/e/b;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/e/b;->aWr:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/common/setting/e;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 114
    return-void
.end method
