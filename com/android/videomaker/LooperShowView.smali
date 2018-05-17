.class public Lcom/android/videomaker/LooperShowView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private aNi:Landroid/os/Handler;

.field private aNj:Lcom/android/videomaker/b;

.field private aNk:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-string/jumbo v0, "LooperShowView"

    sput-object v0, Lcom/android/videomaker/LooperShowView;->TAG:Ljava/lang/String;

    .line 19
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/videomaker/LooperShowView;->aNk:J

    .line 29
    invoke-direct {p0}, Lcom/android/videomaker/LooperShowView;->bdO()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/videomaker/LooperShowView;->aNk:J

    .line 34
    invoke-direct {p0}, Lcom/android/videomaker/LooperShowView;->bdO()V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/videomaker/LooperShowView;->aNk:J

    .line 39
    invoke-direct {p0}, Lcom/android/videomaker/LooperShowView;->bdO()V

    .line 37
    return-void
.end method

.method private bdN(Landroid/graphics/Canvas;)V
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 98
    invoke-virtual {p0}, Lcom/android/videomaker/LooperShowView;->getWidth()I

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/android/videomaker/LooperShowView;->getHeight()I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/android/videomaker/LooperShowView;->aNj:Lcom/android/videomaker/b;

    invoke-virtual {v2}, Lcom/android/videomaker/b;->baa()Lcom/android/videomaker/i;

    move-result-object v2

    .line 101
    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/android/videomaker/i;->bch()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 102
    invoke-virtual {v2}, Lcom/android/videomaker/i;->bch()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 103
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    sub-int/2addr v0, v3

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 104
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 103
    invoke-virtual {p1, v2, v0, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 97
    :cond_2e
    return-void
.end method

.method private bdO()V
    .registers 2

    .prologue
    .line 112
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/videomaker/LooperShowView;->setDrawingCacheEnabled(Z)V

    .line 113
    new-instance v0, Lcom/android/videomaker/A;

    invoke-direct {v0, p0}, Lcom/android/videomaker/A;-><init>(Lcom/android/videomaker/LooperShowView;)V

    iput-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNi:Landroid/os/Handler;

    .line 111
    return-void
.end method

.method static synthetic bdP(Lcom/android/videomaker/LooperShowView;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNi:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic bdQ(Lcom/android/videomaker/LooperShowView;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/videomaker/LooperShowView;->aNk:J

    return-wide v0
.end method


# virtual methods
.method public bdK(IJ)V
    .registers 8

    .prologue
    const/4 v1, 0x1

    .line 56
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNj:Lcom/android/videomaker/b;

    if-nez v0, :cond_6

    return-void

    .line 57
    :cond_6
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNj:Lcom/android/videomaker/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b;->start()V

    .line 58
    iput-wide p2, p0, Lcom/android/videomaker/LooperShowView;->aNk:J

    .line 59
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNi:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 60
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNi:Landroid/os/Handler;

    iget-wide v2, p0, Lcom/android/videomaker/LooperShowView;->aNk:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    return-void
.end method

.method public bdL(Ljava/util/ArrayList;II)V
    .registers 6

    .prologue
    .line 47
    new-instance v0, Lcom/android/videomaker/b;

    invoke-direct {v0, p1}, Lcom/android/videomaker/b;-><init>(Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNj:Lcom/android/videomaker/b;

    .line 48
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNj:Lcom/android/videomaker/b;

    new-instance v1, Lcom/android/videomaker/p;

    invoke-direct {v1, p2, p3}, Lcom/android/videomaker/p;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/android/videomaker/b;->bac(Lcom/android/videomaker/p;)V

    .line 42
    return-void
.end method

.method public bdM()Lcom/android/videomaker/b;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNj:Lcom/android/videomaker/b;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/videomaker/LooperShowView;->bdN(Landroid/graphics/Canvas;)V

    .line 81
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNi:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 65
    iget-object v0, p0, Lcom/android/videomaker/LooperShowView;->aNj:Lcom/android/videomaker/b;

    invoke-virtual {v0}, Lcom/android/videomaker/b;->stop()V

    .line 63
    return-void
.end method
