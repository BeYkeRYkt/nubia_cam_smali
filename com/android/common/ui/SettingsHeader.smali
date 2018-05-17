.class public Lcom/android/common/ui/SettingsHeader;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private uc:Landroid/widget/TextView;

.field private ud:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    iput-object v0, p0, Lcom/android/common/ui/SettingsHeader;->ud:Landroid/widget/TextView;

    .line 17
    iput-object v0, p0, Lcom/android/common/ui/SettingsHeader;->uc:Landroid/widget/TextView;

    .line 19
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 25
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 26
    const v0, 0x7f100063

    invoke-virtual {p0, v0}, Lcom/android/common/ui/SettingsHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/SettingsHeader;->ud:Landroid/widget/TextView;

    .line 27
    const v0, 0x7f10016d

    invoke-virtual {p0, v0}, Lcom/android/common/ui/SettingsHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/SettingsHeader;->uc:Landroid/widget/TextView;

    .line 24
    return-void
.end method

.method public yA()V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/common/ui/SettingsHeader;->uc:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    return-void
.end method

.method public yz(Lcom/android/common/setting/ListPreference;)V
    .registers 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/common/ui/SettingsHeader;->ud:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/common/setting/ListPreference;->Yu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
.end method
