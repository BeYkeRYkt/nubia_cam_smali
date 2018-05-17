.class public Lcom/android/c/i;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static aBE:I

.field private static aBF:I

.field private static aBN:I

.field private static aBP:I


# instance fields
.field private final TAG:Ljava/lang/String;

.field private aBG:Landroid/view/View;

.field private aBH:Lcom/android/common/ui/RotateImageView;

.field private aBI:Landroid/graphics/Bitmap;

.field private aBJ:Lcom/android/common/ui/RotateImageView;

.field private aBK:Lcom/android/common/ui/RotateImageView;

.field private aBL:I

.field private aBM:Landroid/widget/TextView;

.field private aBO:Landroid/widget/ImageView;

.field private aBQ:Landroid/view/View;

.field private aBR:Landroid/widget/RelativeLayout;

.field private aBS:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 130
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@14
    nop

    move-result v0

    sput v0, Lcom/android/c/i;->aBF:I

    .line 131
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@15
    nop

    move-result v0

    sput v0, Lcom/android/c/i;->aBN:I

    .line 132
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@17
    nop

    move-result v0

    sput v0, Lcom/android/c/i;->aBP:I

    .line 133
    const/4 v0, -0x1

    sput v0, Lcom/android/c/i;->aBE:I

    .line 39
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 41
    const-string/jumbo v0, "ThirdPartyFragment"

    iput-object v0, p0, Lcom/android/c/i;->TAG:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    .line 45
    iput-object v1, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    .line 46
    iput-object v1, p0, Lcom/android/c/i;->aBR:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v1, p0, Lcom/android/c/i;->aBK:Lcom/android/common/ui/RotateImageView;

    .line 48
    iput-object v1, p0, Lcom/android/c/i;->aBM:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    .line 50
    iput-object v1, p0, Lcom/android/c/i;->aBQ:Landroid/view/View;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/c/i;->aBL:I

    .line 57
    iput-object v1, p0, Lcom/android/c/i;->aBS:Landroid/content/SharedPreferences;

    .line 59
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 41
    const-string/jumbo v0, "ThirdPartyFragment"

    iput-object v0, p0, Lcom/android/c/i;->TAG:Ljava/lang/String;

    .line 42
    iput-object v1, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    .line 44
    iput-object v1, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    .line 45
    iput-object v1, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    .line 46
    iput-object v1, p0, Lcom/android/c/i;->aBR:Landroid/widget/RelativeLayout;

    .line 47
    iput-object v1, p0, Lcom/android/c/i;->aBK:Lcom/android/common/ui/RotateImageView;

    .line 48
    iput-object v1, p0, Lcom/android/c/i;->aBM:Landroid/widget/TextView;

    .line 49
    iput-object v1, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    .line 50
    iput-object v1, p0, Lcom/android/c/i;->aBQ:Landroid/view/View;

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/c/i;->aBL:I

    .line 57
    iput-object v1, p0, Lcom/android/c/i;->aBS:Landroid/content/SharedPreferences;

    .line 63
    return-void
.end method

.method public static aQC()Lcom/android/c/i;
    .registers 2

    .prologue
    .line 348
    new-instance v0, Lcom/android/c/i;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/c/i;-><init>(I)V

    return-object v0
.end method

.method private aQF()V
    .registers 8

    .prologue
    const/16 v0, 0x10e

    const/16 v2, 0x5a

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    .line 280
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->sf()[B

    move-result-object v3

    if-nez v3, :cond_12

    return-void

    .line 281
    :cond_12
    invoke-direct {p0}, Lcom/android/c/i;->aQH()V

    .line 282
    iget-object v3, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 284
    iget-object v3, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/common/cameradevice/p;->LF()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 285
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/common/appService/W;->sf()[B

    move-result-object v4

    .line 286
    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 285
    invoke-static {v4, v5, v3}, Lcom/android/common/appService/j;->jD([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    .line 288
    iget-object v3, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    if-nez v3, :cond_3b

    return-void

    .line 290
    :cond_3b
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 292
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pC()I

    move-result v3

    if-ne v3, v2, :cond_83

    .line 297
    :goto_4a
    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    .line 298
    iget-object v3, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    .line 297
    invoke-virtual {v5, v0, v2, v3}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 299
    iget-object v0, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    .line 300
    iget-object v2, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iget-object v2, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move v2, v1

    .line 299
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    .line 301
    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 302
    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 279
    return-void

    .line 294
    :cond_83
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/appService/W;->pC()I

    move-result v3

    if-ne v3, v0, :cond_8f

    move v0, v2

    .line 295
    goto :goto_4a

    :cond_8f
    move v0, v1

    goto :goto_4a
.end method

.method private aQG(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 188
    const v1, 0x7f100190

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v2, 0x7f040011

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 189
    const v0, 0x7f10004c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    const/16 v2, 0x10e

    invoke-virtual {v0, v2, v4}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 190
    const v0, 0x7f10004b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    .line 191
    iget-object v0, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 186
    return-void
.end method

.method private aQH()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v0, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_16

    .line 96
    const-string/jumbo v0, "ThirdPartyFragment"

    const-string/jumbo v1, "onPause recycle the capture bitmap"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 98
    iput-object v2, p0, Lcom/android/c/i;->aBI:Landroid/graphics/Bitmap;

    .line 94
    :goto_15
    return-void

    .line 100
    :cond_16
    const-string/jumbo v0, "ThirdPartyFragment"

    const-string/jumbo v1, "onPause capture bitmap is null"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15
.end method

.method private aQI()V
    .registers 3

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/c/i;->aBK:Lcom/android/common/ui/RotateImageView;

    new-instance v1, Lcom/android/c/k;

    invoke-direct {v1, p0}, Lcom/android/c/k;-><init>(Lcom/android/c/i;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    return-void
.end method

.method private aQJ()V
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    iget-object v0, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, p0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    return-void
.end method

.method private aQK(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 105
    const v0, 0x7f100192

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    .line 106
    const v0, 0x7f100193

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/c/i;->aBK:Lcom/android/common/ui/RotateImageView;

    .line 108
    const v0, 0x7f100194

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/c/i;->aBR:Landroid/widget/RelativeLayout;

    .line 109
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    .line 110
    const v0, 0x7f100046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    .line 112
    const v0, 0x7f100195

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/c/i;->aBM:Landroid/widget/TextView;

    .line 113
    const v0, 0x7f100191

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/c/i;->aBQ:Landroid/view/View;

    .line 115
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jg:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_58

    .line 116
    invoke-direct {p0, p1}, Lcom/android/c/i;->aQG(Landroid/view/View;)V

    .line 119
    :cond_58
    invoke-direct {p0}, Lcom/android/c/i;->aQI()V

    .line 120
    invoke-direct {p0}, Lcom/android/c/i;->aQJ()V

    .line 122
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/common/ui/h;

    .line 123
    iget-object v1, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 124
    iget-object v1, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 125
    iget-object v1, p0, Lcom/android/c/i;->aBK:Lcom/android/common/ui/RotateImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 122
    iput-object v0, p0, Lcom/android/c/i;->adw:[Lcom/android/common/ui/h;

    .line 104
    return-void
.end method

.method private aQL()V
    .registers 3

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_36

    .line 266
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_36

    .line 267
    iget v0, p0, Lcom/android/c/i;->aBL:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/c/i;->aBL:I

    .line 268
    iget v0, p0, Lcom/android/c/i;->aBL:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2e

    .line 269
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->sk()V

    .line 270
    invoke-direct {p0}, Lcom/android/c/i;->onReviewCancelClicked()V

    .line 264
    :goto_2d
    return-void

    .line 272
    :cond_2e
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pE()V

    goto :goto_2d

    .line 275
    :cond_36
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pE()V

    goto :goto_2d
.end method

.method private aQM(Z)V
    .registers 9

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0}, Lcom/android/c/i;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    .line 223
    return-void

    .line 225
    :cond_a
    if-eqz p1, :cond_3a

    .line 226
    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 227
    iget-object v0, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 228
    iget-object v0, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 229
    iget-object v0, p0, Lcom/android/c/i;->aBK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/android/c/i;->aBM:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    if-eqz v0, :cond_2e

    .line 232
    iget-object v0, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 234
    :cond_2e
    invoke-virtual {p0}, Lcom/android/c/i;->alz()V

    .line 235
    invoke-virtual {p0}, Lcom/android/c/i;->alr()V

    .line 261
    :cond_34
    :goto_34
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v6}, Lcom/android/common/appService/W;->pU(I)V

    .line 221
    return-void

    .line 237
    :cond_3a
    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v6}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 240
    iget-object v0, p0, Lcom/android/c/i;->aBK:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v5}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    if-eqz v0, :cond_57

    .line 242
    iget-object v0, p0, Lcom/android/c/i;->aBG:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 244
    :cond_57
    invoke-virtual {p0}, Lcom/android/c/i;->aly()V

    .line 245
    invoke-virtual {p0}, Lcom/android/c/i;->alq()V

    .line 247
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jn:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_34

    .line 248
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_34

    .line 250
    iget v0, p0, Lcom/android/c/i;->aBL:I

    if-nez v0, :cond_a5

    .line 251
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 255
    :goto_86
    iget-object v1, p0, Lcom/android/c/i;->aBM:Landroid/widget/TextView;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 256
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x7f0a025f

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 255
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    iget-object v0, p0, Lcom/android/c/i;->aBM:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_34

    .line 253
    :cond_a5
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_86
.end method

.method private onReviewCancelClicked()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 210
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_19

    .line 211
    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    .line 212
    :cond_19
    return-void

    .line 215
    :cond_1a
    invoke-direct {p0, v2}, Lcom/android/c/i;->aQM(Z)V

    .line 217
    invoke-virtual {p0}, Lcom/android/c/i;->all()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 218
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/android/common/ActivityBase;->ath(I)V

    .line 209
    return-void
.end method


# virtual methods
.method public aQD()V
    .registers 4

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "autotest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_23

    .line 325
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/c/i;->aQM(Z)V

    .line 326
    invoke-direct {p0}, Lcom/android/c/i;->aQF()V

    .line 330
    :goto_1b
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 323
    return-void

    .line 328
    :cond_23
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    goto :goto_1b
.end method

.method public aQE()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 369
    iget-object v1, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    if-eqz v1, :cond_e

    .line 370
    iget-object v1, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    .line 369
    :cond_e
    return v0
.end method

.method protected aji(IIII)V
    .registers 7

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/c/i;->aBQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int v1, p3, p1

    if-ne v0, v1, :cond_14

    .line 336
    iget-object v0, p0, Lcom/android/c/i;->aBQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int v1, p4, p2

    if-eq v0, v1, :cond_37

    .line 337
    :cond_14
    const-string/jumbo v0, "ThirdPartyFragment"

    const-string/jumbo v1, "relayout mPreviewRelativeContent"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/android/c/i;->aBQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 339
    sub-int v1, p3, p1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 340
    sub-int v1, p4, p2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 341
    iput p2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 342
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 343
    iget-object v0, p0, Lcom/android/c/i;->aBQ:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 334
    :cond_37
    return-void
.end method

.method protected alq()V
    .registers 3

    .prologue
    .line 353
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 354
    iget-object v0, p0, Lcom/android/c/i;->aBR:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_e

    .line 355
    iget-object v0, p0, Lcom/android/c/i;->aBR:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 352
    :cond_e
    return-void
.end method

.method protected alr()V
    .registers 3

    .prologue
    .line 361
    invoke-super {p0}, Lcom/android/common/o/l;->alr()V

    .line 362
    iget-object v0, p0, Lcom/android/c/i;->aBR:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 363
    iget-object v0, p0, Lcom/android/c/i;->aBR:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 360
    :cond_d
    return-void
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 307
    iget-object v0, p0, Lcom/android/c/i;->aBO:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_11

    .line 308
    invoke-direct {p0}, Lcom/android/c/i;->onReviewCancelClicked()V

    .line 309
    const/4 v0, 0x1

    return v0

    .line 311
    :cond_11
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 316
    iget-object v0, p0, Lcom/android/c/i;->aBJ:Lcom/android/common/ui/RotateImageView;

    if-ne v0, p1, :cond_8

    .line 317
    invoke-direct {p0}, Lcom/android/c/i;->aQL()V

    .line 315
    :cond_7
    :goto_7
    return-void

    .line 318
    :cond_8
    iget-object v0, p0, Lcom/android/c/i;->aBH:Lcom/android/common/ui/RotateImageView;

    if-ne v0, p1, :cond_7

    .line 319
    invoke-direct {p0}, Lcom/android/c/i;->onReviewCancelClicked()V

    goto :goto_7
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 70
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 71
    iget-boolean v0, p0, Lcom/android/c/i;->adu:Z

    if-eqz v0, :cond_9

    .line 72
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_9
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/c/i;->aBS:Landroid/content/SharedPreferences;

    .line 75
    const v0, 0x7f040081

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    invoke-direct {p0, v0}, Lcom/android/c/i;->aQK(Landroid/view/View;)V

    .line 77
    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 12

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 136
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "autotest"

    invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13c

    .line 137
    packed-switch p1, :pswitch_data_13e

    .line 180
    :cond_1a
    :goto_1a
    return v8

    .line 139
    :pswitch_1b
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 140
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 141
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0020

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    .line 142
    invoke-virtual {p0}, Lcom/android/c/i;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d001f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    .line 143
    iget-object v4, p0, Lcom/android/c/i;->aBS:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string/jumbo v5, "auto_steps"

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 144
    iget-object v4, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v4

    invoke-interface {v4, v7}, Lcom/android/common/setting/o;->XS(I)V

    .line 145
    iget-object v4, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v4}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v4

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v2

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v4, v1, v0}, Lcom/android/common/ActivityBase;->atn(II)Z

    goto :goto_1a

    .line 148
    :pswitch_84
    iget-object v0, p0, Lcom/android/c/i;->aBS:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "auto_steps"

    invoke-interface {v0, v1, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 149
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/common/setting/o;->XS(I)V

    goto/16 :goto_1a

    .line 152
    :pswitch_9f
    iget-object v0, p0, Lcom/android/c/i;->aBS:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "auto_steps"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 153
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0, v7}, Lcom/android/common/setting/o;->XS(I)V

    goto/16 :goto_1a

    .line 156
    :pswitch_bb
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    new-instance v1, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/c/i;->aBF:I

    sget v3, Lcom/android/c/i;->aBE:I

    invoke-direct {v1, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 157
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/c/i;->aBF:I

    sget v3, Lcom/android/c/i;->aBE:I

    invoke-direct {v1, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sh(Lcom/android/common/cameradevice/g;)V

    goto/16 :goto_1a

    .line 161
    :pswitch_e0
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    new-instance v1, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/c/i;->aBP:I

    sget v3, Lcom/android/c/i;->aBE:I

    invoke-direct {v1, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 162
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/c/i;->aBP:I

    sget v3, Lcom/android/c/i;->aBE:I

    invoke-direct {v1, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sh(Lcom/android/common/cameradevice/g;)V

    goto/16 :goto_1a

    .line 166
    :pswitch_105
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pm()Lcom/android/common/cameradevice/g;

    move-result-object v0

    new-instance v1, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/c/i;->aBN:I

    sget v3, Lcom/android/c/i;->aBE:I

    invoke-direct {v1, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/cameradevice/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 167
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/common/cameradevice/g;

    sget v2, Lcom/android/c/i;->aBN:I

    sget v3, Lcom/android/c/i;->aBE:I

    invoke-direct {v1, v2, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->sh(Lcom/android/common/cameradevice/g;)V

    goto/16 :goto_1a

    .line 171
    :pswitch_12a
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rO()Z

    goto/16 :goto_1a

    .line 174
    :pswitch_131
    iget-object v0, p0, Lcom/android/c/i;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->finish()V

    goto/16 :goto_1a

    .line 182
    :cond_13c
    return v6

    .line 137
    nop

    :pswitch_data_13e
    .packed-switch 0x65
        :pswitch_1b
        :pswitch_84
        :pswitch_9f
        :pswitch_bb
        :pswitch_e0
        :pswitch_105
        :pswitch_12a
        :pswitch_131
    .end packed-switch
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 90
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 91
    iget-boolean v0, p0, Lcom/android/c/i;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 89
    :cond_8
    return-void
.end method

.method public onResume()V
    .registers 2

    .prologue
    .line 82
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 83
    iget-boolean v0, p0, Lcom/android/c/i;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 84
    :cond_8
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/c/i;->aBL:I

    .line 81
    return-void
.end method
