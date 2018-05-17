.class public Lcom/android/common/ui/InlineSettingGridViewItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/h;


# instance fields
.field private yA:Landroid/widget/GridView;

.field private yB:Landroid/widget/ImageView;

.field private yC:I

.field private yD:Lcom/android/common/ui/aa;

.field private yE:Lcom/android/common/setting/IconListPreference;

.field private yF:Landroid/widget/TextView;

.field private yG:[Z

.field private yH:I

.field private yI:I

.field private yv:I

.field private yw:I

.field private yx:I

.field private yy:Landroid/widget/SimpleAdapter;

.field private yz:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    const/16 v1, 0xff

    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yF:Landroid/widget/TextView;

    .line 37
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yB:Landroid/widget/ImageView;

    .line 38
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yy:Landroid/widget/SimpleAdapter;

    .line 39
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yA:Landroid/widget/GridView;

    .line 40
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yE:Lcom/android/common/setting/IconListPreference;

    .line 41
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yD:Lcom/android/common/ui/aa;

    .line 42
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yG:[Z

    .line 43
    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yz:Lcom/android/common/appService/W;

    .line 44
    invoke-static {v1, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yH:I

    .line 45
    const/16 v0, 0x4c

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yI:I

    .line 46
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yC:I

    .line 47
    const/16 v0, 0x3b

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yv:I

    .line 48
    const/4 v0, 0x7

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yw:I

    .line 49
    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yx:I

    .line 53
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .registers 2

    .prologue
    .line 76
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 77
    const v0, 0x7f10016a

    invoke-virtual {p0, v0}, Lcom/android/common/ui/InlineSettingGridViewItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yA:Landroid/widget/GridView;

    .line 74
    return-void
.end method

.method protected onMeasure(II)V
    .registers 7

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yE:Lcom/android/common/setting/IconListPreference;

    if-eqz v0, :cond_25

    .line 66
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yE:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yC:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yv:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 67
    iget v1, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yw:I

    mul-int/lit8 v1, v1, 0x2

    .line 66
    add-int/2addr v0, v1

    .line 68
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 70
    :cond_25
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 63
    return-void
.end method

.method public vn(IZ)V
    .registers 5

    .prologue
    .line 169
    if-eqz p1, :cond_6

    const/16 v0, 0xb4

    if-ne p1, v0, :cond_1d

    .line 170
    :cond_6
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yC:I

    .line 174
    :goto_9
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yA:Landroid/widget/GridView;

    if-eqz v0, :cond_14

    .line 175
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yA:Landroid/widget/GridView;

    iget v1, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yC:I

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 177
    :cond_14
    invoke-virtual {p0}, Lcom/android/common/ui/InlineSettingGridViewItem;->requestLayout()V

    .line 178
    iget-object v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yy:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 168
    return-void

    .line 172
    :cond_1d
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/common/ui/InlineSettingGridViewItem;->yC:I

    goto :goto_9
.end method
