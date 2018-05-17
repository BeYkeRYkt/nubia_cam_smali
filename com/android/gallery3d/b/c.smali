.class Lcom/android/gallery3d/b/c;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private axA:Landroid/view/View$OnClickListener;

.field final synthetic axB:Lcom/android/gallery3d/b/a;

.field private axx:Landroid/widget/TextView;

.field private axy:Landroid/widget/TextView;

.field private axz:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/b/a;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 234
    iput-object p1, p0, Lcom/android/gallery3d/b/c;->axB:Lcom/android/gallery3d/b/a;

    .line 235
    const v0, 0x7f0e000a

    invoke-direct {p0, p2, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 234
    return-void
.end method

.method private aMC()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 253
    const v0, 0x7f100049

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/b/c;->axy:Landroid/widget/TextView;

    .line 254
    iget-object v0, p0, Lcom/android/gallery3d/b/c;->axy:Landroid/widget/TextView;

    new-instance v1, Lcom/android/gallery3d/b/f;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/b/f;-><init>(Lcom/android/gallery3d/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    const v0, 0x7f10004a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/b/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/b/c;->axx:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/android/gallery3d/b/c;->axx:Landroid/widget/TextView;

    new-instance v1, Lcom/android/gallery3d/b/g;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/b/g;-><init>(Lcom/android/gallery3d/b/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/gallery3d/b/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_38

    .line 277
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 252
    :cond_38
    return-void
.end method

.method private aMD(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 286
    iput-object p1, p0, Lcom/android/gallery3d/b/c;->axz:Landroid/view/View$OnClickListener;

    .line 285
    return-void
.end method

.method private aME(Landroid/view/View$OnClickListener;)V
    .registers 2

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/gallery3d/b/c;->axA:Landroid/view/View$OnClickListener;

    .line 281
    return-void
.end method

.method static synthetic aMF(Lcom/android/gallery3d/b/c;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/c;->axz:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic aMG(Lcom/android/gallery3d/b/c;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/b/c;->axA:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic aMH(Lcom/android/gallery3d/b/c;Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/c;->aMD(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic aMI(Lcom/android/gallery3d/b/c;Landroid/view/View$OnClickListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/c;->aME(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .prologue
    .line 240
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 241
    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/b/c;->setContentView(I)V

    .line 243
    invoke-direct {p0}, Lcom/android/gallery3d/b/c;->aMC()V

    .line 245
    invoke-virtual {p0}, Lcom/android/gallery3d/b/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 247
    const/16 v2, 0x50

    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 248
    invoke-virtual {p0}, Lcom/android/gallery3d/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d00e3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 239
    return-void
.end method
