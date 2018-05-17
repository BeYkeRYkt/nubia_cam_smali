.class Lcom/android/common/ui/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;


# direct methods
.method private constructor <init>(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/ui/ZtemtInlineSettingSwitch;Lcom/android/common/ui/n;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/ui/n;-><init>(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 81
    if-eqz p2, :cond_4

    const/4 v0, 0x1

    .line 82
    :cond_4
    iget-object v1, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-static {v1}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vY(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-static {v2}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vY(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v0, :cond_1c

    .line 83
    if-gez v0, :cond_1d

    .line 84
    :cond_1c
    return-void

    .line 83
    :cond_1d
    iget-object v1, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-static {v1}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vY(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vs()[Ljava/lang/CharSequence;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_1c

    .line 86
    iget-object v1, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-static {v1}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vY(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 87
    iget-object v0, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vZ(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/ui/m;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 88
    iget-object v0, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vZ(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/ui/m;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/n;->ra:Lcom/android/common/ui/ZtemtInlineSettingSwitch;

    invoke-static {v1}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->vY(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/setting/ListPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/setting/ListPreference;->Vw()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/common/ui/m;->od(Ljava/lang/String;)V

    .line 80
    :cond_4e
    return-void
.end method
