.class Lcom/android/common/o/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field acI:Z

.field final synthetic acJ:Lcom/android/common/o/a;


# direct methods
.method public constructor <init>(Lcom/android/common/o/a;)V
    .registers 3

    .prologue
    .line 1894
    iput-object p1, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/c;->acI:Z

    .line 1895
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aex()[Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/o/a;->ajT(Lcom/android/common/o/a;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1894
    return-void
.end method

.method private akj(IZ)V
    .registers 5

    .prologue
    .line 1958
    iget-object v0, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_1e

    .line 1959
    iput-boolean p2, p0, Lcom/android/common/o/c;->acI:Z

    .line 1963
    :goto_c
    iget-object v0, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajJ(Lcom/android/common/o/a;)Lcom/android/common/o/c;

    move-result-object v0

    if-eqz v0, :cond_1d

    .line 1964
    iget-object v0, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajJ(Lcom/android/common/o/a;)Lcom/android/common/o/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/o/c;->notifyDataSetChanged()V

    .line 1957
    :cond_1d
    return-void

    .line 1961
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/o/c;->acI:Z

    goto :goto_c
.end method

.method static synthetic akk(Lcom/android/common/o/c;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/common/o/c;->akj(IZ)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    .prologue
    .line 1902
    iget-object v0, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajL(Lcom/android/common/o/a;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1908
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4

    .prologue
    .line 1914
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 12

    .prologue
    const/4 v7, 0x0

    const/16 v5, 0xff

    const/4 v6, 0x0

    .line 1920
    if-nez p2, :cond_17

    .line 1921
    iget-object v0, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04005f

    invoke-virtual {v0, v1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1923
    :cond_17
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parent.getChildCount(), position = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1924
    const-string/jumbo v2, "; key: "

    .line 1923
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1924
    iget-object v2, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v2}, Lcom/android/common/o/a;->ajL(Lcom/android/common/o/a;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    .line 1923
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 1925
    const v0, 0x7f100165

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateTextView;

    .line 1926
    iget-object v1, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    iget-object v1, v1, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v2}, Lcom/android/common/o/a;->ajL(Lcom/android/common/o/a;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 1927
    if-nez v2, :cond_73

    return-object p2

    .line 1928
    :cond_73
    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Yu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1929
    instance-of v1, v2, Lcom/android/common/setting/IconListPreference;

    if-eqz v1, :cond_d3

    .line 1930
    const-string/jumbo v1, "pref_camera_recordlocation_key"

    iget-object v3, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v3}, Lcom/android/common/o/a;->ajL(Lcom/android/common/o/a;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_97

    iget-object v1, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v1}, Lcom/android/common/o/a;->ajW(Lcom/android/common/o/a;)Z

    move-result v1

    if-eqz v1, :cond_f1

    .line 1934
    :cond_97
    :goto_97
    iget-object v1, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    iget-object v3, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v3}, Lcom/android/common/o/a;->ajL(Lcom/android/common/o/a;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-static {v1, v3}, Lcom/android/common/o/a;->ajY(Lcom/android/common/o/a;Ljava/lang/String;)Z

    move-result v3

    .line 1935
    if-eqz v3, :cond_f8

    move-object v1, v2

    .line 1936
    check-cast v1, Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v1

    .line 1937
    const/16 v4, 0x89

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateTextView;->setTextColor(I)V

    .line 1943
    :goto_b7
    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v4

    .line 1944
    array-length v5, v1

    if-ge v4, v5, :cond_109

    if-ltz v4, :cond_109

    .line 1945
    iget-object v3, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-virtual {v3}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vz()I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v6, v6}, Lcom/android/common/ui/RotateTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1952
    :cond_d3
    :goto_d3
    iget-object v1, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    iget-object v1, v1, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qv()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/common/o/c;->acI:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/RotateTextView;->vn(IZ)V

    .line 1953
    iget-object v1, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-virtual {v1}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d009b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateTextView;->setHeight(I)V

    .line 1954
    return-object p2

    .line 1931
    :cond_f1
    const-string/jumbo v1, "off"

    invoke-virtual {v2, v1}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    goto :goto_97

    :cond_f8
    move-object v1, v2

    .line 1939
    check-cast v1, Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->YQ()[I

    move-result-object v1

    .line 1940
    const/16 v4, 0x42

    invoke-static {v4, v5, v5, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateTextView;->setTextColor(I)V

    goto :goto_b7

    .line 1946
    :cond_109
    if-nez v3, :cond_11b

    .line 1947
    iget-object v2, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-virtual {v2}, Lcom/android/common/o/a;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget v1, v1, v7

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v6, v1, v6, v6}, Lcom/android/common/ui/RotateTextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_d3

    .line 1949
    :cond_11b
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/c;->acJ:Lcom/android/common/o/a;

    invoke-static {v2}, Lcom/android/common/o/a;->ajL(Lcom/android/common/o/a;)[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; selectIn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
