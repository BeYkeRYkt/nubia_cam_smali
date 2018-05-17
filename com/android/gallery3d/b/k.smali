.class final Lcom/android/gallery3d/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axJ:Lcom/android/gallery3d/b/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/a;)V
    .registers 2

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/gallery3d/b/k;->axJ:Lcom/android/gallery3d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/android/gallery3d/b/k;->axJ:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJj()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 397
    const-string/jumbo v0, "GalleryFragment"

    const-string/jumbo v1, "RemoveAnimation is playing"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    return-void

    .line 400
    :cond_16
    iget-object v0, p0, Lcom/android/gallery3d/b/k;->axJ:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMj(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/j;->aIh()Z

    .line 401
    iget-object v0, p0, Lcom/android/gallery3d/b/k;->axJ:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMx(Lcom/android/gallery3d/b/a;)V

    .line 402
    iget-object v0, p0, Lcom/android/gallery3d/b/k;->axJ:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/gallery3d/b/k;->axJ:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMj(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/a/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/a/j;->aHY()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 403
    :cond_3d
    iget-object v0, p0, Lcom/android/gallery3d/b/k;->axJ:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJc()Lcom/android/gallery3d/ui/h;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/ui/h;->aKp()V

    .line 395
    :cond_4a
    return-void
.end method
