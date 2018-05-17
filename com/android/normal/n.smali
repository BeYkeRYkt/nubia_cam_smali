.class final Lcom/android/normal/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/v;


# instance fields
.field bbn:Landroid/widget/Toast;

.field final synthetic bbo:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private bsB()V
    .registers 4

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_33

    .line 391
    iget-object v0, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 395
    :goto_19
    iget-object v1, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-static {v1}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 396
    iget-object v1, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-virtual {v1}, Lcom/android/normal/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/common/j;->aqu(Landroid/app/Activity;Ljava/lang/String;)V

    .line 388
    :goto_32
    return-void

    .line 393
    :cond_33
    iget-object v0, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a04d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    .line 398
    :cond_41
    iget-object v1, p0, Lcom/android/normal/n;->bbn:Landroid/widget/Toast;

    if-nez v1, :cond_52

    .line 399
    iget-object v1, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-virtual {v1}, Lcom/android/normal/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 400
    const/4 v2, 0x0

    .line 399
    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/normal/n;->bbn:Landroid/widget/Toast;

    .line 402
    :cond_52
    iget-object v1, p0, Lcom/android/normal/n;->bbn:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v0, p0, Lcom/android/normal/n;->bbn:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_32
.end method


# virtual methods
.method public lH()Z
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 377
    iget-object v0, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsd(Lcom/android/normal/b;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 378
    return v4

    .line 380
    :cond_a
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-static {v1}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->po()Lcom/android/common/setting/e;

    move-result-object v1

    .line 381
    const-string/jumbo v2, "pref_big_aperature_key"

    const-string/jumbo v3, "off"

    .line 380
    invoke-virtual {v1, v2, v3}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 382
    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/android/normal/n;->bbo:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsa(Lcom/android/normal/b;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 383
    :cond_33
    invoke-direct {p0}, Lcom/android/normal/n;->bsB()V

    .line 384
    return v4

    .line 386
    :cond_37
    const/4 v0, 0x0

    return v0
.end method
