.class public Lcom/android/common/ui/InlineSettingIntervalItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private pA:Lcom/android/common/ui/WheelView;

.field private pv:Ljava/lang/String;

.field private pw:[Ljava/lang/CharSequence;

.field private px:I

.field private py:Lcom/android/common/ui/f;

.field private pz:Lcom/android/common/setting/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->pA:Lcom/android/common/ui/WheelView;

    .line 20
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->pz:Lcom/android/common/setting/ListPreference;

    .line 21
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->py:Lcom/android/common/ui/f;

    .line 23
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->pw:[Ljava/lang/CharSequence;

    .line 24
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->px:I

    .line 28
    const v0, 0x7f0a03f1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->pv:Ljava/lang/String;

    .line 26
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f100170

    invoke-virtual {p0, v0}, Lcom/android/common/ui/InlineSettingIntervalItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/WheelView;

    iput-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->pA:Lcom/android/common/ui/WheelView;

    .line 40
    return-void
.end method

.method public vn(IZ)V
    .registers 5

    .prologue
    .line 77
    if-eqz p1, :cond_6

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_16

    .line 78
    :cond_6
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->px:I

    .line 82
    :goto_a
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->pA:Lcom/android/common/ui/WheelView;

    if-eqz v0, :cond_15

    .line 83
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->pA:Lcom/android/common/ui/WheelView;

    iget v1, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->px:I

    invoke-virtual {v0, v1}, Lcom/android/common/ui/WheelView;->Fi(I)V

    .line 76
    :cond_15
    return-void

    .line 80
    :cond_16
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/common/ui/InlineSettingIntervalItem;->px:I

    goto :goto_a
.end method
