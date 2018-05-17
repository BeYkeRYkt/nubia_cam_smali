.class public Lcom/android/common/ui/ZtemtSlidingDrawer;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private vZ:Landroid/widget/HorizontalScrollView;

.field private wa:[I

.field private wb:[Ljava/lang/CharSequence;

.field private wc:Lcom/android/common/ui/L;

.field private wd:Landroid/widget/GridView;

.field private we:Landroid/widget/LinearLayout;

.field private wf:Landroid/widget/TextView;

.field private wg:Landroid/widget/ImageView;

.field private wh:Lcom/android/common/ui/M;

.field wi:Ljava/util/ArrayList;

.field private wj:Lcom/android/common/ui/J;

.field private wk:Z

.field private wl:I

.field private wm:Lcom/android/common/setting/IconListPreference;

.field private wn:I

.field private wo:Landroid/widget/SimpleAdapter;

.field private wp:Z

.field private wq:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, -0x1

    .line 71
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const-string/jumbo v0, "ZtemtSlidingDrawer"

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->TAG:Ljava/lang/String;

    .line 50
    iput-object v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wi:Ljava/util/ArrayList;

    .line 51
    iput-object v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wo:Landroid/widget/SimpleAdapter;

    .line 52
    iput v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    .line 55
    iput v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wl:I

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wp:Z

    .line 57
    iput-boolean v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wq:Z

    .line 59
    iput-boolean v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wk:Z

    .line 70
    return-void
.end method

.method static synthetic AA(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wk:Z

    return v0
.end method

.method static synthetic AB(Lcom/android/common/ui/ZtemtSlidingDrawer;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wl:I

    return v0
.end method

.method static synthetic AC(Lcom/android/common/ui/ZtemtSlidingDrawer;)I
    .registers 2

    iget v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    return v0
.end method

.method static synthetic AD(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wp:Z

    return v0
.end method

.method static synthetic AE(Lcom/android/common/ui/ZtemtSlidingDrawer;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wk:Z

    return p1
.end method

.method static synthetic AF(Lcom/android/common/ui/ZtemtSlidingDrawer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->close()V

    return-void
.end method

.method static synthetic AG(Lcom/android/common/ui/ZtemtSlidingDrawer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->At()V

    return-void
.end method

.method private An()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    if-eqz v0, :cond_c

    .line 100
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->release()V

    .line 101
    iput-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    .line 98
    :cond_c
    return-void
.end method

.method private Ap()V
    .registers 5

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wi:Ljava/util/ArrayList;

    if-nez v0, :cond_b

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wi:Ljava/util/ArrayList;

    .line 236
    :cond_b
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wi:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 237
    const/4 v0, 0x0

    :goto_11
    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wa:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3b

    .line 238
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 239
    const-string/jumbo v2, "DrawerListIcon"

    iget-object v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wa:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v2, "DrawerListTitle"

    iget-object v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wb:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wi:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 233
    :cond_3b
    return-void
.end method

.method private Aq()V
    .registers 9

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    if-eqz v0, :cond_5

    .line 114
    return-void

    .line 116
    :cond_5
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->vZ:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getHeight()I

    move-result v0

    .line 118
    new-instance v1, Lcom/android/common/ui/J;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->vZ:Landroid/widget/HorizontalScrollView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->we:Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const-string/jumbo v3, "translationY"

    const/4 v4, 0x0

    int-to-float v5, v0

    const-wide/16 v6, 0x1f4

    invoke-direct/range {v1 .. v7}, Lcom/android/common/ui/J;-><init>([Ljava/lang/Object;Ljava/lang/String;FFJ)V

    iput-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    .line 119
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    new-instance v1, Lcom/android/common/ui/aV;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aV;-><init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ui/J;->Aj(Lcom/android/common/ui/K;)V

    .line 112
    return-void
.end method

.method private As(Landroid/content/Context;)V
    .registers 9

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ap()V

    .line 199
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wa:[I

    array-length v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 200
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    const/16 v1, 0x40

    invoke-static {v1}, Lcom/android/common/h;->aoT(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 202
    new-instance v0, Lcom/android/common/ui/N;

    iget-object v3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wi:Ljava/util/ArrayList;

    .line 203
    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "DrawerListIcon"

    const/4 v2, 0x0

    aput-object v1, v5, v2

    const-string/jumbo v1, "DrawerListTitle"

    const/4 v2, 0x1

    aput-object v1, v5, v2

    const v1, 0x7f1000b6

    const v2, 0x7f100071

    filled-new-array {v1, v2}, [I

    move-result-object v6

    const v4, 0x7f040026

    move-object v1, p0

    move-object v2, p1

    .line 202
    invoke-direct/range {v0 .. v6}, Lcom/android/common/ui/N;-><init>(Lcom/android/common/ui/ZtemtSlidingDrawer;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wo:Landroid/widget/SimpleAdapter;

    .line 204
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wo:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 206
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    new-instance v1, Lcom/android/common/ui/aX;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aX;-><init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 196
    return-void
.end method

.method private At()V
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wk:Z

    if-eqz v0, :cond_5

    .line 183
    return-void

    .line 184
    :cond_5
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Aq()V

    .line 185
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->Ak()V

    .line 181
    return-void
.end method

.method static synthetic Ay(Lcom/android/common/ui/ZtemtSlidingDrawer;)Lcom/android/common/ui/L;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wc:Lcom/android/common/ui/L;

    return-object v0
.end method

.method static synthetic Az(Lcom/android/common/ui/ZtemtSlidingDrawer;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wg:Landroid/widget/ImageView;

    return-object v0
.end method

.method private close()V
    .registers 2

    .prologue
    .line 189
    iget-boolean v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wk:Z

    if-nez v0, :cond_5

    .line 190
    return-void

    .line 192
    :cond_5
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Aq()V

    .line 193
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wj:Lcom/android/common/ui/J;

    invoke-virtual {v0}, Lcom/android/common/ui/J;->start()V

    .line 188
    return-void
.end method


# virtual methods
.method public Ao(I)V
    .registers 4

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0, p1}, Lcom/android/common/setting/IconListPreference;->Vt(I)V

    .line 224
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wf:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wb:[Ljava/lang/CharSequence;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iput p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    .line 226
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wo:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 227
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wh:Lcom/android/common/ui/M;

    if-eqz v0, :cond_1e

    .line 228
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wh:Lcom/android/common/ui/M;

    invoke-interface {v0, p1}, Lcom/android/common/ui/M;->AJ(I)V

    .line 229
    :cond_1e
    iget-boolean v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wq:Z

    if-eqz v0, :cond_25

    .line 230
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->close()V

    .line 222
    :cond_25
    return-void
.end method

.method public Ar(Lcom/android/common/setting/IconListPreference;Landroid/content/Context;Z)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 134
    iput-boolean p3, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wq:Z

    .line 135
    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    .line 136
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->YP()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wa:[I

    .line 137
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vy()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wb:[Ljava/lang/CharSequence;

    .line 139
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3a

    .line 140
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    .line 145
    :goto_2b
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wf:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wb:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    invoke-direct {p0, p2}, Lcom/android/common/ui/ZtemtSlidingDrawer;->As(Landroid/content/Context;)V

    .line 133
    return-void

    .line 142
    :cond_3a
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vt(I)V

    .line 143
    iput v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    goto :goto_2b
.end method

.method public Au(Lcom/android/common/ui/L;)V
    .registers 2

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wc:Lcom/android/common/ui/L;

    .line 74
    return-void
.end method

.method public Av(Lcom/android/common/ui/M;)V
    .registers 2

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wh:Lcom/android/common/ui/M;

    .line 78
    return-void
.end method

.method public Aw(Z)V
    .registers 5

    .prologue
    .line 151
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    if-eqz v0, :cond_29

    .line 152
    const-string/jumbo v0, "ZtemtSlidingDrawer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mDrawerLists.isFocusable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setFocusable(Z)V

    .line 150
    :cond_29
    return-void
.end method

.method public Ax(IZ)V
    .registers 4

    .prologue
    .line 106
    iput p1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wl:I

    .line 107
    iput-boolean p2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wp:Z

    .line 108
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wo:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_d

    .line 109
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wo:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 105
    :cond_d
    return-void
.end method

.method public notifyDataSetChanged()V
    .registers 4

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    if-eqz v0, :cond_27

    .line 90
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wm:Lcom/android/common/setting/IconListPreference;

    invoke-virtual {v1}, Lcom/android/common/setting/IconListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/IconListPreference;->Vr(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    .line 91
    iget v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_27

    .line 92
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wf:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wb:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wn:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wo:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 88
    :cond_27
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->An()V

    .line 85
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 83
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 159
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 160
    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->we:Landroid/widget/LinearLayout;

    .line 161
    const v0, 0x7f1000bd

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wf:Landroid/widget/TextView;

    .line 162
    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wg:Landroid/widget/ImageView;

    .line 163
    const v0, 0x7f1000ba

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->vZ:Landroid/widget/HorizontalScrollView;

    .line 164
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    .line 166
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->we:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/common/ui/aW;

    invoke-direct {v1, p0}, Lcom/android/common/ui/aW;-><init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 218
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->we:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/common/ui/ZtemtSlidingDrawer;->wd:Landroid/widget/GridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 216
    return-void
.end method
