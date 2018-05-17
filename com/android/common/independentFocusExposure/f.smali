.class Lcom/android/common/independentFocusExposure/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/O;


# instance fields
.field final synthetic dT:Lcom/android/common/independentFocusExposure/a;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/a;)V
    .registers 2

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/f;->dT:Lcom/android/common/independentFocusExposure/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/a;Lcom/android/common/independentFocusExposure/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/f;-><init>(Lcom/android/common/independentFocusExposure/a;)V

    return-void
.end method


# virtual methods
.method public dx(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 595
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/f;->dT:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->do(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 596
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/f;->dT:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dn(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 597
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/f;->dT:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dt(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 599
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/f;->dT:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->do(Lcom/android/common/independentFocusExposure/a;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/f;->dT:Lcom/android/common/independentFocusExposure/a;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/a;->dw(Lcom/android/common/independentFocusExposure/a;)V

    .line 594
    return-void
.end method
