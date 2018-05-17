.class final Lcom/android/camera/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/j;


# instance fields
.field final synthetic apB:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2

    .prologue
    .line 683
    iput-object p1, p0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aU()V
    .registers 3

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBl(Lcom/android/camera/Camera;)Lcom/android/common/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/g;->aD()V

    .line 687
    iget-object v0, p0, Lcom/android/camera/v;->apB:Lcom/android/camera/Camera;

    new-instance v1, Lcom/android/camera/w;

    invoke-direct {v1, p0}, Lcom/android/camera/w;-><init>(Lcom/android/camera/v;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 685
    return-void
.end method
