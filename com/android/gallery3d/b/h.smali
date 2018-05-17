.class final Lcom/android/gallery3d/b/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic axG:Lcom/android/gallery3d/b/a;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/b/a;)V
    .registers 2

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMn(Lcom/android/gallery3d/b/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 201
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMl(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/ui/FilmStripView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJd()I

    move-result v0

    .line 202
    if-ltz v0, :cond_21

    iget-object v1, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v1}, Lcom/android/gallery3d/b/a;->aMj(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/a/j;->aHY()I

    move-result v1

    if-gt v1, v0, :cond_22

    :cond_21
    return-void

    .line 203
    :cond_22
    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMi(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/b/c;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMi(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/b/c;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_37

    return-void

    .line 205
    :cond_37
    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    new-instance v1, Lcom/android/gallery3d/b/c;

    iget-object v2, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    iget-object v3, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-virtual {v3}, Lcom/android/gallery3d/b/a;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/gallery3d/b/c;-><init>(Lcom/android/gallery3d/b/a;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/a;->aMq(Lcom/android/gallery3d/b/a;Lcom/android/gallery3d/b/c;)Lcom/android/gallery3d/b/c;

    .line 206
    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMi(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/b/c;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/b/i;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/b/i;-><init>(Lcom/android/gallery3d/b/h;)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/c;->aMI(Lcom/android/gallery3d/b/c;Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMi(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/b/c;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/b/j;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/b/j;-><init>(Lcom/android/gallery3d/b/h;)V

    invoke-static {v0, v1}, Lcom/android/gallery3d/b/c;->aMH(Lcom/android/gallery3d/b/c;Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v0, p0, Lcom/android/gallery3d/b/h;->axG:Lcom/android/gallery3d/b/a;

    invoke-static {v0}, Lcom/android/gallery3d/b/a;->aMi(Lcom/android/gallery3d/b/a;)Lcom/android/gallery3d/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/b/c;->show()V

    .line 199
    return-void
.end method
