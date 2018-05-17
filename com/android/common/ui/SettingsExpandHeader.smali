.class public Lcom/android/common/ui/SettingsExpandHeader;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private Dh:Landroid/widget/TextView;

.field private Di:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    iput-object v0, p0, Lcom/android/common/ui/SettingsExpandHeader;->Dh:Landroid/widget/TextView;

    .line 18
    iput-object v0, p0, Lcom/android/common/ui/SettingsExpandHeader;->Di:Landroid/widget/TextView;

    .line 20
    return-void
.end method


# virtual methods
.method public GI(Lcom/android/common/setting/ListPreference;)V
    .registers 5

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/common/ui/SettingsExpandHeader;->Dh:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Yu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    const-string/jumbo v0, "pref_picture_artist_info"

    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 34
    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/android/common/ui/SettingsExpandHeader;->Di:Landroid/widget/TextView;

    if-eqz v0, :cond_35

    :goto_1e
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    :goto_21
    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_storage_path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 40
    invoke-static {}, Lcom/android/common/s;->aru()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 31
    :cond_34
    :goto_34
    return-void

    .line 35
    :cond_35
    const-string/jumbo v0, ""

    goto :goto_1e

    .line 37
    :cond_39
    iget-object v0, p0, Lcom/android/common/ui/SettingsExpandHeader;->Di:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Vu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_21

    .line 41
    :cond_43
    iget-object v0, p0, Lcom/android/common/ui/SettingsExpandHeader;->Di:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/common/ui/SettingsExpandHeader;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0496

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_34
.end method

.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 27
    const v0, 0x7f100166

    invoke-virtual {p0, v0}, Lcom/android/common/ui/SettingsExpandHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/SettingsExpandHeader;->Dh:Landroid/widget/TextView;

    .line 28
    const v0, 0x7f100167

    invoke-virtual {p0, v0}, Lcom/android/common/ui/SettingsExpandHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/SettingsExpandHeader;->Di:Landroid/widget/TextView;

    .line 25
    return-void
.end method
