.class Lcom/android/gallery3d/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/g;


# instance fields
.field final synthetic axC:Lcom/android/gallery3d/b/a;


# direct methods
.method private constructor <init>(Lcom/android/gallery3d/b/a;)V
    .registers 2

    .prologue
    .line 291
    iput-object p1, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/d;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/b/d;-><init>(Lcom/android/gallery3d/b/a;)V

    return-void
.end method


# virtual methods
.method public aKf(I)V
    .registers 2

    .prologue
    .line 331
    return-void
.end method

.method public aKg(I)V
    .registers 2

    .prologue
    .line 336
    return-void
.end method

.method public aKh(I)V
    .registers 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0, p1}, Lcom/android/gallery3d/b/a;->aMz(Lcom/android/gallery3d/b/a;I)V

    .line 299
    return-void
.end method

.method public aKi(IZ)V
    .registers 6

    .prologue
    .line 342
    const-string/jumbo v0, "GalleryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataFocusChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    if-eqz p2, :cond_2c

    .line 344
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0, p1}, Lcom/android/gallery3d/b/a;->aMA(Lcom/android/gallery3d/b/a;I)V

    .line 341
    :cond_2c
    return-void
.end method

.method public aKj(IZ)V
    .registers 7

    .prologue
    const/16 v3, 0x8

    .line 312
    const-string/jumbo v0, "GalleryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDataFullScreenChange fullScreen "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0, p2}, Lcom/android/gallery3d/b/a;->aMs(Lcom/android/gallery3d/b/a;Z)Z

    .line 314
    if-eqz p2, :cond_36

    .line 315
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMp(Lcom/android/gallery3d/b/a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMk(Lcom/android/gallery3d/b/a;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 311
    :goto_35
    return-void

    .line 319
    :cond_36
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMk(Lcom/android/gallery3d/b/a;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMw(Lcom/android/gallery3d/b/a;)V

    goto :goto_35
.end method

.method public aKk(I)V
    .registers 3

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0, p1}, Lcom/android/gallery3d/b/a;->aMz(Lcom/android/gallery3d/b/a;I)V

    .line 294
    return-void
.end method

.method public aKl()V
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/b/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c001e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 306
    iget-object v1, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v1}, Lcom/android/gallery3d/b/a;->aMk(Lcom/android/gallery3d/b/a;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 307
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/a;->aMr(Lcom/android/gallery3d/b/a;Z)Z

    .line 304
    return-void
.end method

.method public aKm()V
    .registers 3

    .prologue
    .line 326
    const-string/jumbo v0, "GalleryFragment"

    const-string/jumbo v1, "onReload"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/a;->aMA(Lcom/android/gallery3d/b/a;I)V

    .line 325
    return-void
.end method

.method public aKn(I)V
    .registers 5

    .prologue
    .line 350
    const-string/jumbo v0, "GalleryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onToggleSystemDecorsVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMo(Lcom/android/gallery3d/b/a;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2c

    .line 352
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMw(Lcom/android/gallery3d/b/a;)V

    .line 349
    :goto_2b
    return-void

    .line 355
    :cond_2c
    iget-object v0, p0, Lcom/android/gallery3d/b/d;->axC:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMB(Lcom/android/gallery3d/b/a;)V

    goto :goto_2b
.end method

.method public aKo(Z)V
    .registers 5

    .prologue
    .line 361
    const-string/jumbo v0, "GalleryFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSystemDecorsVisibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    return-void
.end method
