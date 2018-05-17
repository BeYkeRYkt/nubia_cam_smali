.class final Lcom/android/camera/cameraFamily/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic amy:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/camera/cameraFamily/p;->amy:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/camera/cameraFamily/p;->amy:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->aws()Z

    move-result v0

    if-nez v0, :cond_24

    .line 213
    iget-object v0, p0, Lcom/android/camera/cameraFamily/p;->amy:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awH(Lcom/android/camera/cameraFamily/a;)Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amH(Lcom/android/common/camerastate/b;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 217
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/cameraFamily/p;->amy:Lcom/android/camera/cameraFamily/a;

    invoke-static {v1}, Lcom/android/camera/cameraFamily/a;->awY(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/cameraFamily/j;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 211
    return-void

    .line 214
    :cond_24
    const-string/jumbo v0, "CameraFamilyFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cameraFamilyAnimating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/cameraFamily/p;->amy:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v2}, Lcom/android/camera/cameraFamily/a;->aws()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    return-void
.end method
