.class final Lcom/android/camera/cameraFamily/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/cameraFamily/g;


# instance fields
.field final synthetic amA:Lcom/android/camera/cameraFamily/a;


# direct methods
.method constructor <init>(Lcom/android/camera/cameraFamily/a;)V
    .registers 2

    .prologue
    .line 395
    iput-object p1, p0, Lcom/android/camera/cameraFamily/r;->amA:Lcom/android/camera/cameraFamily/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public axM(Ljava/util/List;)V
    .registers 4

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/camera/cameraFamily/r;->amA:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awN(Lcom/android/camera/cameraFamily/a;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 399
    iget-object v0, p0, Lcom/android/camera/cameraFamily/r;->amA:Lcom/android/camera/cameraFamily/a;

    invoke-static {v0}, Lcom/android/camera/cameraFamily/a;->awO(Lcom/android/camera/cameraFamily/a;)Lcom/android/camera/c/c;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/cameraFamily/r;->amA:Lcom/android/camera/cameraFamily/a;

    invoke-static {v1}, Lcom/android/camera/cameraFamily/a;->awX(Lcom/android/camera/cameraFamily/a;)[Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/c/c;->azp([Landroid/view/View;)V

    .line 397
    :cond_17
    return-void
.end method
