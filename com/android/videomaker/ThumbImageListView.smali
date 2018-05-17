.class public Lcom/android/videomaker/ThumbImageListView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aNl:Landroid/content/Context;

.field private aNm:I

.field private aNn:I

.field private aNo:I

.field private aNp:I

.field private aNq:Z

.field private aNr:I

.field private aNs:Lcom/android/videomaker/s;

.field private aNt:Landroid/graphics/Rect;

.field private aNu:Landroid/graphics/Bitmap;

.field private aNv:Ljava/util/ArrayList;

.field private aNw:Landroid/widget/Toast;

.field private aNx:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNr:I

    .line 31
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNm:I

    .line 32
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNn:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNq:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    .line 35
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNu:Landroid/graphics/Bitmap;

    .line 36
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNx:Landroid/graphics/Bitmap;

    .line 39
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNs:Lcom/android/videomaker/s;

    .line 40
    iput v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 41
    iput v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNp:I

    .line 42
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNw:Landroid/widget/Toast;

    .line 46
    iput-object p1, p0, Lcom/android/videomaker/ThumbImageListView;->aNl:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNr:I

    .line 31
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNm:I

    .line 32
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNn:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNq:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    .line 35
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNu:Landroid/graphics/Bitmap;

    .line 36
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNx:Landroid/graphics/Bitmap;

    .line 39
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNs:Lcom/android/videomaker/s;

    .line 40
    iput v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 41
    iput v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNp:I

    .line 42
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNw:Landroid/widget/Toast;

    .line 52
    iput-object p1, p0, Lcom/android/videomaker/ThumbImageListView;->aNl:Landroid/content/Context;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNr:I

    .line 31
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNm:I

    .line 32
    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNn:I

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNq:Z

    .line 34
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    .line 35
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNu:Landroid/graphics/Bitmap;

    .line 36
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNx:Landroid/graphics/Bitmap;

    .line 39
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNs:Lcom/android/videomaker/s;

    .line 40
    iput v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 41
    iput v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNp:I

    .line 42
    iput-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNw:Landroid/widget/Toast;

    .line 58
    iput-object p1, p0, Lcom/android/videomaker/ThumbImageListView;->aNl:Landroid/content/Context;

    .line 59
    return-void
.end method

.method private bdV(Lcom/android/videomaker/a;I)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 170
    invoke-virtual {p1}, Lcom/android/videomaker/a;->aZU()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 172
    iget-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNl:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 173
    const v2, 0x7f0400a2

    .line 172
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 175
    if-eqz v0, :cond_21

    .line 179
    const v0, 0x7f100206

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 180
    const/4 v2, 0x1

    invoke-direct {p0, v0, p2, v2}, Lcom/android/videomaker/ThumbImageListView;->bdW(Landroid/widget/ImageView;IZ)V

    .line 183
    :cond_21
    return-object v1
.end method

.method private bdW(Landroid/widget/ImageView;IZ)V
    .registers 16

    .prologue
    .line 200
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 201
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 202
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 206
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 207
    const/high16 v0, -0x1000000

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 208
    const/16 v0, 0x96

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 215
    iget v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNp:I

    .line 216
    iget v3, p0, Lcom/android/videomaker/ThumbImageListView;->aNp:I

    .line 218
    if-eqz v2, :cond_2a

    if-nez v3, :cond_2b

    .line 219
    :cond_2a
    return-void

    .line 222
    :cond_2b
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/a;

    invoke-virtual {v0}, Lcom/android/videomaker/a;->aZU()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 223
    if-nez v7, :cond_3a

    return-void

    .line 224
    :cond_3a
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 225
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 227
    const/4 v9, 0x0

    iput v9, v1, Landroid/graphics/Rect;->left:I

    .line 228
    const/4 v9, 0x0

    iput v9, v1, Landroid/graphics/Rect;->top:I

    .line 229
    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 230
    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 233
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v0

    .line 232
    invoke-static {v2, v3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 234
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 235
    new-instance v9, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v10, 0x0

    .line 236
    const/4 v11, 0x3

    .line 235
    invoke-direct {v9, v10, v11}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {v0, v9}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 238
    const/4 v9, 0x0

    iput v9, v4, Landroid/graphics/Rect;->left:I

    .line 239
    const/4 v9, 0x0

    iput v9, v4, Landroid/graphics/Rect;->top:I

    .line 240
    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 241
    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 243
    const/16 v2, 0x8

    iput v2, v6, Landroid/graphics/Rect;->left:I

    .line 244
    const/16 v2, 0x8

    iput v2, v6, Landroid/graphics/Rect;->top:I

    .line 245
    const/16 v2, 0x21

    iput v2, v6, Landroid/graphics/Rect;->right:I

    .line 246
    const/16 v2, 0x21

    iput v2, v6, Landroid/graphics/Rect;->bottom:I

    .line 248
    const/4 v2, 0x0

    invoke-virtual {v0, v7, v1, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 250
    if-nez p3, :cond_9e

    .line 251
    iget v1, v4, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, v4, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget v3, v4, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 252
    iget-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNx:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 257
    :goto_9a
    invoke-virtual {p1, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 258
    return-void

    .line 254
    :cond_9e
    iget-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNu:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_9a
.end method

.method private bdX(Landroid/view/View;)I
    .registers 3

    .prologue
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    return v0
.end method

.method private bdY(IZ)Z
    .registers 5

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/videomaker/ThumbImageListView;->getItemId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/videomaker/ThumbImageListView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 189
    if-eqz v0, :cond_16

    .line 191
    const v1, 0x7f100206

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 192
    invoke-direct {p0, v0, p1, p2}, Lcom/android/videomaker/ThumbImageListView;->bdW(Landroid/widget/ImageView;IZ)V

    .line 194
    :cond_16
    const/4 v0, 0x1

    return v0
.end method

.method private bdZ(Landroid/view/View;I)I
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p1, p2}, Landroid/view/View;->setId(I)V

    .line 160
    return p2
.end method


# virtual methods
.method public bdR(Lcom/android/videomaker/s;)V
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/videomaker/ThumbImageListView;->aNs:Lcom/android/videomaker/s;

    .line 263
    return-void
.end method

.method public bdS(I)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 63
    iput p1, p0, Lcom/android/videomaker/ThumbImageListView;->aNp:I

    .line 64
    invoke-virtual {p0}, Lcom/android/videomaker/ThumbImageListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    const v1, 0x7f0202c4

    .line 64
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNu:Landroid/graphics/Bitmap;

    .line 66
    invoke-virtual {p0}, Lcom/android/videomaker/ThumbImageListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 67
    const v1, 0x7f0202c5

    .line 66
    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNx:Landroid/graphics/Bitmap;

    .line 68
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 69
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    iput v2, v0, Landroid/graphics/Rect;->top:I

    .line 70
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNu:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 71
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNt:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNu:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 73
    invoke-virtual {p0}, Lcom/android/videomaker/ThumbImageListView;->clear()V

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    .line 75
    iput v2, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 76
    return-void
.end method

.method public bdT(Lcom/android/videomaker/a;I)V
    .registers 4

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 99
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/videomaker/a;->aZX(Z)V

    .line 100
    invoke-direct {p0, p1, p2}, Lcom/android/videomaker/ThumbImageListView;->bdV(Lcom/android/videomaker/a;I)Landroid/view/View;

    move-result-object v0

    .line 101
    invoke-direct {p0, v0, p2}, Lcom/android/videomaker/ThumbImageListView;->bdZ(Landroid/view/View;I)I

    .line 102
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {p0, v0, p2}, Lcom/android/videomaker/ThumbImageListView;->addView(Landroid/view/View;I)V

    .line 105
    iget v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 106
    return-void
.end method

.method public bdU()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    return v0
.end method

.method public clear()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/android/videomaker/ThumbImageListView;->removeAllViews()V

    .line 83
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    if-eqz v0, :cond_1e

    move v0, v1

    .line 84
    :goto_a
    invoke-virtual {p0}, Lcom/android/videomaker/ThumbImageListView;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1a

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/videomaker/ThumbImageListView;->getItem(I)Lcom/android/videomaker/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/videomaker/a;->aZT()V

    .line 84
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 88
    :cond_1a
    iput-object v3, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    .line 89
    iput v1, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 91
    :cond_1e
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 92
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    .line 140
    const/4 v0, 0x0

    return v0

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/videomaker/a;
    .registers 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/a;

    return-object v0
.end method

.method public getItemId(I)I
    .registers 2

    .prologue
    .line 151
    return p1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 115
    invoke-direct {p0, p1}, Lcom/android/videomaker/ThumbImageListView;->bdX(Landroid/view/View;)I

    move-result v1

    .line 116
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/a;

    invoke-virtual {v0}, Lcom/android/videomaker/a;->aZV()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 117
    iget v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2e

    .line 118
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNw:Landroid/widget/Toast;

    if-nez v0, :cond_28

    .line 119
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNl:Landroid/content/Context;

    const v1, 0x7f0a0358

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNw:Landroid/widget/Toast;

    .line 121
    :cond_28
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNw:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 122
    return-void

    .line 124
    :cond_2e
    iget v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 125
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/a;

    invoke-virtual {v0, v4}, Lcom/android/videomaker/a;->aZX(Z)V

    .line 126
    invoke-direct {p0, v1, v4}, Lcom/android/videomaker/ThumbImageListView;->bdY(IZ)Z

    .line 133
    :goto_42
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNs:Lcom/android/videomaker/s;

    if-eqz v0, :cond_4b

    .line 134
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNs:Lcom/android/videomaker/s;

    invoke-interface {v0, v1}, Lcom/android/videomaker/s;->bbc(I)V

    .line 114
    :cond_4b
    return-void

    .line 128
    :cond_4c
    iget v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNo:I

    .line 129
    iget-object v0, p0, Lcom/android/videomaker/ThumbImageListView;->aNv:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/videomaker/a;

    invoke-virtual {v0, v3}, Lcom/android/videomaker/a;->aZX(Z)V

    .line 130
    invoke-direct {p0, v1, v3}, Lcom/android/videomaker/ThumbImageListView;->bdY(IZ)Z

    goto :goto_42
.end method
