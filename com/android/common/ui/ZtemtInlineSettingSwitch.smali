.class public Lcom/android/common/ui/ZtemtInlineSettingSwitch;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private qV:Lcom/android/common/setting/ListPreference;

.field private qW:Lcom/android/common/ui/m;

.field private qX:Lcom/android/common/ui/MySwitch;

.field private qY:Landroid/widget/TextView;

.field private qZ:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    iput-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qY:Landroid/widget/TextView;

    .line 22
    iput-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qZ:Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    .line 25
    iput-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qW:Lcom/android/common/ui/m;

    .line 31
    return-void
.end method

.method static synthetic vY(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/setting/ListPreference;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qV:Lcom/android/common/setting/ListPreference;

    return-object v0
.end method

.method static synthetic vZ(Lcom/android/common/ui/ZtemtInlineSettingSwitch;)Lcom/android/common/ui/m;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qW:Lcom/android/common/ui/m;

    return-object v0
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f100071

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qY:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f1001c5

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qZ:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f100133

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MySwitch;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    .line 40
    return-void
.end method

.method public vV()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    if-eqz v0, :cond_12

    .line 94
    iget-object v1, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    iget-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    invoke-virtual {v0}, Lcom/android/common/ui/MySwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    :goto_f
    invoke-virtual {v1, v0}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    .line 92
    :cond_12
    return-void

    .line 94
    :cond_13
    const/4 v0, 0x1

    goto :goto_f
.end method

.method public vW(Lcom/android/common/setting/ListPreference;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 48
    iput-object p1, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qV:Lcom/android/common/setting/ListPreference;

    .line 49
    iget-object v2, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qY:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qV:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Yu()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    instance-of v2, p1, Lcom/android/common/setting/ExtraListPreference;

    if-eqz v2, :cond_47

    .line 51
    iget-object v2, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qZ:Landroid/widget/TextView;

    check-cast p1, Lcom/android/common/setting/ExtraListPreference;

    invoke-virtual {p1}, Lcom/android/common/setting/ExtraListPreference;->VK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v2, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qZ:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    :goto_23
    iget-object v2, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    invoke-virtual {v2, v0}, Lcom/android/common/ui/MySwitch;->setClickable(Z)V

    .line 57
    iget-object v2, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    iget-object v3, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qV:Lcom/android/common/setting/ListPreference;

    iget-object v4, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qV:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v4}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v0, :cond_4f

    :goto_38
    invoke-virtual {v2, v0}, Lcom/android/common/ui/MySwitch;->setChecked(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qX:Lcom/android/common/ui/MySwitch;

    new-instance v1, Lcom/android/common/ui/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/common/ui/n;-><init>(Lcom/android/common/ui/ZtemtInlineSettingSwitch;Lcom/android/common/ui/n;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MySwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    return-void

    .line 54
    :cond_47
    iget-object v2, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qZ:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_23

    :cond_4f
    move v0, v1

    .line 57
    goto :goto_38
.end method

.method public vX(Lcom/android/common/ui/m;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/common/ui/ZtemtInlineSettingSwitch;->qW:Lcom/android/common/ui/m;

    .line 35
    return-void
.end method
