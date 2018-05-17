.class Lcom/android/common/o/i;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private ado:Ljava/util/List;

.field final synthetic adp:Lcom/android/common/o/e;


# direct methods
.method public constructor <init>(Lcom/android/common/o/e;Ljava/util/List;)V
    .registers 4

    .prologue
    .line 929
    iput-object p1, p0, Lcom/android/common/o/i;->adp:Lcom/android/common/o/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 930
    invoke-direct {p0, p2}, Lcom/android/common/o/i;->alj(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/o/i;->ado:Ljava/util/List;

    .line 929
    return-void
.end method

.method private alj(Ljava/util/List;)Ljava/util/List;
    .registers 6

    .prologue
    .line 919
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 920
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    .line 921
    instance-of v1, v0, Lcom/android/common/ui/ao;

    if-eqz v1, :cond_22

    move-object v1, v0

    .line 922
    check-cast v1, Lcom/android/common/ui/ao;

    invoke-virtual {v1}, Lcom/android/common/ui/ao;->Gq()I

    move-result v1

    if-eqz v1, :cond_9

    .line 925
    :cond_22
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 927
    :cond_26
    return-object v2
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/common/o/i;->ado:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 959
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 964
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 935
    if-nez p2, :cond_64

    .line 936
    iget-object v0, p0, Lcom/android/common/o/i;->adp:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 937
    new-instance v1, Lcom/android/common/o/j;

    invoke-direct {v1, p0, v4}, Lcom/android/common/o/j;-><init>(Lcom/android/common/o/i;Lcom/android/common/o/j;)V

    .line 938
    const v0, 0x7f1000f8

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextView;

    iput-object v0, v1, Lcom/android/common/o/j;->adq:Lcom/android/common/ui/RotateTextView;

    .line 939
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 944
    :goto_27
    iget-object v0, p0, Lcom/android/common/o/i;->adp:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sub-int v2, v0, p1

    .line 945
    iget-object v3, v1, Lcom/android/common/o/j;->adq:Lcom/android/common/ui/RotateTextView;

    iget-object v0, p0, Lcom/android/common/o/i;->adp:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    invoke-virtual {v0}, Lcom/android/common/ui/d;->uA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/common/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 946
    iget-object v0, p0, Lcom/android/common/o/i;->adp:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v0, p0, Lcom/android/common/o/i;->adp:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->acR:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/d;

    invoke-virtual {v0}, Lcom/android/common/ui/d;->uy()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 947
    iget-object v1, v1, Lcom/android/common/o/j;->adq:Lcom/android/common/ui/RotateTextView;

    invoke-virtual {v1, v4, v0, v4, v4}, Lcom/android/common/ui/RotateTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 948
    return-object p2

    .line 941
    :cond_64
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/o/j;

    move-object v1, v0

    goto :goto_27
.end method
