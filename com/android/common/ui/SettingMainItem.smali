.class public Lcom/android/common/ui/SettingMainItem;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private tk:I

.field private tl:I

.field private tm:Lcom/android/common/appService/W;

.field private tn:Landroid/widget/ImageView;

.field private to:Lcom/android/common/setting/ListPreference;

.field private tp:Landroid/widget/TextView;

.field private tq:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    const/16 v1, 0xff

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->tp:Landroid/widget/TextView;

    .line 28
    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->tn:Landroid/widget/ImageView;

    .line 29
    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->tq:Landroid/widget/ImageView;

    .line 30
    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->tm:Lcom/android/common/appService/W;

    .line 31
    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->to:Lcom/android/common/setting/ListPreference;

    .line 32
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/SettingMainItem;->tl:I

    .line 33
    const/16 v0, 0x8a

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/SettingMainItem;->tk:I

    .line 35
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 42
    const v0, 0x7f100063

    invoke-virtual {p0, v0}, Lcom/android/common/ui/SettingMainItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->tp:Landroid/widget/TextView;

    .line 43
    const v0, 0x7f10016e

    invoke-virtual {p0, v0}, Lcom/android/common/ui/SettingMainItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->tn:Landroid/widget/ImageView;

    .line 44
    const v0, 0x7f10016f

    invoke-virtual {p0, v0}, Lcom/android/common/ui/SettingMainItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/SettingMainItem;->tq:Landroid/widget/ImageView;

    .line 40
    return-void
.end method
