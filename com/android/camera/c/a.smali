.class public Lcom/android/camera/c/a;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private anm:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object p1, p0, Lcom/android/camera/c/a;->anm:Landroid/content/Context;

    .line 29
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/c/a;->setCancelable(Z)V

    .line 30
    invoke-virtual {p0}, Lcom/android/camera/c/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 26
    return-void
.end method

.method private aze(Landroid/view/Window;)V
    .registers 8

    .prologue
    .line 47
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    invoke-virtual {p1}, Landroid/view/Window;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 49
    const-string/jumbo v2, "window"

    .line 48
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 50
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 51
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 52
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 53
    if-ge v0, v1, :cond_42

    .line 54
    :goto_1f
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 55
    int-to-double v2, v0

    const-wide v4, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v2, v4

    double-to-int v0, v2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    const/4 v0, -0x2

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 57
    invoke-virtual {p1, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 59
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/c/a;->setCanceledOnTouchOutside(Z)V

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/c/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 61
    const v1, 0x7f0e0024

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 46
    return-void

    :cond_42
    move v0, v1

    .line 53
    goto :goto_1f
.end method

.method static synthetic azf(Lcom/android/camera/c/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/android/camera/c/a;->anm:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public show()V
    .registers 2

    .prologue
    .line 67
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 68
    invoke-virtual {p0}, Lcom/android/camera/c/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/c/a;->aze(Landroid/view/Window;)V

    .line 65
    return-void
.end method
