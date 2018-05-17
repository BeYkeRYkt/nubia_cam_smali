.class final Lcom/android/gallery3d/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axH:Lcom/android/gallery3d/b/h;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/h;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v0, v0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJp()V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v0, v0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMj(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/a/j;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v1, v1, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v2, v2, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v2}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJd()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/a/j;->aIc(Landroid/content/Context;I)V

    .line 211
    iget-object v0, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v0, v0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJk(Z)V

    .line 212
    iget-object v0, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v0, v0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0, v3}, Lcom/android/gallery3d/b/a;->aMu(Lcom/android/gallery3d/b/a;Z)Z

    .line 213
    iget-object v0, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v0, v0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMy(Lcom/android/gallery3d/b/a;)V

    .line 214
    iget-object v0, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v0, v0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    iget-object v1, p0, Lcom/android/gallery3d/b/i;->axH:Lcom/android/gallery3d/b/h;

    iget-object v1, v1, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v1}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJd()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/a;->aMA(Lcom/android/gallery3d/b/a;I)V

    .line 208
    return-void
.end method
