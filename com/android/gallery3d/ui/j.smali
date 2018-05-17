.class Lcom/android/gallery3d/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/ui/h;


# instance fields
.field private awk:Z

.field private awl:Landroid/animation/AnimatorSet;

.field private final awm:Landroid/animation/ValueAnimator;

.field private awn:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private final awo:Lcom/android/gallery3d/ui/l;

.field private final awp:Lcom/android/gallery3d/ui/m;

.field private awq:Landroid/animation/ValueAnimator;

.field final synthetic awr:Lcom/android/gallery3d/ui/FilmStripView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/FilmStripView;Landroid/content/Context;)V
    .registers 8

    .prologue
    .line 1727
    iput-object p1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1687
    new-instance v0, Lcom/android/gallery3d/ui/q;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/q;-><init>(Lcom/android/gallery3d/ui/j;)V

    .line 1686
    iput-object v0, p0, Lcom/android/gallery3d/ui/j;->awp:Lcom/android/gallery3d/ui/m;

    .line 1716
    new-instance v0, Lcom/android/gallery3d/ui/r;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/r;-><init>(Lcom/android/gallery3d/ui/j;)V

    .line 1715
    iput-object v0, p0, Lcom/android/gallery3d/ui/j;->awn:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 1728
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    .line 1729
    new-instance v1, Lcom/android/gallery3d/ui/l;

    invoke-static {p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJA(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/app/Activity;

    move-result-object v2

    .line 1730
    new-instance v3, Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJA(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1731
    iget-object v4, p0, Lcom/android/gallery3d/ui/j;->awp:Lcom/android/gallery3d/ui/m;

    .line 1729
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/gallery3d/ui/l;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/gallery3d/ui/m;Landroid/animation/TimeInterpolator;)V

    iput-object v1, p0, Lcom/android/gallery3d/ui/j;->awo:Lcom/android/gallery3d/ui/l;

    .line 1732
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/ui/j;->awk:Z

    .line 1734
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    .line 1735
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/gallery3d/ui/j;->awn:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1736
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1727
    return-void
.end method

.method private aKR()V
    .registers 2

    .prologue
    .line 2040
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/j;->aLb()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2041
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2038
    :cond_b
    return-void
.end method

.method private aKS()V
    .registers 3

    .prologue
    .line 2135
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJI(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/os/AsyncTask;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 2136
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJI(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_22

    .line 2137
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJI(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 2133
    :cond_22
    :goto_22
    return-void

    .line 2138
    :cond_23
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJI(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/os/AsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    goto :goto_22
.end method

.method private aKT()V
    .registers 2

    .prologue
    .line 2046
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/j;->aLe()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2047
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2045
    :cond_b
    return-void
.end method

.method private aKU()V
    .registers 4

    .prologue
    .line 2052
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2053
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/g;->aKj(IZ)V

    .line 2051
    :cond_1f
    return-void
.end method

.method private aKV(III)I
    .registers 6

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/p;->aHY()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x64

    .line 1756
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJL(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    add-int/2addr v1, p3

    .line 1755
    mul-int/2addr v0, v1

    .line 1754
    add-int/2addr v0, p2

    return v0
.end method

.method private aKW(III)I
    .registers 6

    .prologue
    .line 1750
    add-int/lit8 v0, p1, 0x64

    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJL(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    add-int/2addr v1, p3

    mul-int/2addr v0, v1

    sub-int v0, p2, v0

    return v0
.end method

.method private aKZ()Landroid/net/Uri;
    .registers 3

    .prologue
    .line 2076
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2077
    if-nez v0, :cond_e

    .line 2078
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    return-object v0

    .line 2080
    :cond_e
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHH()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic aLA(Lcom/android/gallery3d/ui/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aLm()V

    return-void
.end method

.method static synthetic aLB(Lcom/android/gallery3d/ui/j;Lcom/android/gallery3d/ui/i;FF)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/ui/j;->aLo(Lcom/android/gallery3d/ui/i;FF)V

    return-void
.end method

.method private aLa(Z)F
    .registers 7

    .prologue
    .line 2089
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 2090
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v2

    .line 2091
    if-eqz v1, :cond_4a

    .line 2092
    const/4 v0, 0x4

    .line 2091
    invoke-interface {v2, v0}, Lcom/android/gallery3d/a/g;->aHC(I)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 2095
    invoke-interface {v2}, Lcom/android/gallery3d/a/g;->aHA()I

    move-result v0

    int-to-float v0, v0

    .line 2096
    invoke-interface {v2}, Lcom/android/gallery3d/a/g;->aHv()I

    move-result v3

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_35

    invoke-interface {v2}, Lcom/android/gallery3d/a/g;->aHv()I

    move-result v3

    const/16 v4, 0x10e

    if-ne v3, v4, :cond_3a

    .line 2097
    :cond_35
    invoke-interface {v2}, Lcom/android/gallery3d/a/g;->aHu()I

    move-result v0

    int-to-float v0, v0

    .line 2099
    :cond_3a
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKD()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 2100
    if-eqz p1, :cond_49

    .line 2104
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJJ(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2106
    :cond_49
    return v0

    .line 2093
    :cond_4a
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method private aLg()V
    .registers 4

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 2071
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/g;->aKj(IZ)V

    .line 2069
    :cond_1f
    return-void
.end method

.method private aLh()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 2110
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2111
    return-void

    .line 2113
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 2114
    if-nez v0, :cond_14

    .line 2115
    return-void

    .line 2117
    :cond_14
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v1

    .line 2118
    const/4 v2, 0x4

    invoke-interface {v1, v2}, Lcom/android/gallery3d/a/g;->aHC(I)Z

    move-result v2

    if-nez v2, :cond_2a

    .line 2119
    return-void

    .line 2121
    :cond_2a
    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aKZ()Landroid/net/Uri;

    move-result-object v2

    .line 2122
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKC()Landroid/graphics/RectF;

    .line 2123
    if-eqz v2, :cond_37

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    if-ne v2, v3, :cond_38

    .line 2124
    :cond_37
    return-void

    .line 2126
    :cond_38
    invoke-interface {v1}, Lcom/android/gallery3d/a/g;->aHv()I

    .line 2128
    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aKS()V

    .line 2129
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    new-instance v2, Lcom/android/gallery3d/ui/k;

    invoke-direct {v2, p0, v4}, Lcom/android/gallery3d/ui/k;-><init>(Lcom/android/gallery3d/ui/j;Lcom/android/gallery3d/ui/k;)V

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJS(Lcom/android/gallery3d/ui/FilmStripView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;

    .line 2130
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJI(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/os/AsyncTask;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/gallery3d/ui/i;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2109
    return-void
.end method

.method private aLi(FI)V
    .registers 7

    .prologue
    const/4 v1, 0x2

    .line 2002
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v1

    if-nez v0, :cond_c

    .line 2003
    return-void

    .line 2005
    :cond_c
    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aLm()V

    .line 2006
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2007
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    iget-object v2, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2008
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2001
    return-void
.end method

.method private aLl(Z)V
    .registers 7

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    move v2, v1

    .line 2061
    :goto_3
    if-ge v2, v4, :cond_2a

    .line 2062
    if-eq v2, v4, :cond_11

    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v2

    if-nez v0, :cond_15

    .line 2061
    :cond_11
    :goto_11
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 2065
    :cond_15
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v3

    if-eqz p1, :cond_28

    move v0, v1

    :goto_24
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_11

    :cond_28
    const/4 v0, 0x4

    goto :goto_24

    .line 2057
    :cond_2a
    return-void
.end method

.method private aLm()V
    .registers 2

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1969
    return-void
.end method

.method private aLo(Lcom/android/gallery3d/ui/i;FF)V
    .registers 11

    .prologue
    const/4 v4, 0x0

    .line 1762
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_a

    .line 1763
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 1766
    :cond_a
    invoke-direct {p0, v4}, Lcom/android/gallery3d/ui/j;->aLa(Z)F

    move-result v2

    .line 1767
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    sub-float v1, v2, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5d

    .line 1770
    :goto_1e
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    .line 1771
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object v3, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v3

    aput v3, v1, v4

    const/4 v3, 0x1

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 1772
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1773
    iget-object v6, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/gallery3d/ui/s;

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/s;-><init>(Lcom/android/gallery3d/ui/j;FLcom/android/gallery3d/ui/i;FF)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1814
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/gallery3d/ui/t;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/gallery3d/ui/t;-><init>(Lcom/android/gallery3d/ui/j;Lcom/android/gallery3d/ui/i;FF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1824
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 1760
    return-void

    .line 1768
    :cond_5d
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1e
.end method

.method static synthetic aLp(Lcom/android/gallery3d/ui/j;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/gallery3d/ui/j;->awk:Z

    return p1
.end method

.method static synthetic aLq(Lcom/android/gallery3d/ui/j;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .registers 2

    iput-object p1, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic aLr(Lcom/android/gallery3d/ui/j;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic aLs(Lcom/android/gallery3d/ui/j;Z)F
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/j;->aLa(Z)F

    move-result v0

    return v0
.end method

.method static synthetic aLt(Lcom/android/gallery3d/ui/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aKR()V

    return-void
.end method

.method static synthetic aLu(Lcom/android/gallery3d/ui/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aKS()V

    return-void
.end method

.method static synthetic aLv(Lcom/android/gallery3d/ui/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aKT()V

    return-void
.end method

.method static synthetic aLw(Lcom/android/gallery3d/ui/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aKU()V

    return-void
.end method

.method static synthetic aLx(Lcom/android/gallery3d/ui/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aLg()V

    return-void
.end method

.method static synthetic aLy(Lcom/android/gallery3d/ui/j;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aLh()V

    return-void
.end method

.method static synthetic aLz(Lcom/android/gallery3d/ui/j;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/j;->aLl(Z)V

    return-void
.end method


# virtual methods
.method public aKX(F)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    .line 1844
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1845
    return-void

    .line 1847
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1848
    if-nez v0, :cond_14

    .line 1849
    return-void

    .line 1852
    :cond_14
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v1

    div-float v1, p1, v1

    .line 1853
    iget-object v3, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v3

    if-eqz v3, :cond_35

    iget-object v3, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJV(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_35

    .line 1854
    const/4 v3, 0x0

    cmpg-float v1, v1, v3

    if-gez v1, :cond_35

    .line 1856
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/j;->aKp()V

    .line 1859
    :cond_35
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/FilmStripView;->getWidth()I

    move-result v1

    .line 1863
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v4

    invoke-direct {p0, v3, v4, v1}, Lcom/android/gallery3d/ui/j;->aKW(III)I

    move-result v5

    .line 1866
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v0

    invoke-direct {p0, v3, v0, v1}, Lcom/android/gallery3d/ui/j;->aKV(III)I

    move-result v6

    .line 1867
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awo:Lcom/android/gallery3d/ui/l;

    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    neg-float v3, p1

    float-to-int v3, v3

    move v4, v2

    move v7, v2

    move v8, v2

    invoke-virtual/range {v0 .. v8}, Lcom/android/gallery3d/ui/l;->aLE(IIIIIIII)V

    .line 1843
    return-void
.end method

.method public aKY(FF)V
    .registers 13

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x40800000    # 4.0f

    const/4 v6, 0x2

    .line 1872
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1873
    return-void

    .line 1876
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v6

    .line 1877
    if-nez v0, :cond_17

    .line 1878
    return-void

    .line 1897
    :cond_17
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1900
    float-to-double v2, v1

    const-wide v4, 0x3fd5555560000000L    # 0.3333333432674408

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 1899
    const-wide v4, 0x3fa99999a0000000L    # 0.05000000074505806

    mul-double/2addr v2, v4

    double-to-float v1, v2

    .line 1902
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKz()F

    move-result v2

    .line 1903
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKA()F

    move-result v3

    .line 1905
    new-array v4, v6, [F

    aput v2, v4, v8

    .line 1906
    div-float v5, v1, v7

    mul-float/2addr v5, p1

    add-float/2addr v2, v5

    aput v2, v4, v9

    .line 1905
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 1907
    new-array v4, v6, [F

    aput v3, v4, v8

    .line 1908
    div-float v5, v1, v7

    mul-float/2addr v5, p2

    add-float/2addr v3, v5

    aput v3, v4, v9

    .line 1907
    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 1910
    new-instance v4, Lcom/android/gallery3d/ui/u;

    invoke-direct {v4, p0, v2, v3, v0}, Lcom/android/gallery3d/ui/u;-><init>(Lcom/android/gallery3d/ui/j;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;Lcom/android/gallery3d/ui/i;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1921
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    .line 1922
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 1923
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1924
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/gallery3d/ui/v;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/v;-><init>(Lcom/android/gallery3d/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1930
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/gallery3d/ui/w;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/w;-><init>(Lcom/android/gallery3d/ui/j;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1955
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 1871
    return-void
.end method

.method public aKp()V
    .registers 7

    .prologue
    const/16 v5, 0x190

    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 2013
    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "goToFilmStrip"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2014
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-direct {p0, v0, v5}, Lcom/android/gallery3d/ui/j;->aLi(FI)V

    .line 2016
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 2017
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    if-nez v1, :cond_3b

    .line 2018
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJV(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 2019
    if-eqz v0, :cond_3b

    .line 2021
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    invoke-virtual {p0, v0, v5, v3}, Lcom/android/gallery3d/ui/j;->aLk(IIZ)V

    .line 2024
    :cond_3b
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 2025
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v1

    aget-object v1, v1, v4

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    invoke-interface {v0, v1, v3}, Lcom/android/gallery3d/ui/g;->aKj(IZ)V

    .line 2012
    :cond_58
    return-void
.end method

.method public aKq()V
    .registers 3

    .prologue
    .line 2031
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2032
    return-void

    .line 2034
    :cond_9
    invoke-direct {p0}, Lcom/android/gallery3d/ui/j;->aKU()V

    .line 2035
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x190

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/j;->aLi(FI)V

    .line 2030
    return-void
.end method

.method public aLb()Z
    .registers 2

    .prologue
    .line 2231
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awl:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public aLc()Z
    .registers 2

    .prologue
    .line 1746
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awm:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public aLd()Z
    .registers 2

    .prologue
    .line 1741
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awo:Lcom/android/gallery3d/ui/l;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/l;->aLG()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x1

    goto :goto_9
.end method

.method public aLe()Z
    .registers 2

    .prologue
    .line 2235
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awq:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public aLf()Z
    .registers 3

    .prologue
    .line 2227
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJK(Lcom/android/gallery3d/ui/FilmStripView;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public aLj(F)V
    .registers 5

    .prologue
    .line 1829
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1830
    return-void

    .line 1832
    :cond_8
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJO(Lcom/android/gallery3d/ui/FilmStripView;I)I

    .line 1834
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJU(Lcom/android/gallery3d/ui/FilmStripView;)Z

    move-result v0

    .line 1835
    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    iget-object v2, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJd()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJX(Lcom/android/gallery3d/ui/FilmStripView;I)V

    .line 1836
    if-eqz v0, :cond_31

    .line 1837
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    .line 1839
    :cond_31
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 1828
    return-void
.end method

.method public aLk(IIZ)V
    .registers 11

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    .line 1975
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aget-object v0, v0, v6

    if-nez v0, :cond_d

    .line 1976
    return-void

    .line 1978
    :cond_d
    iput-boolean p3, p0, Lcom/android/gallery3d/ui/j;->awk:Z

    .line 1979
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awo:Lcom/android/gallery3d/ui/l;

    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v1

    iget-object v3, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJB(Lcom/android/gallery3d/ui/FilmStripView;)I

    move-result v3

    sub-int v3, p1, v3

    move v4, v2

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/gallery3d/ui/l;->aLI(IIIII)V

    .line 1982
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    iget-object v1, p0, Lcom/android/gallery3d/ui/j;->awr:Lcom/android/gallery3d/ui/FilmStripView;

    invoke-static {v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;

    move-result-object v1

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJX(Lcom/android/gallery3d/ui/FilmStripView;I)V

    .line 1974
    return-void
.end method

.method public aLn(Z)Z
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1960
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/j;->aLd()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1961
    return v1

    .line 1962
    :cond_8
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/j;->awk:Z

    if-nez v0, :cond_e

    if-eqz p1, :cond_14

    .line 1965
    :cond_e
    iget-object v0, p0, Lcom/android/gallery3d/ui/j;->awo:Lcom/android/gallery3d/ui/l;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/l;->aLF(Z)V

    .line 1966
    return v1

    .line 1963
    :cond_14
    const/4 v0, 0x0

    return v0
.end method
