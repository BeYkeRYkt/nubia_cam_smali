.class public Lcom/android/video/a;
.super Lcom/android/video/b;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/video/b;-><init>(Lcom/android/common/appService/W;)V

    .line 25
    return-void
.end method


# virtual methods
.method protected Ti()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Ut()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Uu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    const-string/jumbo v0, "120"

    return-object v0
.end method

.method protected aVc()I
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/android/video/a;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_video_slomo_quality_key"

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    if-nez v0, :cond_25

    .line 37
    iget-object v1, p0, Lcom/android/video/a;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v1

    const-string/jumbo v2, "pref_video_slomo_quality_key"

    invoke-virtual {v1, v2}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    .line 38
    if-eqz v1, :cond_2a

    .line 39
    invoke-virtual {v1, v5}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 40
    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 52
    :cond_25
    :goto_25
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 42
    :cond_2a
    invoke-static {}, Lcom/android/common/cameradevice/d;->JO()Lcom/android/common/cameradevice/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/d;->JP()Lcom/android/common/cameradevice/r;

    move-result-object v1

    .line 43
    invoke-virtual {p0}, Lcom/android/video/a;->Td()I

    move-result v2

    .line 44
    invoke-virtual {p0}, Lcom/android/video/a;->Te()Lcom/android/common/cameradevice/p;

    move-result-object v3

    .line 45
    const-string/jumbo v4, "120"

    .line 42
    invoke-virtual {v1, v2, v3, v4}, Lcom/android/common/cameradevice/r;->Ob(ILcom/android/common/cameradevice/p;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 46
    if-eqz v1, :cond_49

    .line 47
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    :cond_49
    invoke-virtual {p0}, Lcom/android/video/a;->Tc()Lcom/android/common/setting/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/e;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v2, "pref_video_slomo_quality_key"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_25
.end method
