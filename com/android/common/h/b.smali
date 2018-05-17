.class public Lcom/android/common/h/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private XV:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/b;->XV:Lcom/android/common/appService/W;

    .line 25
    iput-object p1, p0, Lcom/android/common/h/b;->XV:Lcom/android/common/appService/W;

    .line 24
    return-void
.end method

.method private abA()Z
    .registers 2

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/common/h/b;->aby()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qr()Z

    move-result v0

    return v0
.end method

.method private abB()Z
    .registers 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/common/h/b;->aby()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qq()Z

    move-result v0

    return v0
.end method

.method private abw(I)I
    .registers 4

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/android/common/h/b;->aby()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 59
    int-to-float v1, p1

    .line 58
    mul-float/2addr v0, v1

    .line 59
    const/high16 v1, 0x3f000000    # 0.5f

    .line 58
    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private aby()Lcom/android/common/appService/W;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/common/h/b;->XV:Lcom/android/common/appService/W;

    return-object v0
.end method

.method private abz()Lcom/android/common/m/a;
    .registers 2

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/android/common/h/b;->aby()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahl()Lcom/android/common/m/a;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abx()V
    .registers 7

    .prologue
    const v3, 0x7f0a044f

    const/4 v2, 0x0

    .line 35
    invoke-direct {p0}, Lcom/android/common/h/b;->abA()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/common/h/b;->XV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 36
    :cond_12
    return-void

    .line 38
    :cond_13
    iget-object v0, p0, Lcom/android/common/h/b;->XV:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 40
    invoke-direct {p0}, Lcom/android/common/h/b;->abB()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 41
    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asm()V

    .line 34
    :goto_28
    return-void

    .line 43
    :cond_29
    invoke-static {v0, v3}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    goto :goto_28

    .line 46
    :cond_2d
    invoke-direct {p0}, Lcom/android/common/h/b;->abz()Lcom/android/common/m/a;

    move-result-object v1

    if-eqz v1, :cond_37

    .line 47
    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asm()V

    goto :goto_28

    .line 49
    :cond_37
    iget-object v0, p0, Lcom/android/common/h/b;->XV:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/common/h/b;->XV:Lcom/android/common/appService/W;

    invoke-virtual {v1, v3}, Lcom/android/common/appService/W;->pT(I)Ljava/lang/String;

    move-result-object v1

    .line 52
    const/16 v3, 0xa6

    invoke-direct {p0, v3}, Lcom/android/common/h/b;->abw(I)I

    move-result v5

    .line 51
    const/16 v3, 0x11

    move v4, v2

    .line 49
    invoke-virtual/range {v0 .. v5}, Lcom/android/common/appService/W;->qp(Ljava/lang/CharSequence;IIII)V

    goto :goto_28
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 30
    invoke-static {p0}, Lcom/android/common/c/l;->hB(Lcom/android/common/h/b;)Lcom/android/common/c/a;

    move-result-object v0

    .line 31
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 29
    return-void
.end method
