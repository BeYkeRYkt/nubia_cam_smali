.class public Lcom/android/videomaker/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static aJm:I

.field public static aJn:I

.field private static aJo:F

.field private static final aJp:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    sput-object v0, Lcom/android/videomaker/a/a;->aJp:Landroid/graphics/Paint;

    .line 58
    const/4 v0, 0x1

    sput v0, Lcom/android/videomaker/a/a;->aJn:I

    .line 59
    sput v1, Lcom/android/videomaker/a/a;->aJm:I

    .line 61
    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/videomaker/a/a;->aJo:F

    .line 48
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aYh(F)F
    .registers 2

    .prologue
    .line 374
    sget v0, Lcom/android/videomaker/a/a;->aJo:F

    mul-float/2addr v0, p0

    return v0
.end method

.method public static aYi(I)I
    .registers 2

    .prologue
    .line 378
    int-to-float v0, p0

    invoke-static {v0}, Lcom/android/videomaker/a/a;->aYh(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public static aYj(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 364
    sget v0, Lcom/android/videomaker/a/a;->aJo:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_20

    .line 365
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 367
    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 366
    check-cast v0, Landroid/view/WindowManager;

    .line 368
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 369
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/videomaker/a/a;->aJo:F

    .line 363
    :cond_20
    return-void
.end method
