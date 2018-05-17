.class public Lcom/android/common/setting/IconListPreference;
.super Lcom/android/common/setting/ListPreference;
.source "SourceFile"


# instance fields
.field private UM:[I

.field private UN:I

.field private UO:[I

.field private UP:[I

.field private UQ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/setting/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    .line 41
    sget-object v0, Lcom/android/camera/k;->api:[I

    .line 40
    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 43
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/common/setting/IconListPreference;->UQ:I

    .line 45
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/common/setting/IconListPreference;->YU(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/setting/IconListPreference;->UM:[I

    .line 48
    const/4 v2, 0x2

    .line 47
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/common/setting/IconListPreference;->YU(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/setting/IconListPreference;->UP:[I

    .line 50
    const/4 v2, 0x3

    .line 49
    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/common/setting/IconListPreference;->YU(Landroid/content/res/Resources;I)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/common/setting/IconListPreference;->UO:[I

    .line 51
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/common/setting/IconListPreference;->YT(Landroid/content/res/Resources;I)I

    move-result v1

    iput v1, p0, Lcom/android/common/setting/IconListPreference;->UN:I

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 38
    return-void
.end method

.method private YT(Landroid/content/res/Resources;I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 85
    if-nez p2, :cond_4

    return v0

    .line 86
    :cond_4
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->length()I

    move-result v1

    .line 88
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return v1
.end method

.method private YU(Landroid/content/res/Resources;I)[I
    .registers 9

    .prologue
    const/4 v1, 0x0

    .line 93
    if-nez p2, :cond_5

    const/4 v0, 0x0

    return-object v0

    .line 94
    :cond_5
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 95
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    .line 96
    new-array v4, v3, [I

    move v0, v1

    .line 97
    :goto_10
    if-ge v0, v3, :cond_1b

    .line 98
    invoke-virtual {v2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    aput v5, v4, v0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 100
    :cond_1b
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    return-object v4
.end method


# virtual methods
.method public VC(Ljava/util/List;)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-virtual {p0}, Lcom/android/common/setting/IconListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 107
    new-instance v2, Lcom/android/common/k;

    invoke-direct {v2}, Lcom/android/common/k;-><init>()V

    .line 108
    new-instance v3, Lcom/android/common/k;

    invoke-direct {v3}, Lcom/android/common/k;-><init>()V

    .line 109
    new-instance v4, Lcom/android/common/k;

    invoke-direct {v4}, Lcom/android/common/k;-><init>()V

    .line 111
    array-length v5, v1

    :goto_15
    if-ge v0, v5, :cond_47

    .line 112
    aget-object v6, v1, v0

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_44

    .line 113
    iget-object v6, p0, Lcom/android/common/setting/IconListPreference;->UM:[I

    if-eqz v6, :cond_2e

    iget-object v6, p0, Lcom/android/common/setting/IconListPreference;->UM:[I

    aget v6, v6, v0

    invoke-virtual {v2, v6}, Lcom/android/common/k;->aqv(I)V

    .line 114
    :cond_2e
    iget-object v6, p0, Lcom/android/common/setting/IconListPreference;->UP:[I

    if-eqz v6, :cond_39

    iget-object v6, p0, Lcom/android/common/setting/IconListPreference;->UP:[I

    aget v6, v6, v0

    invoke-virtual {v3, v6}, Lcom/android/common/k;->aqv(I)V

    .line 115
    :cond_39
    iget-object v6, p0, Lcom/android/common/setting/IconListPreference;->UO:[I

    if-eqz v6, :cond_44

    iget-object v6, p0, Lcom/android/common/setting/IconListPreference;->UO:[I

    aget v6, v6, v0

    invoke-virtual {v4, v6}, Lcom/android/common/k;->aqv(I)V

    .line 111
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_15

    .line 118
    :cond_47
    iget-object v0, p0, Lcom/android/common/setting/IconListPreference;->UM:[I

    if-eqz v0, :cond_57

    invoke-virtual {v2}, Lcom/android/common/k;->aqx()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v2, v0}, Lcom/android/common/k;->aqy([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/IconListPreference;->UM:[I

    .line 119
    :cond_57
    iget-object v0, p0, Lcom/android/common/setting/IconListPreference;->UP:[I

    if-eqz v0, :cond_67

    .line 120
    invoke-virtual {v3}, Lcom/android/common/k;->aqx()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v3, v0}, Lcom/android/common/k;->aqy([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/IconListPreference;->UP:[I

    .line 122
    :cond_67
    iget-object v0, p0, Lcom/android/common/setting/IconListPreference;->UO:[I

    if-eqz v0, :cond_77

    invoke-virtual {v4}, Lcom/android/common/k;->aqx()I

    move-result v0

    new-array v0, v0, [I

    invoke-virtual {v4, v0}, Lcom/android/common/k;->aqy([I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/IconListPreference;->UO:[I

    .line 123
    :cond_77
    invoke-super {p0, p1}, Lcom/android/common/setting/ListPreference;->VC(Ljava/util/List;)V

    .line 105
    return-void
.end method

.method public YP()[I
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/common/setting/IconListPreference;->UM:[I

    return-object v0
.end method

.method public YQ()[I
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/common/setting/IconListPreference;->UP:[I

    return-object v0
.end method

.method public YR()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/android/common/setting/IconListPreference;->UN:I

    return v0
.end method

.method public YS()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/android/common/setting/IconListPreference;->UQ:I

    return v0
.end method
