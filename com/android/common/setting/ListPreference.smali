.class public Lcom/android/common/setting/ListPreference;
.super Lcom/android/common/setting/q;
.source "SourceFile"


# instance fields
.field private final TJ:[Ljava/lang/CharSequence;

.field private TK:[Ljava/lang/CharSequence;

.field private TL:[Ljava/lang/CharSequence;

.field private final TM:Ljava/lang/String;

.field private TN:Z

.field private TO:Ljava/lang/String;

.field private TP:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/setting/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    .line 40
    iput-object v0, p0, Lcom/android/common/setting/ListPreference;->TO:Ljava/lang/String;

    .line 44
    iput-boolean v3, p0, Lcom/android/common/setting/ListPreference;->TN:Z

    .line 50
    sget-object v0, Lcom/android/camera/k;->apj:[I

    .line 49
    invoke-virtual {p1, p2, v0, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 53
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/common/h;->apl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/common/setting/ListPreference;->TM:Ljava/lang/String;

    .line 61
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_40

    iget v0, v0, Landroid/util/TypedValue;->type:I

    if-ne v0, v2, :cond_40

    .line 63
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/ListPreference;->TJ:[Ljava/lang/CharSequence;

    .line 69
    :goto_2c
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/ListPreference;->VF([Ljava/lang/CharSequence;)V

    .line 71
    const/4 v0, 0x2

    .line 70
    invoke-virtual {v1, v0}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/ListPreference;->VG([Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 46
    return-void

    .line 65
    :cond_40
    new-array v0, v2, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/common/setting/ListPreference;->TJ:[Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TJ:[Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v3

    goto :goto_2c
.end method


# virtual methods
.method public VA()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 121
    iget-object v1, p0, Lcom/android/common/setting/ListPreference;->TO:Ljava/lang/String;

    if-eqz v1, :cond_1d

    .line 122
    :goto_6
    iget-object v1, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-ge v0, v1, :cond_46

    .line 123
    iget-object v1, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/common/setting/ListPreference;->TO:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 124
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TO:Ljava/lang/String;

    return-object v0

    .line 122
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1d
    move v1, v0

    .line 127
    :goto_1e
    iget-object v2, p0, Lcom/android/common/setting/ListPreference;->TJ:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_46

    move v2, v0

    .line 128
    :goto_24
    iget-object v3, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    array-length v3, v3

    if-ge v2, v3, :cond_43

    .line 131
    iget-object v3, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/android/common/setting/ListPreference;->TJ:[Ljava/lang/CharSequence;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    .line 132
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TJ:[Ljava/lang/CharSequence;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_40
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 127
    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 137
    :cond_46
    return-object v5
.end method

.method public VB()V
    .registers 2

    .prologue
    .line 179
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/setting/ListPreference;->TN:Z

    .line 178
    return-void
.end method

.method public VC(Ljava/util/List;)V
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    iget-object v3, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    array-length v3, v3

    :goto_e
    if-ge v0, v3, :cond_2f

    .line 186
    iget-object v4, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    if-ltz v4, :cond_2c

    .line 187
    iget-object v4, p0, Lcom/android/common/setting/ListPreference;->TK:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v4, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    aget-object v4, v4, v0

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 191
    :cond_2f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 192
    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/common/setting/ListPreference;->TK:[Ljava/lang/CharSequence;

    .line 193
    new-array v0, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    .line 182
    return-void
.end method

.method public VD(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 99
    iput-object p1, p0, Lcom/android/common/setting/ListPreference;->TO:Ljava/lang/String;

    .line 98
    return-void
.end method

.method protected VE(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/android/common/setting/ListPreference;->Yv()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    iget-object v1, p0, Lcom/android/common/setting/ListPreference;->TM:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 171
    return-void
.end method

.method public VF([Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 91
    if-nez p1, :cond_5

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    :cond_5
    iput-object p1, p0, Lcom/android/common/setting/ListPreference;->TK:[Ljava/lang/CharSequence;

    .line 90
    return-void
.end method

.method public VG([Ljava/lang/CharSequence;)V
    .registers 3

    .prologue
    .line 95
    if-nez p1, :cond_5

    const/4 v0, 0x0

    new-array p1, v0, [Ljava/lang/CharSequence;

    :cond_5
    iput-object p1, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    .line 94
    return-void
.end method

.method public Vq()Ljava/lang/String;
    .registers 4

    .prologue
    .line 103
    iget-boolean v0, p0, Lcom/android/common/setting/ListPreference;->TN:Z

    if-nez v0, :cond_17

    .line 104
    invoke-virtual {p0}, Lcom/android/common/setting/ListPreference;->Yv()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/ListPreference;->TM:Ljava/lang/String;

    .line 105
    invoke-virtual {p0}, Lcom/android/common/setting/ListPreference;->VA()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/ListPreference;->TP:Ljava/lang/String;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/setting/ListPreference;->TN:Z

    .line 108
    :cond_17
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TP:Ljava/lang/String;

    return-object v0
.end method

.method public Vr(Ljava/lang/String;)I
    .registers 5

    .prologue
    .line 158
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    array-length v1, v1

    :goto_4
    if-ge v0, v1, :cond_14

    .line 159
    iget-object v2, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-static {v2, p1}, Lcom/android/common/h;->apo(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v0

    .line 158
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 161
    :cond_14
    const/4 v0, -0x1

    return v0
.end method

.method public Vs()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public Vt(I)V
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    aget-object v0, v0, p1

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/ListPreference;->Vv(Ljava/lang/String;)V

    .line 149
    return-void
.end method

.method public Vu()Ljava/lang/String;
    .registers 3

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    .line 166
    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    .line 167
    const/4 v0, 0x0

    return-object v0

    .line 168
    :cond_d
    iget-object v1, p0, Lcom/android/common/setting/ListPreference;->TK:[Ljava/lang/CharSequence;

    aget-object v0, v1, v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Vv(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 141
    invoke-virtual {p0, p1}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 142
    :cond_c
    iput-object p1, p0, Lcom/android/common/setting/ListPreference;->TP:Ljava/lang/String;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/common/setting/ListPreference;->VE(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public Vw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TM:Ljava/lang/String;

    return-object v0
.end method

.method public Vx()I
    .registers 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 112
    :goto_2
    iget-object v2, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_19

    .line 113
    iget-object v2, p0, Lcom/android/common/setting/ListPreference;->TL:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/android/common/setting/ListPreference;->TJ:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 114
    return v0

    .line 112
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 116
    :cond_19
    return v1
.end method

.method public Vy()[Ljava/lang/CharSequence;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/common/setting/ListPreference;->TK:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public Vz()I
    .registers 2

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
