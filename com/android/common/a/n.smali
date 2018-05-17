.class final Lcom/android/common/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic an:Lcom/android/common/a/g;


# direct methods
.method constructor <init>(Lcom/android/common/a/g;)V
    .registers 2

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .registers 8

    .prologue
    .line 231
    const-string/jumbo v0, "PreviewTargetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .registers 4

    .prologue
    .line 218
    const-string/jumbo v0, "PreviewTargetManager"

    const-string/jumbo v1, "surfaceCreated"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v0, p1}, Lcom/android/common/a/g;->aJ(Lcom/android/common/a/g;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 220
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/a/g;->aK(Lcom/android/common/a/g;Z)Z

    .line 222
    const-string/jumbo v0, "PreviewTargetManager"

    const-string/jumbo v1, "start RenderThread in surfaceCreated"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v0}, Lcom/android/common/a/g;->aH(Lcom/android/common/a/g;)Lcom/android/common/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v1}, Lcom/android/common/a/g;->aF(Lcom/android/common/a/g;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/a/a;->I(Landroid/view/SurfaceHolder;)V

    .line 225
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v0}, Lcom/android/common/a/g;->aI(Lcom/android/common/a/g;)Lcom/android/common/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/a/h;->aN()V

    .line 217
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 206
    const-string/jumbo v0, "PreviewTargetManager"

    const-string/jumbo v1, "surfaceDestroyed"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v0}, Lcom/android/common/a/g;->aI(Lcom/android/common/a/g;)Lcom/android/common/a/h;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 208
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v0}, Lcom/android/common/a/g;->aI(Lcom/android/common/a/g;)Lcom/android/common/a/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/a/h;->aO()V

    .line 210
    :cond_1b
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/a/g;->aK(Lcom/android/common/a/g;Z)Z

    .line 211
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v0, v2}, Lcom/android/common/a/g;->aJ(Lcom/android/common/a/g;Landroid/view/SurfaceHolder;)Landroid/view/SurfaceHolder;

    .line 212
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/a/g;->aM(Lcom/android/common/a/g;Z)V

    .line 213
    iget-object v0, p0, Lcom/android/common/a/n;->an:Lcom/android/common/a/g;

    invoke-static {v0}, Lcom/android/common/a/g;->aE(Lcom/android/common/a/g;)Lcom/android/common/a/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/a/i;->aQ()V

    .line 205
    return-void
.end method
