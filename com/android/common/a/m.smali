.class final Lcom/android/common/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/S;


# instance fields
.field final synthetic am:Lcom/android/common/a/g;


# direct methods
.method constructor <init>(Lcom/android/common/a/g;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bb()Z
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public bc(Lcom/android/common/appService/R;IIIIIIII)V
    .registers 13

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v0}, Lcom/android/common/a/g;->aG(Lcom/android/common/a/g;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_1a

    if-ne p2, p6, :cond_1a

    if-ne p3, p7, :cond_1a

    .line 169
    if-ne p4, p8, :cond_1a

    if-ne p5, p9, :cond_1a

    .line 170
    const-string/jumbo v0, "PreviewTargetManager"

    const-string/jumbo v1, "onLayoutChange with same size"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    return-void

    .line 175
    :cond_1a
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v1

    sub-int/2addr v1, p5

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v2

    sub-int/2addr v2, p3

    invoke-direct {v0, p2, v1, p4, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    iget-object v1, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v1, v0}, Lcom/android/common/a/g;->aL(Lcom/android/common/a/g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 177
    iget-object v1, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v1}, Lcom/android/common/a/g;->aH(Lcom/android/common/a/g;)Lcom/android/common/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v2}, Lcom/android/common/a/g;->aE(Lcom/android/common/a/g;)Lcom/android/common/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/a/i;->aP()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/common/a/a;->F(Landroid/graphics/Rect;Z)V

    .line 179
    const-string/jumbo v0, "PreviewTargetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayoutChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    const-string/jumbo v2, "; mPreviewRect: "

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 180
    iget-object v2, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v2}, Lcom/android/common/a/g;->aG(Lcom/android/common/a/g;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    return-void
.end method

.method public bd(IIII)V
    .registers 8

    .prologue
    .line 187
    new-instance v0, Landroid/graphics/Rect;

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v1

    sub-int/2addr v1, p4

    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-direct {v0, p1, v1, p3, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 188
    iget-object v1, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v1, v0}, Lcom/android/common/a/g;->aL(Lcom/android/common/a/g;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 189
    iget-object v1, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v1}, Lcom/android/common/a/g;->aH(Lcom/android/common/a/g;)Lcom/android/common/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v2}, Lcom/android/common/a/g;->aE(Lcom/android/common/a/g;)Lcom/android/common/a/i;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/a/i;->aP()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/android/common/a/a;->F(Landroid/graphics/Rect;Z)V

    .line 191
    const-string/jumbo v0, "PreviewTargetManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "init onLayoutChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    const-string/jumbo v2, "; mPreviewRect: "

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    iget-object v2, p0, Lcom/android/common/a/m;->am:Lcom/android/common/a/g;

    invoke-static {v2}, Lcom/android/common/a/g;->aG(Lcom/android/common/a/g;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    .line 191
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    return-void
.end method
