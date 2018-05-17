.class public Lcom/android/common/setting/PreferenceGroup;
.super Lcom/android/common/setting/q;
.source "SourceFile"


# instance fields
.field private UR:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V
    .registers 5

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/setting/q;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/SharedPreferences;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/common/setting/PreferenceGroup;->UR:Ljava/util/ArrayList;

    .line 35
    return-void
.end method


# virtual methods
.method public VB()V
    .registers 3

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/common/setting/PreferenceGroup;->UR:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/q;

    .line 58
    invoke-virtual {v0}, Lcom/android/common/setting/q;->VB()V

    goto :goto_6

    .line 56
    :cond_16
    return-void
.end method

.method public YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/common/setting/PreferenceGroup;->UR:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/q;

    .line 71
    instance-of v2, v0, Lcom/android/common/setting/ListPreference;

    if-eqz v2, :cond_24

    .line 72
    check-cast v0, Lcom/android/common/setting/ListPreference;

    .line 73
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-object v0

    .line 74
    :cond_24
    instance-of v2, v0, Lcom/android/common/setting/PreferenceGroup;

    if-eqz v2, :cond_7

    .line 76
    check-cast v0, Lcom/android/common/setting/PreferenceGroup;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_7

    return-object v0

    .line 80
    :cond_31
    return-object v3
.end method

.method public YW(Lcom/android/common/setting/q;)V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/common/setting/PreferenceGroup;->UR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    return-void
.end method

.method public YX()I
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/common/setting/PreferenceGroup;->UR:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public YY(I)Lcom/android/common/setting/q;
    .registers 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/common/setting/PreferenceGroup;->UR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/q;

    return-object v0
.end method

.method public YZ(I)V
    .registers 3

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/common/setting/PreferenceGroup;->UR:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    return-void
.end method
