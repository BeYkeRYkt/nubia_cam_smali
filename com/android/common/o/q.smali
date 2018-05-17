.class Lcom/android/common/o/q;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private aep:Landroid/widget/ImageView;

.field private aeq:Lcom/android/common/setting/ListPreference;

.field private aer:Landroid/widget/TextView;

.field final synthetic aes:Lcom/android/common/o/p;


# direct methods
.method public constructor <init>(Lcom/android/common/o/p;Lcom/android/common/setting/ListPreference;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 471
    iput-object p1, p0, Lcom/android/common/o/q;->aes:Lcom/android/common/o/p;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 468
    iput-object v0, p0, Lcom/android/common/o/q;->aeq:Lcom/android/common/setting/ListPreference;

    .line 469
    iput-object v0, p0, Lcom/android/common/o/q;->aer:Landroid/widget/TextView;

    .line 470
    iput-object v0, p0, Lcom/android/common/o/q;->aep:Landroid/widget/ImageView;

    .line 472
    iput-object p2, p0, Lcom/android/common/o/q;->aeq:Lcom/android/common/setting/ListPreference;

    .line 471
    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/common/o/q;->aeq:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 482
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 487
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 492
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getView position :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ";mPref.getEntries().length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/q;->aeq:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    if-nez p2, :cond_41

    .line 494
    iget-object v0, p0, Lcom/android/common/o/q;->aes:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 499
    :cond_41
    const v0, 0x7f1000c6

    .line 498
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/o/q;->aer:Landroid/widget/TextView;

    .line 501
    const v0, 0x7f1000c7

    .line 500
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/o/q;->aep:Landroid/widget/ImageView;

    .line 502
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getView ,text :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/q;->aeq:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    iget-object v0, p0, Lcom/android/common/o/q;->aer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/o/q;->aeq:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/android/common/o/q;->aeq:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v0

    if-ne p1, v0, :cond_ac

    .line 505
    iget-object v0, p0, Lcom/android/common/o/q;->aep:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcom/android/common/o/q;->aer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/o/q;->aes:Lcom/android/common/o/p;

    invoke-virtual {v1}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 511
    :goto_ab
    return-object p2

    .line 508
    :cond_ac
    iget-object v0, p0, Lcom/android/common/o/q;->aep:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcom/android/common/o/q;->aer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/o/q;->aes:Lcom/android/common/o/p;

    invoke-virtual {v1}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_ab
.end method
