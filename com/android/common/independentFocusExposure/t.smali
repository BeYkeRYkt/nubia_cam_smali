.class Lcom/android/common/independentFocusExposure/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/O;


# instance fields
.field final synthetic gt:Lcom/android/common/independentFocusExposure/o;


# direct methods
.method private constructor <init>(Lcom/android/common/independentFocusExposure/o;)V
    .registers 2

    .prologue
    .line 760
    iput-object p1, p0, Lcom/android/common/independentFocusExposure/t;->gt:Lcom/android/common/independentFocusExposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/independentFocusExposure/o;Lcom/android/common/independentFocusExposure/t;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/independentFocusExposure/t;-><init>(Lcom/android/common/independentFocusExposure/o;)V

    return-void
.end method


# virtual methods
.method public dx(I)V
    .registers 4

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/common/independentFocusExposure/t;->gt:Lcom/android/common/independentFocusExposure/o;

    invoke-static {v0}, Lcom/android/common/independentFocusExposure/o;->gW(Lcom/android/common/independentFocusExposure/o;)Lcom/android/common/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/RotateLayout;->vn(IZ)V

    .line 761
    return-void
.end method
