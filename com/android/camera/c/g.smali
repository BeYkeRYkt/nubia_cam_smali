.class final Lcom/android/camera/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic anX:Lcom/android/camera/c/c;


# direct methods
.method constructor <init>(Lcom/android/camera/c/c;)V
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/c/g;->anX:Lcom/android/camera/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/cameraFamily/k;

    .line 146
    iget-boolean v1, v0, Lcom/android/camera/cameraFamily/k;->aml:Z

    if-nez v1, :cond_b

    return-void

    .line 147
    :cond_b
    iget-object v1, p0, Lcom/android/camera/c/g;->anX:Lcom/android/camera/c/c;

    invoke-static {v1}, Lcom/android/camera/c/c;->azs(Lcom/android/camera/c/c;)Lcom/android/camera/c/d;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/camera/c/d;->ayk(Lcom/android/camera/cameraFamily/k;)V

    .line 144
    return-void
.end method
