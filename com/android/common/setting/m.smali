.class final Lcom/android/common/setting/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$AutoFocusMoveCallback;


# instance fields
.field final synthetic Us:Lcom/android/common/setting/l;


# direct methods
.method private constructor <init>(Lcom/android/common/setting/l;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/common/setting/m;->Us:Lcom/android/common/setting/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/setting/l;Lcom/android/common/setting/m;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/setting/m;-><init>(Lcom/android/common/setting/l;)V

    return-void
.end method


# virtual methods
.method public onAutoFocusMoving(ZLandroid/hardware/Camera;)V
    .registers 4

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/common/setting/m;->Us:Lcom/android/common/setting/l;

    invoke-static {v0}, Lcom/android/common/setting/l;->Yr(Lcom/android/common/setting/l;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/g;->dA()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 170
    iget-object v0, p0, Lcom/android/common/setting/m;->Us:Lcom/android/common/setting/l;

    invoke-static {v0}, Lcom/android/common/setting/l;->Yr(Lcom/android/common/setting/l;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/independentFocusExposure/g;->dP(Z)V

    .line 171
    iget-object v0, p0, Lcom/android/common/setting/m;->Us:Lcom/android/common/setting/l;

    invoke-static {v0}, Lcom/android/common/setting/l;->Yr(Lcom/android/common/setting/l;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/appService/H;->ny(Z)Z

    .line 168
    :cond_2a
    return-void
.end method
