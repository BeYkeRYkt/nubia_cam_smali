.class final Lcom/android/gallery3d/ui/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/m;


# instance fields
.field final synthetic awG:Lcom/android/gallery3d/ui/j;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/j;)V
    .registers 2

    .prologue
    .line 1687
    iput-object p1, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aLM()V
    .registers 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1702
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    invoke-static {v0, v2}, Lcom/android/gallery3d/ui/j;->aLp(Lcom/android/gallery3d/ui/j;Z)Z

    .line 1703
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v3

    if-nez v0, :cond_14

    .line 1704
    return-void

    .line 1706
    :cond_14
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aKc(Lcom/android/gallery3d/ui/FilmStripView;)V

    .line 1707
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v1, v1, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v1

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v1

    if-ne v0, v1, :cond_42

    .line 1708
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJV(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v0

    if-ne v0, v2, :cond_42

    .line 1710
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKq()V

    .line 1701
    :cond_42
    return-void
.end method

.method public aLN(II)V
    .registers 6

    .prologue
    .line 1690
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJO(Lcom/android/gallery3d/ui/FilmStripView;I)I

    .line 1692
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJU(Lcom/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    .line 1693
    iget-object v1, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v1, v1, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v2, v2, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJd()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJX(Lcom/android/gallery3d/ui/FilmStripView;I)V

    .line 1694
    if-eqz v0, :cond_2c

    .line 1695
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    .line 1697
    :cond_2c
    iget-object v0, p0, Lcom/android/gallery3d/ui/q;->awG:Lcom/android/gallery3d/ui/j;

    iget-object v0, v0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 1689
    return-void
.end method
