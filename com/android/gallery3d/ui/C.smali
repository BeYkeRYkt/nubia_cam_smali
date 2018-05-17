.class final Lcom/android/gallery3d/ui/C;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/o;


# instance fields
.field final synthetic axf:Lcom/android/gallery3d/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/FilmStripView;)V
    .registers 2

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/android/gallery3d/ui/C;->axf:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aIp()V
    .registers 2

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/android/gallery3d/ui/C;->axf:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aKb(Lcom/android/gallery3d/ui/FilmStripView;)V

    .line 1420
    return-void
.end method

.method public aIq(ILcom/android/gallery3d/a/g;)V
    .registers 4

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/gallery3d/ui/C;->axf:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, p1, p2}, Lcom/android/gallery3d/ui/FilmStripView;->aJW(Lcom/android/gallery3d/ui/FilmStripView;ILcom/android/gallery3d/a/g;)V

    .line 1440
    return-void
.end method

.method public aIr(Lcom/android/gallery3d/a/n;)V
    .registers 3

    .prologue
    .line 1426
    iget-object v0, p0, Lcom/android/gallery3d/ui/C;->axf:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aKe(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/a/n;)V

    .line 1425
    return-void
.end method

.method public aIs(ILcom/android/gallery3d/a/g;)V
    .registers 5

    .prologue
    .line 1431
    iget-object v0, p0, Lcom/android/gallery3d/ui/C;->axf:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_11

    .line 1433
    iget-object v0, p0, Lcom/android/gallery3d/ui/C;->axf:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aKb(Lcom/android/gallery3d/ui/FilmStripView;)V

    .line 1434
    return-void

    .line 1436
    :cond_11
    iget-object v0, p0, Lcom/android/gallery3d/ui/C;->axf:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aKd(Lcom/android/gallery3d/ui/FilmStripView;I)V

    .line 1430
    return-void
.end method
