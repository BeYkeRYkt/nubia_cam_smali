.class public Lcom/android/common/ui/InlineSettingGridViewNoIconItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private uJ:I

.field private uK:Landroid/widget/SimpleAdapter;

.field private uL:Lcom/android/common/appService/W;

.field private uM:Z

.field private uN:Landroid/widget/GridView;

.field private uO:I

.field private uP:Landroid/widget/TextView;

.field private uQ:Lcom/android/common/ui/aa;

.field private uR:Lcom/android/common/setting/ListPreference;

.field private uS:Landroid/widget/TextView;

.field private uT:Landroid/widget/SeekBar;

.field private uU:Landroid/widget/LinearLayout;

.field private uV:[Z

.field private uW:I

.field private uX:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/16 v2, 0xff

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uK:Landroid/widget/SimpleAdapter;

    .line 37
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uN:Landroid/widget/GridView;

    .line 38
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uR:Lcom/android/common/setting/ListPreference;

    .line 39
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uU:Landroid/widget/LinearLayout;

    .line 40
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uT:Landroid/widget/SeekBar;

    .line 41
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uP:Landroid/widget/TextView;

    .line 42
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uS:Landroid/widget/TextView;

    .line 43
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uW:I

    .line 44
    const/16 v0, 0x4c

    invoke-static {v0, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uX:I

    .line 45
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uV:[Z

    .line 46
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uQ:Lcom/android/common/ui/aa;

    .line 47
    const/16 v0, 0x2f

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uJ:I

    .line 48
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uO:I

    .line 49
    iput-object v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uL:Lcom/android/common/appService/W;

    .line 50
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uM:Z

    .line 52
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 71
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 72
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uN:Landroid/widget/GridView;

    .line 70
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uR:Lcom/android/common/setting/ListPreference;

    if-eqz v0, :cond_20

    .line 63
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uR:Lcom/android/common/setting/ListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uO:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uJ:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 64
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 66
    :cond_20
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 61
    return-void
.end method

.method public vn(IZ)V
    .registers 5

    .prologue
    .line 227
    if-eqz p1, :cond_6

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1d

    .line 228
    :cond_6
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uO:I

    .line 232
    :goto_9
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uN:Landroid/widget/GridView;

    if-eqz v0, :cond_14

    .line 233
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uN:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uO:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 235
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->requestLayout()V

    .line 236
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uK:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 226
    return-void

    .line 230
    :cond_1d
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewNoIconItem;->uO:I

    goto :goto_9
.end method
