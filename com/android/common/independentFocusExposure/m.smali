.class Lcom/android/common/independentFocusExposure/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/O;


# instance fields
.field final synthetic fb:Lcom/android/common/independentFocusExposure/i;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/i;)V
    .registers 2

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/m;->fb:Lcom/android/common/independentFocusExposure/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/i;Lcom/android/common/independentFocusExposure/m;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/m;-><init>(Lcom/android/common/independentFocusExposure/i;)V

    return-void
.end method


# virtual methods
.method public dx(I)V
    .registers 4

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/m;->fb:Lcom/android/common/independentFocusExposure/i;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/i;->fz(Lcom/android/common/independentFocusExposure/i;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 586
    return-void
.end method
