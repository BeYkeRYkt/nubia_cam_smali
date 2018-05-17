.class public Lcom/android/gallery3d/ui/FilmStripView;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field private avG:Landroid/app/Activity;

.field private avH:Landroid/view/View;

.field private avI:I

.field private avJ:Z

.field private avK:Lcom/android/gallery3d/ui/j;

.field private final avL:I

.field private avM:Lcom/android/gallery3d/a/p;

.field private avN:I

.field private avO:Landroid/view/MotionEvent;

.field private final avP:Landroid/graphics/Rect;

.field private avQ:Lcom/android/gallery3d/ui/b;

.field private avR:Z

.field private avS:Z

.field private avT:J

.field private avU:I

.field private avV:Lcom/android/gallery3d/ui/g;

.field private avW:Landroid/os/AsyncTask;

.field private avX:F

.field private avY:F

.field private avZ:I

.field private awa:Landroid/animation/TimeInterpolator;

.field private awb:I

.field private awc:[Lcom/android/gallery3d/ui/i;

.field private awd:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private awe:Lcom/android/gallery3d/ui/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 462
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avL:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/ui/i;

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avJ:Z

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avT:J

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avX:F

    .line 105
    iput v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avU:I

    .line 108
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avR:Z

    .line 463
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJh(Landroid/app/Activity;)V

    .line 461
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 468
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avL:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/ui/i;

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avJ:Z

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avT:J

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avX:F

    .line 105
    iput v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avU:I

    .line 108
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avR:Z

    .line 469
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJh(Landroid/app/Activity;)V

    .line 467
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 474
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 79
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    .line 81
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avL:I

    .line 84
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/gallery3d/ui/i;

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avJ:Z

    .line 97
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avT:J

    .line 103
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avX:F

    .line 105
    iput v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avU:I

    .line 108
    iput-boolean v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avR:Z

    .line 475
    check-cast p1, Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJh(Landroid/app/Activity;)V

    .line 473
    return-void
.end method

.method private aIR()V
    .registers 3

    .prologue
    .line 817
    const/4 v0, 0x4

    :goto_1
    if-ltz v0, :cond_18

    .line 818
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    if-nez v1, :cond_c

    .line 817
    :goto_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 820
    :cond_c
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->bringChildToFront(Landroid/view/View;)V

    goto :goto_9

    .line 823
    :cond_18
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->bringChildToFront(Landroid/view/View;)V

    .line 816
    return-void
.end method

.method private aIS(ILcom/android/gallery3d/a/g;)V
    .registers 15

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v9, 0x0

    .line 1178
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJa(I)I

    move-result v2

    move v3, v1

    .line 1181
    :goto_a
    if-ge v3, v10, :cond_31

    .line 1182
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v4, v4, v3

    if-eqz v4, :cond_1c

    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v4

    if-gt v4, p1, :cond_1f

    .line 1181
    :cond_1c
    :goto_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1185
    :cond_1f
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v4, v4, v3

    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v5, v5, v3

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/ui/i;->aKK(I)V

    goto :goto_1c

    .line 1187
    :cond_31
    const/4 v3, -0x1

    if-ne v2, v3, :cond_35

    .line 1188
    return-void

    .line 1191
    :cond_35
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v4

    .line 1192
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awb:I

    add-int/2addr v5, v3

    .line 1194
    add-int/lit8 v3, v2, 0x1

    :goto_46
    if-ge v3, v10, :cond_61

    .line 1195
    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v6, v6, v3

    if-eqz v6, :cond_5e

    .line 1196
    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v7, v7, v3

    invoke-virtual {v7}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v7

    sub-int/2addr v7, v5

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/ui/i;->aKL(I)V

    .line 1194
    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 1200
    :cond_61
    if-lt v2, v0, :cond_110

    .line 1201
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v6}, Lcom/android/gallery3d/a/p;->aHY()I

    move-result v6

    if-ge v3, v6, :cond_110

    move v3, v2

    .line 1205
    :goto_74
    const/4 v6, 0x4

    if-ge v3, v6, :cond_84

    .line 1206
    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v8, v3, 0x1

    aget-object v7, v7, v8

    aput-object v7, v6, v3

    .line 1205
    add-int/lit8 v3, v3, 0x1

    goto :goto_74

    .line 1210
    :cond_84
    const/4 v3, 0x4

    .line 1211
    const/4 v6, 0x3

    .line 1212
    iget-object v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v7, v7, v6

    if-eqz v7, :cond_9e

    .line 1213
    iget-object v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v8, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v6, v8, v6

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-direct {p0, v6}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v6

    aput-object v6, v7, v3

    .line 1217
    :cond_9e
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v3

    if-eqz v3, :cond_be

    .line 1218
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    const/4 v6, 0x3

    aget-object v3, v3, v6

    .line 1220
    if-eqz v3, :cond_be

    .line 1221
    invoke-virtual {v3}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v3

    const/4 v6, 0x4

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 1226
    :cond_be
    :goto_be
    if-ge v2, v10, :cond_d3

    .line 1227
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v2

    if-eqz v3, :cond_d0

    .line 1228
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v2

    int-to-float v6, v5

    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v3, v6, v7}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 1226
    :cond_d0
    add-int/lit8 v2, v2, 0x1

    goto :goto_be

    .line 1234
    :cond_d3
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v2, v0

    .line 1235
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v3}, Lcom/android/gallery3d/a/p;->aHY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_178

    .line 1236
    iget v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v3

    if-le v2, v3, :cond_178

    .line 1237
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v2

    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    sub-int/2addr v2, v3

    .line 1238
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    move v0, v1

    .line 1239
    :goto_fb
    if-ge v0, v10, :cond_178

    .line 1240
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    if-eqz v3, :cond_10d

    .line 1241
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    int-to-float v5, v2

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v3, v5, v6}, Lcom/android/gallery3d/ui/i;->aKO(FF)V

    .line 1239
    :cond_10d
    add-int/lit8 v0, v0, 0x1

    goto :goto_fb

    .line 1247
    :cond_110
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    move v3, v2

    .line 1248
    :goto_116
    if-lez v3, :cond_125

    .line 1249
    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v8, v3, -0x1

    aget-object v7, v7, v8

    aput-object v7, v6, v3

    .line 1248
    add-int/lit8 v3, v3, -0x1

    goto :goto_116

    .line 1254
    :cond_125
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    if-nez v3, :cond_148

    .line 1255
    :goto_12b
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_13f

    .line 1256
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    aput-object v6, v3, v0

    .line 1255
    add-int/lit8 v0, v0, 0x1

    goto :goto_12b

    .line 1258
    :cond_13f
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aput-object v9, v0, v3

    .line 1263
    :cond_148
    const/4 v0, 0x1

    .line 1264
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    if-eqz v3, :cond_161

    .line 1265
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v6, v0

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v0

    aput-object v0, v3, v1

    :cond_161
    move v0, v2

    .line 1269
    :goto_162
    if-ltz v0, :cond_178

    .line 1270
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v2, v2, v0

    if-eqz v2, :cond_175

    .line 1271
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v2, v2, v0

    neg-int v3, v5

    int-to-float v3, v3

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v2, v3, v6}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 1269
    :cond_175
    add-int/lit8 v0, v0, -0x1

    goto :goto_162

    :cond_178
    move v0, v1

    .line 1277
    :goto_179
    if-ge v0, v10, :cond_199

    .line 1278
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_196

    .line 1279
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/i;->aKx(F)F

    move-result v1

    cmpl-float v1, v1, v11

    if-eqz v1, :cond_196

    .line 1280
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJt(Lcom/android/gallery3d/ui/i;)V

    .line 1277
    :cond_196
    add-int/lit8 v0, v0, 0x1

    goto :goto_179

    .line 1290
    :cond_199
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x8

    .line 1291
    invoke-virtual {v4}, Landroid/view/View;->getTranslationY()F

    move-result v1

    cmpg-float v1, v1, v11

    if-gez v1, :cond_1a8

    .line 1292
    neg-int v0, v0

    .line 1294
    :cond_1a8
    invoke-virtual {v4}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 1296
    int-to-float v0, v0

    .line 1294
    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1297
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awa:Landroid/animation/TimeInterpolator;

    .line 1294
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1298
    const-wide/16 v2, 0x190

    .line 1294
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1299
    new-instance v1, Lcom/android/gallery3d/ui/B;

    invoke-direct {v1, p0, p2, v4}, Lcom/android/gallery3d/ui/B;-><init>(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/a/g;Landroid/view/View;)V

    .line 1294
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avR:Z

    .line 1323
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIR()V

    .line 1324
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 1177
    return-void
.end method

.method private aIT(I)Lcom/android/gallery3d/ui/i;
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 671
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    .line 672
    if-nez v0, :cond_b

    .line 673
    return-object v2

    .line 675
    :cond_b
    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHE()V

    .line 676
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avG:Landroid/app/Activity;

    invoke-interface {v0, v1, p1}, Lcom/android/gallery3d/a/p;->aHZ(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    .line 677
    if-nez v0, :cond_19

    .line 678
    return-object v2

    .line 680
    :cond_19
    new-instance v1, Lcom/android/gallery3d/ui/i;

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awd:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-direct {v1, p1, v0, v2}, Lcom/android/gallery3d/ui/i;-><init>(ILandroid/view/View;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 681
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    .line 682
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avH:Landroid/view/View;

    if-eq v0, v2, :cond_30

    .line 683
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->addView(Landroid/view/View;)V

    .line 690
    :goto_2f
    return-object v1

    .line 685
    :cond_30
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 686
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 687
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 688
    invoke-virtual {v0, v3}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_2f
.end method

.method private aIU(IIIII)[I
    .registers 13

    .prologue
    const/4 v2, -0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 556
    const/16 v0, 0x5a

    if-eq p3, v0, :cond_b

    const/16 v0, 0x10e

    if-ne p3, v0, :cond_29

    :cond_b
    move v0, p1

    move v1, p2

    .line 562
    :goto_d
    if-eq v1, v2, :cond_11

    .line 563
    if-ne v0, v2, :cond_13

    :cond_11
    move v0, p5

    move v1, p4

    .line 568
    :cond_13
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 569
    aput p4, v2, v5

    .line 570
    aput p5, v2, v6

    .line 572
    aget v3, v2, v6

    mul-int/2addr v3, v1

    aget v4, v2, v5

    mul-int/2addr v4, v0

    if-le v3, v4, :cond_2c

    .line 573
    aget v3, v2, v5

    mul-int/2addr v0, v3

    div-int/2addr v0, v1

    aput v0, v2, v6

    .line 578
    :goto_28
    return-object v2

    :cond_29
    move v0, p2

    move v1, p1

    .line 556
    goto :goto_d

    .line 575
    :cond_2c
    aget v3, v2, v6

    mul-int/2addr v1, v3

    div-int v0, v1, v0

    aput v0, v2, v5

    goto :goto_28
.end method

.method private aIV(I)V
    .registers 3

    .prologue
    .line 803
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    if-eqz v0, :cond_f

    .line 804
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJi(I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 805
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/g;->aKf(I)V

    .line 802
    :cond_f
    :goto_f
    return-void

    .line 807
    :cond_10
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/ui/g;->aKg(I)V

    goto :goto_f
.end method

.method private aIW(Lcom/android/gallery3d/a/g;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 1155
    invoke-interface {p1}, Lcom/android/gallery3d/a/g;->aHz()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    .line 1156
    invoke-virtual {p0, p2}, Lcom/android/gallery3d/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 1157
    invoke-interface {p1}, Lcom/android/gallery3d/a/g;->aHF()V

    .line 1154
    :goto_d
    return-void

    .line 1159
    :cond_e
    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1160
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avH:Landroid/view/View;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avH:Landroid/view/View;

    if-eq v0, p2, :cond_1f

    .line 1161
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avH:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 1163
    :cond_1f
    iput-object p2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avH:Landroid/view/View;

    goto :goto_d
.end method

.method private aIX()Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 769
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 770
    if-nez v2, :cond_a

    .line 771
    return v0

    .line 775
    :cond_a
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    if-nez v3, :cond_3d

    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v4

    if-ge v3, v4, :cond_3d

    .line 776
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avN:I

    if-gt v3, v1, :cond_3d

    move v0, v1

    .line 782
    :cond_1d
    :goto_1d
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v4}, Lcom/android/gallery3d/a/p;->aHY()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v3, v4, :cond_34

    .line 783
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v4

    if-le v3, v4, :cond_34

    move v0, v1

    .line 788
    :cond_34
    if-eqz v0, :cond_3c

    .line 789
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    .line 792
    :cond_3c
    return v0

    .line 779
    :cond_3d
    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    if-ne v3, v1, :cond_1d

    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v4

    if-ge v3, v4, :cond_1d

    .line 780
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avN:I

    if-le v3, v1, :cond_1d

    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/j;->aLd()Z

    move-result v3

    .line 779
    if-eqz v3, :cond_1d

    move v0, v1

    .line 781
    goto :goto_1d
.end method

.method private aIY(II)V
    .registers 4

    .prologue
    .line 1668
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    if-eqz v0, :cond_9

    .line 1669
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    invoke-interface {v0, p2}, Lcom/android/gallery3d/ui/g;->aKh(I)V

    .line 1667
    :cond_9
    return-void
.end method

.method private aIZ(I)V
    .registers 9

    .prologue
    const/4 v4, 0x4

    const/high16 v6, 0x3f000000    # 0.5f

    .line 912
    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x5

    if-le p1, v0, :cond_13

    .line 913
    :cond_9
    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "currItem id out of bound."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    return-void

    .line 917
    :cond_13
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, p1

    .line 918
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    .line 919
    if-eqz v0, :cond_21

    if-nez v1, :cond_3c

    .line 920
    :cond_21
    const-string/jumbo v0, "FilmStripView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid view item (curr or prev == null). curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    return-void

    .line 925
    :cond_3c
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v2

    .line 926
    const/4 v3, 0x3

    if-le p1, v3, :cond_47

    .line 928
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 929
    return-void

    .line 931
    :cond_47
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v1

    .line 932
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    if-gt v3, v1, :cond_53

    .line 935
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 936
    return-void

    .line 938
    :cond_53
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v3

    .line 940
    iget v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    int-to-float v4, v4

    int-to-float v5, v1

    sub-float/2addr v4, v5

    sub-int v1, v3, v1

    int-to-float v1, v1

    div-float v1, v4, v1

    .line 941
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    .line 942
    mul-float v5, v6, v1

    add-float/2addr v5, v6

    .line 941
    invoke-virtual {v0, v4, v3, v5}, Lcom/android/gallery3d/ui/i;->aKH(Landroid/graphics/Rect;IF)V

    .line 943
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 944
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 945
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 911
    return-void
.end method

.method static synthetic aJA(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avG:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic aJB(Lcom/android/gallery3d/ui/FilmStripView;)I
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    return v0
.end method

.method static synthetic aJC(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/j;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    return-object v0
.end method

.method static synthetic aJD(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/a/p;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    return-object v0
.end method

.method static synthetic aJE(Lcom/android/gallery3d/ui/FilmStripView;)I
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avN:I

    return v0
.end method

.method static synthetic aJF(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/graphics/Rect;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic aJG(Lcom/android/gallery3d/ui/FilmStripView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avS:Z

    return v0
.end method

.method static synthetic aJH(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/g;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    return-object v0
.end method

.method static synthetic aJI(Lcom/android/gallery3d/ui/FilmStripView;)Landroid/os/AsyncTask;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avW:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic aJJ(Lcom/android/gallery3d/ui/FilmStripView;)F
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avX:F

    return v0
.end method

.method static synthetic aJK(Lcom/android/gallery3d/ui/FilmStripView;)F
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    return v0
.end method

.method static synthetic aJL(Lcom/android/gallery3d/ui/FilmStripView;)I
    .registers 2

    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awb:I

    return v0
.end method

.method static synthetic aJM(Lcom/android/gallery3d/ui/FilmStripView;)[Lcom/android/gallery3d/ui/i;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    return-object v0
.end method

.method static synthetic aJN(Lcom/android/gallery3d/ui/FilmStripView;)Lcom/android/gallery3d/ui/a;
    .registers 2

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    return-object v0
.end method

.method static synthetic aJO(Lcom/android/gallery3d/ui/FilmStripView;I)I
    .registers 2

    iput p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    return p1
.end method

.method static synthetic aJP(Lcom/android/gallery3d/ui/FilmStripView;I)I
    .registers 2

    iput p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avN:I

    return p1
.end method

.method static synthetic aJQ(Lcom/android/gallery3d/ui/FilmStripView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avR:Z

    return p1
.end method

.method static synthetic aJR(Lcom/android/gallery3d/ui/FilmStripView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avS:Z

    return p1
.end method

.method static synthetic aJS(Lcom/android/gallery3d/ui/FilmStripView;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .registers 2

    iput-object p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avW:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic aJT(Lcom/android/gallery3d/ui/FilmStripView;F)F
    .registers 2

    iput p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    return p1
.end method

.method static synthetic aJU(Lcom/android/gallery3d/ui/FilmStripView;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIX()Z

    move-result v0

    return v0
.end method

.method static synthetic aJV(Lcom/android/gallery3d/ui/FilmStripView;)I
    .registers 2

    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJe()I

    move-result v0

    return v0
.end method

.method static synthetic aJW(Lcom/android/gallery3d/ui/FilmStripView;ILcom/android/gallery3d/a/g;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/FilmStripView;->aIS(ILcom/android/gallery3d/a/g;)V

    return-void
.end method

.method static synthetic aJX(Lcom/android/gallery3d/ui/FilmStripView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aIV(I)V

    return-void
.end method

.method static synthetic aJY(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/a/g;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/FilmStripView;->aIW(Lcom/android/gallery3d/a/g;Landroid/view/View;)V

    return-void
.end method

.method static synthetic aJZ(Lcom/android/gallery3d/ui/FilmStripView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/FilmStripView;->aIY(II)V

    return-void
.end method

.method private aJa(I)I
    .registers 4

    .prologue
    .line 1329
    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_18

    .line 1330
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_15

    .line 1331
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    if-ne v1, p1, :cond_15

    .line 1332
    return v0

    .line 1329
    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1335
    :cond_18
    const/4 v0, -0x1

    return v0
.end method

.method private aJb(I)I
    .registers 8

    .prologue
    const/4 v5, 0x5

    const/4 v4, -0x1

    .line 642
    const/4 v2, 0x0

    .line 644
    :goto_3
    if-ge v2, v5, :cond_18

    .line 645
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v2

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v0

    if-ne v0, v4, :cond_18

    .line 646
    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 649
    :cond_18
    if-ne v2, v5, :cond_1b

    .line 650
    return v4

    .line 653
    :cond_1b
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 655
    add-int/lit8 v3, v2, 0x1

    :goto_2b
    if-ge v3, v5, :cond_55

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v3

    if-eqz v1, :cond_55

    .line 657
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v1

    if-ne v1, v4, :cond_42

    move v1, v2

    .line 655
    :goto_3e
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_2b

    .line 660
    :cond_42
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v1

    .line 661
    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 662
    if-ge v1, v0, :cond_56

    move v0, v1

    move v1, v3

    .line 664
    goto :goto_3e

    .line 667
    :cond_55
    return v2

    :cond_56
    move v1, v2

    goto :goto_3e
.end method

.method private aJe()I
    .registers 3

    .prologue
    .line 545
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 546
    if-nez v0, :cond_9

    .line 547
    const/4 v0, 0x0

    return v0

    .line 549
    :cond_9
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHz()I

    move-result v0

    return v0
.end method

.method private aJh(Landroid/app/Activity;)V
    .registers 6

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 479
    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->setWillNotDraw(Z)V

    .line 480
    iput-object p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avG:Landroid/app/Activity;

    .line 481
    iput v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    .line 482
    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avN:I

    .line 483
    new-instance v0, Lcom/android/gallery3d/ui/j;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/ui/j;-><init>(Lcom/android/gallery3d/ui/FilmStripView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    .line 484
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awa:Landroid/animation/TimeInterpolator;

    .line 485
    new-instance v0, Lcom/android/gallery3d/ui/a;

    invoke-direct {v0, p1}, Lcom/android/gallery3d/ui/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    .line 486
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/a;->setVisibility(I)V

    .line 487
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->addView(Landroid/view/View;)V

    .line 490
    new-instance v0, Lcom/android/gallery3d/ui/b;

    new-instance v1, Lcom/android/gallery3d/ui/n;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/ui/n;-><init>(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/ui/n;)V

    invoke-direct {v0, p1, v1}, Lcom/android/gallery3d/ui/b;-><init>(Landroid/content/Context;Lcom/android/gallery3d/ui/c;)V

    .line 489
    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avQ:Lcom/android/gallery3d/ui/b;

    .line 491
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0056

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avZ:I

    .line 492
    new-instance v0, Lcom/android/gallery3d/ui/A;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/ui/A;-><init>(Lcom/android/gallery3d/ui/FilmStripView;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awd:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 498
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 499
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avG:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 504
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avX:F

    .line 505
    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avX:F

    cmpg-float v0, v0, v3

    if-gez v0, :cond_75

    .line 506
    iput v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avX:F

    .line 478
    :cond_75
    return-void
.end method

.method private aJi(I)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 534
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    .line 535
    return v2

    .line 537
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    if-ne v0, p1, :cond_21

    .line 538
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    iget v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    if-ne v0, v1, :cond_21

    .line 539
    const/4 v0, 0x1

    return v0

    .line 541
    :cond_21
    return v2
.end method

.method private aJl(Lcom/android/gallery3d/ui/i;II)V
    .registers 11

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 582
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    .line 583
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    .line 584
    if-nez v0, :cond_18

    .line 585
    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "trying to measure a null item"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    return-void

    .line 589
    :cond_18
    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHA()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHu()I

    move-result v2

    .line 590
    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHv()I

    move-result v3

    move-object v0, p0

    move v4, p2

    move v5, p3

    .line 589
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/FilmStripView;->aIU(IIIII)[I

    move-result-object v0

    .line 592
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v1

    .line 594
    const/4 v2, 0x0

    aget v2, v0, v2

    .line 593
    invoke-static {v2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 596
    const/4 v3, 0x1

    aget v0, v0, v3

    .line 595
    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 592
    invoke-virtual {v1, v2, v0}, Landroid/view/View;->measure(II)V

    .line 581
    return-void
.end method

.method private aJm(II)V
    .registers 4

    .prologue
    .line 1662
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    if-eqz v0, :cond_9

    .line 1663
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    invoke-interface {v0, p2}, Lcom/android/gallery3d/ui/g;->aKk(I)V

    .line 1661
    :cond_9
    return-void
.end method

.method private aJn()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x2

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 1610
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0, v6}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    .line 1611
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLA(Lcom/android/gallery3d/ui/j;)V

    .line 1612
    iput v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avN:I

    .line 1614
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v5

    if-eqz v0, :cond_27

    .line 1615
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    invoke-interface {v0, v2, v1}, Lcom/android/gallery3d/ui/g;->aKi(IZ)V

    :cond_27
    move v0, v1

    .line 1617
    :goto_28
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    array-length v2, v2

    if-ge v0, v2, :cond_57

    .line 1618
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v2, v2, v0

    if-nez v2, :cond_36

    .line 1617
    :goto_33
    add-int/lit8 v0, v0, 0x1

    goto :goto_28

    .line 1621
    :cond_36
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v2

    .line 1622
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avH:Landroid/view/View;

    if-eq v2, v3, :cond_45

    .line 1623
    invoke-virtual {p0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 1625
    :cond_45
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/gallery3d/a/g;->aHF()V

    goto :goto_33

    .line 1629
    :cond_57
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    invoke-static {v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1630
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v0}, Lcom/android/gallery3d/a/p;->aHY()I

    move-result v0

    .line 1631
    if-nez v0, :cond_65

    .line 1632
    return-void

    .line 1635
    :cond_65
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v2

    aput-object v2, v0, v5

    .line 1636
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v5

    if-nez v0, :cond_74

    .line 1637
    return-void

    .line 1639
    :cond_74
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v5

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/i;->aKL(I)V

    .line 1640
    const/4 v0, 0x3

    :goto_7c
    const/4 v1, 0x5

    if-ge v0, v1, :cond_99

    .line 1641
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1642
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    if-nez v1, :cond_bd

    .line 1649
    :cond_99
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    .line 1650
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    .line 1652
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIR()V

    .line 1653
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 1655
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    if-eqz v0, :cond_bc

    .line 1656
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/g;->aKm()V

    .line 1657
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v5

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    invoke-interface {v0, v1, v6}, Lcom/android/gallery3d/ui/g;->aKi(IZ)V

    .line 1609
    :cond_bc
    return-void

    .line 1640
    :cond_bd
    add-int/lit8 v0, v0, 0x1

    goto :goto_7c
.end method

.method private aJo(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 694
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, p1

    if-nez v0, :cond_d

    .line 695
    :cond_c
    return-void

    .line 697
    :cond_d
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    .line 698
    if-nez v0, :cond_27

    .line 699
    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "trying to remove a null item"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    return-void

    .line 702
    :cond_27
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aIW(Lcom/android/gallery3d/a/g;Landroid/view/View;)V

    .line 703
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aput-object v2, v0, p1

    .line 693
    return-void
.end method

.method private aJt(Lcom/android/gallery3d/ui/i;)V
    .registers 6

    .prologue
    const-wide/16 v2, 0x190

    .line 1169
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awa:Landroid/animation/TimeInterpolator;

    .line 1168
    invoke-virtual {p1, v0, v2, v3, v1}, Lcom/android/gallery3d/ui/i;->aKr(FJLandroid/animation/TimeInterpolator;)V

    .line 1170
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1171
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1173
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awa:Landroid/animation/TimeInterpolator;

    .line 1170
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1167
    return-void
.end method

.method private aJu()V
    .registers 5

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 843
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v0

    .line 844
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/j;->aLd()Z

    move-result v1

    if-nez v1, :cond_19

    iget-boolean v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avS:Z

    if-nez v1, :cond_19

    .line 845
    iget v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    if-ne v1, v0, :cond_1a

    .line 846
    :cond_19
    return-void

    .line 850
    :cond_1a
    iget v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 849
    const/high16 v2, 0x44160000    # 600.0f

    mul-float/2addr v1, v2

    .line 851
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    .line 849
    div-float/2addr v1, v2

    float-to-int v1, v1

    .line 852
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    .line 853
    const/4 v3, 0x0

    .line 852
    invoke-virtual {v2, v0, v1, v3}, Lcom/android/gallery3d/ui/j;->aLk(IIZ)V

    .line 854
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJe()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_43

    .line 855
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLc()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 841
    :cond_43
    :goto_43
    return-void

    .line 856
    :cond_44
    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_43

    .line 858
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aKq()V

    goto :goto_43
.end method

.method private aJv()V
    .registers 9

    .prologue
    const/4 v0, 0x4

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 711
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJf()Z

    move-result v2

    if-nez v2, :cond_11

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 716
    :cond_11
    iget v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJb(I)I

    move-result v2

    .line 718
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1c

    if-ne v2, v6, :cond_1e

    .line 719
    :cond_1c
    return-void

    .line 714
    :cond_1d
    return-void

    .line 723
    :cond_1e
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    if-eqz v3, :cond_2f

    .line 724
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v4, v4, v6

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v4

    invoke-interface {v3, v4, v1}, Lcom/android/gallery3d/ui/g;->aKi(IZ)V

    .line 726
    :cond_2f
    add-int/lit8 v2, v2, -0x2

    .line 727
    if-lez v2, :cond_8e

    move v0, v1

    .line 728
    :goto_34
    if-ge v0, v2, :cond_3c

    .line 729
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJo(I)V

    .line 728
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_3c
    move v0, v1

    .line 731
    :goto_3d
    add-int v1, v0, v2

    if-ge v1, v7, :cond_4e

    .line 732
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int v4, v0, v2

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    .line 731
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 734
    :cond_4e
    rsub-int/lit8 v0, v2, 0x5

    :goto_50
    if-ge v0, v7, :cond_75

    .line 735
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aput-object v5, v1, v0

    .line 736
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_72

    .line 737
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v2

    aput-object v2, v1, v0

    .line 734
    :cond_72
    add-int/lit8 v0, v0, 0x1

    goto :goto_50

    .line 740
    :cond_75
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIR()V

    .line 755
    :cond_78
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 756
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    if-eqz v0, :cond_8d

    .line 757
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v6

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/ui/g;->aKi(IZ)V

    .line 710
    :cond_8d
    return-void

    :cond_8e
    move v1, v0

    .line 742
    :goto_8f
    add-int/lit8 v3, v2, 0x5

    if-lt v1, v3, :cond_99

    .line 743
    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJo(I)V

    .line 742
    add-int/lit8 v1, v1, -0x1

    goto :goto_8f

    .line 745
    :cond_99
    :goto_99
    add-int v1, v0, v2

    if-ltz v1, :cond_aa

    .line 746
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int v4, v0, v2

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    .line 745
    add-int/lit8 v0, v0, -0x1

    goto :goto_99

    .line 748
    :cond_aa
    rsub-int/lit8 v0, v2, -0x1

    :goto_ac
    if-ltz v0, :cond_78

    .line 749
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aput-object v5, v1, v0

    .line 750
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    if-eqz v1, :cond_ce

    .line 751
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v2

    aput-object v2, v1, v0

    .line 748
    :cond_ce
    add-int/lit8 v0, v0, -0x1

    goto :goto_ac
.end method

.method private aJw(IIF)V
    .registers 11

    .prologue
    .line 876
    if-ltz p1, :cond_5

    const/4 v0, 0x4

    if-le p1, v0, :cond_f

    .line 877
    :cond_5
    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "currItem id out of bound."

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    return-void

    .line 881
    :cond_f
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, p1

    .line 882
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    .line 883
    if-eqz v0, :cond_1d

    if-nez v1, :cond_38

    .line 884
    :cond_1d
    const-string/jumbo v0, "FilmStripView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid view item (curr or next == null). curr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    return-void

    .line 889
    :cond_38
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v2

    .line 890
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v1

    .line 891
    sub-int v3, v1, p2

    sub-int/2addr v3, v2

    int-to-float v3, v3

    mul-float/2addr v3, p3

    float-to-int v3, v3

    .line 894
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/gallery3d/ui/i;->aKH(Landroid/graphics/Rect;IF)V

    .line 895
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 897
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 898
    iget v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    sub-int/2addr v4, v2

    mul-int/2addr v3, v4

    .line 899
    sub-int/2addr v1, v2

    .line 898
    div-int v1, v3, v1

    int-to-float v1, v1

    .line 899
    iget v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    .line 898
    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 875
    :goto_6b
    return-void

    .line 901
    :cond_6c
    int-to-float v1, v3

    iget v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    goto :goto_6b
.end method

.method private aJx(Lcom/android/gallery3d/a/n;)V
    .registers 10

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x2

    .line 1543
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v2

    if-nez v0, :cond_c

    .line 1544
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJn()V

    .line 1545
    return-void

    .line 1549
    :cond_c
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v6, v0, v2

    .line 1550
    invoke-virtual {v6}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    .line 1551
    invoke-interface {p1, v0}, Lcom/android/gallery3d/a/n;->aIn(I)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 1552
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJn()V

    .line 1553
    return-void

    .line 1555
    :cond_1e
    invoke-interface {p1, v0}, Lcom/android/gallery3d/a/n;->aIo(I)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1556
    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJz(I)V

    .line 1557
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    .line 1558
    iget-boolean v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avS:Z

    if-nez v1, :cond_39

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/j;->aLd()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 1569
    :cond_39
    :goto_39
    const/4 v0, 0x1

    :goto_3a
    if-ltz v0, :cond_94

    .line 1570
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    .line 1571
    if-eqz v1, :cond_7d

    .line 1572
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    .line 1573
    invoke-interface {p1, v1}, Lcom/android/gallery3d/a/n;->aIn(I)Z

    move-result v2

    if-nez v2, :cond_52

    invoke-interface {p1, v1}, Lcom/android/gallery3d/a/n;->aIo(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 1574
    :cond_52
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJz(I)V

    .line 1569
    :cond_55
    :goto_55
    add-int/lit8 v0, v0, -0x1

    goto :goto_3a

    .line 1562
    :cond_58
    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHA()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHu()I

    move-result v2

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHv()I

    move-result v3

    .line 1563
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    .line 1561
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/FilmStripView;->aIU(IIIII)[I

    move-result-object v0

    .line 1564
    invoke-virtual {v6}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v1

    aget v0, v0, v7

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    goto :goto_39

    .line 1577
    :cond_7d
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v2, v0, 0x1

    aget-object v1, v1, v2

    .line 1578
    if-eqz v1, :cond_55

    .line 1579
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_55

    .line 1585
    :cond_94
    const/4 v0, 0x3

    :goto_95
    const/4 v1, 0x5

    if-ge v0, v1, :cond_cb

    .line 1586
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    .line 1587
    if-eqz v1, :cond_b4

    .line 1588
    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    .line 1589
    invoke-interface {p1, v1}, Lcom/android/gallery3d/a/n;->aIn(I)Z

    move-result v2

    if-nez v2, :cond_ae

    invoke-interface {p1, v1}, Lcom/android/gallery3d/a/n;->aIo(I)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 1590
    :cond_ae
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJz(I)V

    .line 1585
    :cond_b1
    :goto_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 1593
    :cond_b4
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    .line 1594
    if-eqz v1, :cond_b1

    .line 1595
    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_b1

    .line 1599
    :cond_cb
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIR()V

    .line 1601
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->requestLayout()V

    .line 1541
    return-void
.end method

.method private aJy(I)V
    .registers 13

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x4

    const/4 v9, 0x2

    const/4 v8, 0x0

    .line 1339
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJa(I)I

    move-result v0

    .line 1340
    const/4 v1, -0x1

    if-ne v0, v1, :cond_11f

    .line 1343
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v1}, Lcom/android/gallery3d/a/p;->aHY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p1, v1, :cond_11f

    .line 1344
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aJa(I)I

    move-result v1

    .line 1345
    if-ltz v1, :cond_39

    if-ge v1, v7, :cond_39

    .line 1348
    add-int/lit8 v0, v1, 0x1

    move v6, v0

    :goto_22
    move v0, v8

    .line 1354
    :goto_23
    const/4 v1, 0x5

    if-ge v0, v1, :cond_4d

    .line 1355
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v1

    if-ge v1, p1, :cond_3b

    .line 1354
    :cond_36
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :cond_39
    move v6, v0

    .line 1345
    goto :goto_22

    .line 1358
    :cond_3b
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/ui/i;->aKK(I)V

    goto :goto_36

    .line 1360
    :cond_4d
    const/4 v0, -0x1

    if-ne v6, v0, :cond_51

    .line 1361
    return-void

    .line 1364
    :cond_51
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v0, p1}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    .line 1366
    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHA()I

    move-result v1

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHu()I

    move-result v2

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHv()I

    move-result v3

    .line 1367
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    .line 1365
    invoke-direct/range {v0 .. v5}, Lcom/android/gallery3d/ui/FilmStripView;->aIU(IIIII)[I

    move-result-object v0

    .line 1368
    aget v0, v0, v8

    iget v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awb:I

    add-int/2addr v1, v0

    .line 1369
    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v2

    .line 1371
    if-lt v6, v9, :cond_b3

    .line 1372
    if-ne v6, v9, :cond_88

    .line 1373
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v9

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/i;->aKL(I)V

    .line 1376
    :cond_88
    invoke-direct {p0, v7}, Lcom/android/gallery3d/ui/FilmStripView;->aJo(I)V

    move v0, v7

    .line 1377
    :goto_8c
    if-le v0, v6, :cond_e2

    .line 1378
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v5, v0, -0x1

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 1379
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    if-eqz v3, :cond_b0

    .line 1380
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    neg-int v4, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 1381
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJt(Lcom/android/gallery3d/ui/i;)V

    .line 1377
    :cond_b0
    add-int/lit8 v0, v0, -0x1

    goto :goto_8c

    .line 1387
    :cond_b3
    add-int/lit8 v6, v6, -0x1

    .line 1388
    if-gez v6, :cond_b8

    .line 1389
    return-void

    .line 1391
    :cond_b8
    invoke-direct {p0, v8}, Lcom/android/gallery3d/ui/FilmStripView;->aJo(I)V

    .line 1392
    const/4 v0, 0x1

    :goto_bc
    if-gt v0, v6, :cond_e2

    .line 1393
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    if-eqz v3, :cond_df

    .line 1394
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    int-to-float v4, v1

    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v3, v4, v5}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 1395
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v3, v3, v0

    invoke-direct {p0, v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJt(Lcom/android/gallery3d/ui/i;)V

    .line 1396
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v4, v0, -0x1

    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v5, v5, v0

    aput-object v5, v3, v4

    .line 1392
    :cond_df
    add-int/lit8 v0, v0, 0x1

    goto :goto_bc

    .line 1401
    :cond_e2
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aput-object v2, v0, v6

    .line 1402
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v6

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    .line 1403
    invoke-virtual {v0, v10}, Landroid/view/View;->setAlpha(F)V

    .line 1404
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 1405
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1406
    const/high16 v1, 0x3f800000    # 1.0f

    .line 1405
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1408
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awa:Landroid/animation/TimeInterpolator;

    .line 1405
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1409
    const-wide/16 v2, 0x190

    .line 1405
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 1411
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIR()V

    .line 1412
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 1338
    return-void

    :cond_11f
    move v6, v0

    goto/16 :goto_22
.end method

.method private aJz(I)V
    .registers 6

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, p1

    .line 1507
    if-nez v0, :cond_10

    .line 1508
    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "trying to update an null item"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    return-void

    .line 1511
    :cond_10
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->removeView(Landroid/view/View;)V

    .line 1513
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v1

    .line 1514
    if-nez v1, :cond_2d

    .line 1515
    const-string/jumbo v0, "FilmStripView"

    const-string/jumbo v1, "trying recycle a null item"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1516
    return-void

    .line 1518
    :cond_2d
    invoke-interface {v1}, Lcom/android/gallery3d/a/g;->aHF()V

    .line 1520
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aIT(I)Lcom/android/gallery3d/ui/i;

    move-result-object v2

    .line 1521
    if-nez v2, :cond_4e

    .line 1522
    const-string/jumbo v2, "FilmStripView"

    const-string/jumbo v3, "new item is null"

    invoke-static {v2, v3}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    invoke-interface {v1}, Lcom/android/gallery3d/a/g;->aHE()V

    .line 1525
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->addView(Landroid/view/View;)V

    .line 1526
    return-void

    .line 1528
    :cond_4e
    invoke-virtual {v2, v0}, Lcom/android/gallery3d/ui/i;->aKt(Lcom/android/gallery3d/ui/i;)V

    .line 1529
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aput-object v2, v0, p1

    .line 1531
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIX()Z

    move-result v0

    .line 1532
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJd()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/gallery3d/ui/FilmStripView;->aIV(I)V

    .line 1533
    if-eqz v0, :cond_68

    .line 1534
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/j;->aLn(Z)Z

    .line 1536
    :cond_68
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIR()V

    .line 1537
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->invalidate()V

    .line 1505
    return-void
.end method

.method static synthetic aKa(Lcom/android/gallery3d/ui/FilmStripView;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/ui/FilmStripView;->aJm(II)V

    return-void
.end method

.method static synthetic aKb(Lcom/android/gallery3d/ui/FilmStripView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJn()V

    return-void
.end method

.method static synthetic aKc(Lcom/android/gallery3d/ui/FilmStripView;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJu()V

    return-void
.end method

.method static synthetic aKd(Lcom/android/gallery3d/ui/FilmStripView;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJy(I)V

    return-void
.end method

.method static synthetic aKe(Lcom/android/gallery3d/ui/FilmStripView;Lcom/android/gallery3d/a/n;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJx(Lcom/android/gallery3d/a/n;)V

    return-void
.end method


# virtual methods
.method public aJc()Lcom/android/gallery3d/ui/h;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    return-object v0
.end method

.method public aJd()I
    .registers 3

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 831
    if-nez v0, :cond_9

    .line 832
    const/4 v0, -0x1

    return v0

    .line 834
    :cond_9
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    return v0
.end method

.method public aJf()Z
    .registers 3

    .prologue
    .line 1447
    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public aJg()Z
    .registers 3

    .prologue
    .line 1451
    iget v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public aJj()Z
    .registers 2

    .prologue
    .line 1502
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avR:Z

    return v0
.end method

.method public aJk(Z)V
    .registers 13

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v10, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    .line 949
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v10

    if-eqz v0, :cond_13

    .line 950
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_14

    .line 952
    :cond_13
    return-void

    .line 951
    :cond_14
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-eqz v0, :cond_13

    .line 957
    if-eqz p1, :cond_36

    .line 958
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v10

    .line 959
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v4, v4, v10

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    .line 958
    invoke-virtual {v0, v3}, Lcom/android/gallery3d/ui/i;->aKL(I)V

    .line 962
    :cond_36
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 963
    return-void

    .line 970
    :cond_3f
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awa:Landroid/animation/TimeInterpolator;

    .line 971
    iget v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    const/high16 v4, 0x3f000000    # 0.5f

    sub-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    div-float/2addr v3, v4

    .line 970
    invoke-interface {v0, v3}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v3

    .line 972
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awb:I

    add-int/2addr v4, v0

    move v0, v1

    .line 977
    :goto_57
    if-ltz v0, :cond_5f

    .line 978
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v5, v5, v0

    .line 979
    if-nez v5, :cond_ba

    .line 989
    :cond_5f
    const/4 v0, 0x3

    :goto_60
    const/4 v5, 0x5

    if-ge v0, v5, :cond_69

    .line 990
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v5, v5, v0

    .line 991
    if-nez v5, :cond_d6

    .line 1006
    :cond_69
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v10

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    if-ne v0, v1, :cond_f5

    .line 1007
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v0, v2}, Lcom/android/gallery3d/a/p;->aHW(I)Lcom/android/gallery3d/a/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/gallery3d/a/g;->aHz()I

    move-result v0

    if-ne v0, v1, :cond_f3

    move v0, v1

    .line 1010
    :goto_80
    if-eqz v0, :cond_f7

    .line 1015
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v10

    .line 1016
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/gallery3d/ui/i;->aKH(Landroid/graphics/Rect;IF)V

    .line 1017
    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 1018
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    :goto_9c
    move v0, v1

    .line 1058
    :goto_9d
    if-ltz v0, :cond_a5

    .line 1059
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v5, v5, v0

    .line 1060
    if-nez v5, :cond_177

    .line 1067
    :cond_a5
    const/4 v0, 0x3

    :goto_a6
    const/4 v4, 0x5

    if-ge v0, v4, :cond_af

    .line 1068
    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v4, v4, v0

    .line 1069
    if-nez v4, :cond_17e

    .line 1103
    :cond_af
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJv()V

    .line 1104
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJd()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avT:J

    .line 948
    return-void

    .line 984
    :cond_ba
    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v7, v0, 0x1

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v6

    .line 985
    invoke-virtual {v5}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 984
    sub-int/2addr v6, v7

    .line 985
    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->awb:I

    .line 984
    sub-int/2addr v6, v7

    .line 986
    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/i;->aKL(I)V

    .line 977
    add-int/lit8 v0, v0, -0x1

    goto :goto_57

    .line 996
    :cond_d6
    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    add-int/lit8 v7, v0, -0x1

    aget-object v6, v6, v7

    .line 998
    invoke-virtual {v6}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v7

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v7

    .line 999
    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->awb:I

    .line 998
    add-int/2addr v6, v7

    .line 1000
    invoke-virtual {v5, v6}, Lcom/android/gallery3d/ui/i;->aKL(I)V

    .line 989
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_60

    :cond_f3
    move v0, v2

    .line 1007
    goto :goto_80

    :cond_f5
    move v0, v2

    .line 1006
    goto :goto_80

    .line 1019
    :cond_f7
    cmpl-float v0, v3, v9

    if-nez v0, :cond_12b

    .line 1020
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v10

    .line 1021
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v5

    .line 1022
    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    if-ge v6, v5, :cond_10b

    .line 1025
    invoke-direct {p0, v10}, Lcom/android/gallery3d/ui/FilmStripView;->aIZ(I)V

    goto :goto_9c

    .line 1026
    :cond_10b
    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    if-le v6, v5, :cond_113

    .line 1029
    invoke-direct {p0, v10, v4, v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJw(IIF)V

    goto :goto_9c

    .line 1031
    :cond_113
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/gallery3d/ui/i;->aKH(Landroid/graphics/Rect;IF)V

    .line 1032
    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    const/4 v6, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 1033
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_9c

    .line 1036
    :cond_12b
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v10

    .line 1040
    iget v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v0, v5}, Lcom/android/gallery3d/ui/i;->aKx(F)F

    move-result v5

    mul-float/2addr v5, v3

    .line 1041
    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    .line 1039
    invoke-virtual {v0, v5, v6}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    .line 1042
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v0, v5, v6, v7}, Lcom/android/gallery3d/ui/i;->aKH(Landroid/graphics/Rect;IF)V

    .line 1043
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v5, v5, v1

    if-nez v5, :cond_153

    .line 1044
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_9c

    .line 1046
    :cond_153
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v5

    .line 1047
    iget-object v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v6, v6, v1

    invoke-virtual {v6}, Lcom/android/gallery3d/ui/i;->aKu()I

    move-result v6

    .line 1049
    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    int-to-float v7, v7

    int-to-float v8, v6

    sub-float/2addr v7, v8

    sub-int/2addr v5, v6

    int-to-float v5, v5

    div-float v5, v7, v5

    .line 1050
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v0

    .line 1051
    sub-float v6, v9, v5

    sub-float v7, v9, v3

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    .line 1050
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_9c

    .line 1063
    :cond_177
    invoke-direct {p0, v0, v4, v3}, Lcom/android/gallery3d/ui/FilmStripView;->aJw(IIF)V

    .line 1058
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_9d

    .line 1073
    :cond_17e
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avI:I

    iget v7, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/gallery3d/ui/i;->aKH(Landroid/graphics/Rect;IF)V

    .line 1074
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v5

    if-ne v5, v1, :cond_19e

    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJe()I

    move-result v5

    if-ne v5, v1, :cond_19e

    .line 1076
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1067
    :goto_19a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a6

    .line 1080
    :cond_19e
    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKB()Landroid/view/View;

    move-result-object v5

    .line 1081
    cmpl-float v6, v3, v9

    if-nez v6, :cond_1aa

    .line 1083
    invoke-direct {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aIZ(I)V

    goto :goto_19a

    .line 1085
    :cond_1aa
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1b4

    .line 1086
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1088
    :cond_1b4
    const/4 v6, 0x3

    if-ne v0, v6, :cond_1d1

    .line 1089
    sub-float v6, v9, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    .line 1098
    :goto_1bc
    iget-object v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v5, v5, v10

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/i;->aKw()I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float/2addr v5, v3

    .line 1099
    iget v6, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    .line 1097
    invoke-virtual {v4, v5, v6}, Lcom/android/gallery3d/ui/i;->aKM(FF)V

    goto :goto_19a

    .line 1091
    :cond_1d1
    const/4 v6, 0x0

    cmpl-float v6, v3, v6

    if-nez v6, :cond_1da

    .line 1092
    invoke-virtual {v5, v9}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1bc

    .line 1094
    :cond_1da
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1bc
.end method

.method public aJp()V
    .registers 3

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1137
    return-void

    .line 1139
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 1140
    if-nez v0, :cond_11

    .line 1141
    return-void

    .line 1143
    :cond_11
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avY:F

    .line 1144
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-static {v1}, Lcom/android/gallery3d/ui/j;->aLv(Lcom/android/gallery3d/ui/j;)V

    .line 1145
    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-static {v1}, Lcom/android/gallery3d/ui/j;->aLt(Lcom/android/gallery3d/ui/j;)V

    .line 1146
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKJ()V

    .line 1147
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-static {v0}, Lcom/android/gallery3d/ui/j;->aLu(Lcom/android/gallery3d/ui/j;)V

    .line 1148
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/ui/a;->setVisibility(I)V

    .line 1149
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/gallery3d/ui/j;->aLz(Lcom/android/gallery3d/ui/j;Z)V

    .line 1135
    return-void
.end method

.method public aJq(Lcom/android/gallery3d/a/p;)V
    .registers 5

    .prologue
    .line 1416
    iput-object p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    .line 1417
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->getMeasuredHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery3d/a/p;->aIg(II)V

    .line 1418
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    new-instance v1, Lcom/android/gallery3d/ui/C;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/ui/C;-><init>(Lcom/android/gallery3d/ui/FilmStripView;)V

    invoke-interface {v0, v1}, Lcom/android/gallery3d/a/p;->aIf(Lcom/android/gallery3d/a/o;)V

    .line 1415
    return-void
.end method

.method public aJr(Lcom/android/gallery3d/ui/g;)V
    .registers 2

    .prologue
    .line 520
    iput-object p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avV:Lcom/android/gallery3d/ui/g;

    .line 519
    return-void
.end method

.method public aJs(I)V
    .registers 2

    .prologue
    .line 524
    iput p1, p0, Lcom/android/gallery3d/ui/FilmStripView;->awb:I

    .line 523
    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 3

    .prologue
    .line 632
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->fitSystemWindows(Landroid/graphics/Rect;)Z

    .line 637
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .prologue
    .line 1110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/ui/FilmStripView;->aJk(Z)V

    .line 1111
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1108
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1456
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJg()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLd()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 1457
    :cond_11
    return v5

    .line 1460
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_36

    .line 1461
    iput-boolean v5, p0, Lcom/android/gallery3d/ui/FilmStripView;->avJ:Z

    .line 1462
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avO:Landroid/view/MotionEvent;

    .line 1463
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    aget-object v0, v0, v6

    .line 1465
    if-eqz v0, :cond_32

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/i;->aKv()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/gallery3d/a/p;->aHS(I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 1468
    :cond_32
    :goto_32
    return v4

    .line 1466
    :cond_33
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avJ:Z

    goto :goto_32

    .line 1469
    :cond_36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_40

    .line 1471
    iput-boolean v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avJ:Z

    .line 1472
    return v4

    .line 1474
    :cond_40
    iget-boolean v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avJ:Z

    if-nez v0, :cond_45

    .line 1475
    return v4

    .line 1477
    :cond_45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f4

    cmp-long v0, v0, v2

    if-lez v0, :cond_55

    .line 1478
    return v4

    .line 1480
    :cond_55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avO:Landroid/view/MotionEvent;

    invoke-virtual {v1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avO:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    .line 1482
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    if-ne v2, v6, :cond_86

    .line 1483
    iget v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avZ:I

    mul-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_86

    .line 1485
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_86

    .line 1486
    return v5

    .line 1490
    :cond_86
    return v4
.end method

.method protected onLayout(ZIIII)V
    .registers 11

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->left:I

    .line 1117
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->top:I

    .line 1118
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 1119
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iput p5, v0, Landroid/graphics/Rect;->bottom:I

    .line 1120
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    iget-object v1, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/gallery3d/ui/FilmStripView;->avP:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/gallery3d/ui/a;->layout(IIII)V

    .line 1123
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avK:Lcom/android/gallery3d/ui/j;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/j;->aLf()Z

    move-result v0

    if-eqz v0, :cond_2f

    if-eqz p1, :cond_35

    .line 1124
    :cond_2f
    invoke-virtual {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aJp()V

    .line 1125
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/ui/FilmStripView;->aJk(Z)V

    .line 1115
    :cond_35
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v0, 0x0

    .line 601
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 603
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 604
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 605
    if-eqz v1, :cond_12

    if-nez v2, :cond_13

    .line 607
    :cond_12
    return-void

    .line 610
    :cond_13
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    if-eqz v3, :cond_1c

    .line 611
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->avM:Lcom/android/gallery3d/a/p;

    invoke-interface {v3, v1, v2}, Lcom/android/gallery3d/a/p;->aIg(II)V

    .line 614
    :cond_1c
    iget-object v3, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    array-length v4, v3

    :goto_1f
    if-ge v0, v4, :cond_2b

    aget-object v5, v3, v0

    .line 615
    if-eqz v5, :cond_28

    .line 616
    invoke-direct {p0, v5, v1, v2}, Lcom/android/gallery3d/ui/FilmStripView;->aJl(Lcom/android/gallery3d/ui/i;II)V

    .line 614
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    .line 619
    :cond_2b
    invoke-direct {p0}, Lcom/android/gallery3d/ui/FilmStripView;->aIX()Z

    .line 621
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awe:Lcom/android/gallery3d/ui/a;

    .line 622
    invoke-static {p1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 624
    invoke-static {p2, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 621
    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/a;->measure(II)V

    .line 600
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 1495
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->awc:[Lcom/android/gallery3d/ui/i;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    if-nez v0, :cond_9

    return v2

    .line 1496
    :cond_9
    iget-object v0, p0, Lcom/android/gallery3d/ui/FilmStripView;->avQ:Lcom/android/gallery3d/ui/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/b;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 1497
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1498
    return v2
.end method
