.class public Lcom/android/common/ui/MultiFunctionImageView;
.super Landroid/widget/ImageView;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/F;
.implements Lcom/android/common/appService/G;


# instance fields
.field private Aa:Z

.field private Ab:Z

.field private Ac:Z

.field private Ad:Z

.field private Ae:Z

.field private Af:Lcom/android/common/ui/l;

.field private Ag:Lcom/android/common/ui/g;

.field private Ah:Lcom/android/common/ui/af;

.field private Ai:Lcom/android/common/ui/w;

.field private Aj:Lcom/android/common/ui/af;

.field private Ak:Lcom/android/common/ui/am;

.field private Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

.field private final TAG:Ljava/lang/String;

.field private zR:Lcom/android/common/ui/VideoAnimation$Color;

.field private zS:Lcom/android/common/ui/Z;

.field private zT:F

.field private zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

.field private zV:Lcom/android/common/ui/y;

.field private zW:Landroid/os/Handler;

.field private zX:Z

.field private zY:Z

.field private zZ:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 114
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 20
    const-string/jumbo v0, "MultiFunctionImageView"

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->TAG:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "MultiFunctionImageView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ab:Z

    .line 63
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 64
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 65
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zT:F

    .line 68
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ae:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->zX:Z

    .line 70
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zR:Lcom/android/common/ui/VideoAnimation$Color;

    .line 71
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    .line 72
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ac:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->zZ:Z

    .line 74
    new-instance v0, Lcom/android/common/ui/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/ui/ag;-><init>(Lcom/android/common/ui/MultiFunctionImageView;Lcom/android/common/ui/ag;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zW:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const-string/jumbo v0, "MultiFunctionImageView"

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->TAG:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "MultiFunctionImageView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ab:Z

    .line 63
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 64
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 65
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zT:F

    .line 68
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ae:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->zX:Z

    .line 70
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zR:Lcom/android/common/ui/VideoAnimation$Color;

    .line 71
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    .line 72
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ac:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->zZ:Z

    .line 74
    new-instance v0, Lcom/android/common/ui/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/ui/ag;-><init>(Lcom/android/common/ui/MultiFunctionImageView;Lcom/android/common/ui/ag;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zW:Landroid/os/Handler;

    .line 95
    sget-object v0, Lcom/android/camera/k;->apk:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 96
    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iget v1, v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->value:I

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 97
    invoke-static {v1}, Lcom/android/common/ui/MultiFunctionImageView$Function;->ET(I)Lcom/android/common/ui/MultiFunctionImageView$Function;

    move-result-object v1

    .line 98
    sget-object v2, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-eq v1, v2, :cond_53

    .line 99
    sget-object v2, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne v1, v2, :cond_8e

    .line 100
    :cond_53
    iput-object v1, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 106
    :cond_55
    :goto_55
    sget-object v2, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    iget v2, v2, Lcom/android/common/ui/VideoAnimation$Color;->value:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 107
    invoke-static {v2}, Lcom/android/common/ui/VideoAnimation$Color;->xt(I)Lcom/android/common/ui/VideoAnimation$Color;

    move-result-object v2

    .line 108
    iput-object v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->zR:Lcom/android/common/ui/VideoAnimation$Color;

    .line 109
    const-string/jumbo v2, "MultiFunctionImageView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "init Function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " Color "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->zR:Lcom/android/common/ui/VideoAnimation$Color;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    return-void

    .line 101
    :cond_8e
    sget-object v2, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne v1, v2, :cond_95

    .line 102
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    goto :goto_55

    .line 103
    :cond_95
    sget-object v2, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne v1, v2, :cond_55

    .line 104
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    goto :goto_55
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const-string/jumbo v0, "MultiFunctionImageView"

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->TAG:Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "MultiFunctionImageView"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ab:Z

    .line 63
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 64
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 65
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    .line 66
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    .line 67
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zT:F

    .line 68
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ae:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->zX:Z

    .line 70
    sget-object v0, Lcom/android/common/ui/VideoAnimation$Color;->sz:Lcom/android/common/ui/VideoAnimation$Color;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zR:Lcom/android/common/ui/VideoAnimation$Color;

    .line 71
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    .line 72
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ac:Z

    .line 73
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->zZ:Z

    .line 74
    new-instance v0, Lcom/android/common/ui/ag;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/common/ui/ag;-><init>(Lcom/android/common/ui/MultiFunctionImageView;Lcom/android/common/ui/ag;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zW:Landroid/os/Handler;

    .line 88
    return-void
.end method

.method private EK(Landroid/graphics/Canvas;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 346
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EP()Lcom/android/common/ui/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/w;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 347
    const-wide/16 v0, 0x19

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 345
    :cond_10
    :goto_10
    return-void

    .line 348
    :cond_11
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    if-eqz v0, :cond_10

    .line 349
    const-string/jumbo v0, "MultiFunctionImageView"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    invoke-interface {v0}, Lcom/android/common/ui/af;->EU()V

    .line 351
    iput-object v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    goto :goto_10
.end method

.method private EL()Lcom/android/common/ui/Z;
    .registers 3

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zS:Lcom/android/common/ui/Z;

    if-nez v0, :cond_f

    .line 423
    new-instance v0, Lcom/android/common/ui/Z;

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/Z;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zS:Lcom/android/common/ui/Z;

    .line 425
    :cond_f
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zS:Lcom/android/common/ui/Z;

    return-object v0
.end method

.method private EM()Lcom/android/common/ui/y;
    .registers 3

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zV:Lcom/android/common/ui/y;

    if-nez v0, :cond_f

    .line 409
    new-instance v0, Lcom/android/common/ui/y;

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/y;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zV:Lcom/android/common/ui/y;

    .line 411
    :cond_f
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zV:Lcom/android/common/ui/y;

    return-object v0
.end method

.method private EN()Lcom/android/common/ui/l;
    .registers 3

    .prologue
    .line 436
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Af:Lcom/android/common/ui/l;

    if-nez v0, :cond_f

    .line 437
    new-instance v0, Lcom/android/common/ui/l;

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/l;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Af:Lcom/android/common/ui/l;

    .line 439
    :cond_f
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Af:Lcom/android/common/ui/l;

    return-object v0
.end method

.method private EO()Lcom/android/common/ui/g;
    .registers 3

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ag:Lcom/android/common/ui/g;

    if-nez v0, :cond_f

    .line 395
    new-instance v0, Lcom/android/common/ui/g;

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/g;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ag:Lcom/android/common/ui/g;

    .line 397
    :cond_f
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ag:Lcom/android/common/ui/g;

    return-object v0
.end method

.method private EP()Lcom/android/common/ui/w;
    .registers 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ai:Lcom/android/common/ui/w;

    if-nez v0, :cond_16

    .line 444
    new-instance v0, Lcom/android/common/ui/w;

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/w;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ai:Lcom/android/common/ui/w;

    .line 445
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ai:Lcom/android/common/ui/w;

    iget-object v1, p0, Lcom/android/common/ui/MultiFunctionImageView;->zR:Lcom/android/common/ui/VideoAnimation$Color;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/w;->xl(Lcom/android/common/ui/VideoAnimation$Color;)V

    .line 447
    :cond_16
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ai:Lcom/android/common/ui/w;

    return-object v0
.end method

.method private EQ()Lcom/android/common/ui/am;
    .registers 3

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ak:Lcom/android/common/ui/am;

    if-nez v0, :cond_f

    .line 388
    new-instance v0, Lcom/android/common/ui/am;

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/ui/am;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ak:Lcom/android/common/ui/am;

    .line 390
    :cond_f
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ak:Lcom/android/common/ui/am;

    return-object v0
.end method

.method private ER(J)V
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 356
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zW:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 357
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zW:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 355
    :cond_e
    return-void
.end method


# virtual methods
.method public EA()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 223
    const-string/jumbo v0, "MultiFunctionImageView"

    const-string/jumbo v1, "endAnimation"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    if-eqz v0, :cond_1e

    .line 225
    const-string/jumbo v0, "MultiFunctionImageView"

    const-string/jumbo v1, "onAnimationEnd"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    invoke-interface {v0}, Lcom/android/common/ui/af;->EU()V

    .line 227
    iput-object v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    .line 229
    :cond_1e
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EP()Lcom/android/common/ui/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/w;->cancel()V

    .line 231
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ah:Lcom/android/common/ui/af;

    if-eqz v0, :cond_30

    .line 232
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ah:Lcom/android/common/ui/af;

    invoke-interface {v0}, Lcom/android/common/ui/af;->EU()V

    .line 233
    iput-object v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ah:Lcom/android/common/ui/af;

    .line 235
    :cond_30
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 222
    return-void
.end method

.method public EB()V
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/common/ui/MultiFunctionImageView;->ED(Z)V

    .line 199
    return-void
.end method

.method public EC(Lcom/android/common/ui/af;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 212
    const-string/jumbo v0, "MultiFunctionImageView"

    const-string/jumbo v1, "playStopRecordAnimation"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iput-boolean v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ae:Z

    .line 214
    iput-object p1, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    .line 215
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EP()Lcom/android/common/ui/w;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/w;->xm(IZ)V

    .line 216
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 211
    return-void
.end method

.method public ED(Z)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 204
    const-string/jumbo v0, "MultiFunctionImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "playStartRecordAnimation (hideTheRing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iput-boolean p1, p0, Lcom/android/common/ui/MultiFunctionImageView;->zX:Z

    .line 206
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ae:Z

    .line 207
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EP()Lcom/android/common/ui/w;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/common/ui/w;->xm(IZ)V

    .line 208
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 203
    return-void
.end method

.method public EE()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 242
    const-string/jumbo v0, "MultiFunctionImageView"

    const-string/jumbo v1, "cancelAnimation"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    .line 244
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EP()Lcom/android/common/ui/w;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ui/w;->xm(IZ)V

    .line 245
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EP()Lcom/android/common/ui/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/w;->cancel()V

    .line 246
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 241
    return-void
.end method

.method public EF(Z)V
    .registers 2

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ac:Z

    .line 195
    return-void
.end method

.method public EG(FZ)V
    .registers 5

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    if-eqz v0, :cond_10

    .line 175
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EL()Lcom/android/common/ui/Z;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/Z;->Dn(FZ)V

    .line 176
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 173
    :cond_10
    return-void
.end method

.method public EH(F)V
    .registers 4

    .prologue
    .line 163
    iput p1, p0, Lcom/android/common/ui/MultiFunctionImageView;->zT:F

    .line 164
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    if-eqz v0, :cond_12

    .line 165
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EM()Lcom/android/common/ui/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/y;->xH(F)V

    .line 166
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 168
    :cond_12
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    if-eqz v0, :cond_1d

    .line 169
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EL()Lcom/android/common/ui/Z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/Z;->Do(F)V

    .line 162
    :cond_1d
    return-void
.end method

.method public EI(FZ)V
    .registers 5

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    if-eqz v0, :cond_10

    .line 157
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EM()Lcom/android/common/ui/y;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/y;->xI(FZ)V

    .line 158
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 155
    :cond_10
    return-void
.end method

.method public EJ()Z
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aj:Lcom/android/common/ui/af;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public ES(IZLcom/android/common/ui/af;)V
    .registers 6

    .prologue
    .line 147
    iput-object p3, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ah:Lcom/android/common/ui/af;

    .line 148
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EO()Lcom/android/common/ui/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/common/ui/g;->vr(IZ)V

    .line 149
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 146
    return-void
.end method

.method public Ex(IZ)V
    .registers 4

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/common/ui/MultiFunctionImageView;->ES(IZLcom/android/common/ui/af;)V

    .line 143
    return-void
.end method

.method public Ey(Lcom/android/common/ui/MultiFunctionImageView$Function;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 133
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne p1, v0, :cond_f

    .line 134
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 140
    :cond_9
    :goto_9
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 132
    return-void

    .line 135
    :cond_f
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne p1, v0, :cond_16

    .line 136
    iput-boolean v1, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    goto :goto_9

    .line 137
    :cond_16
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne p1, v0, :cond_9

    .line 138
    iput-boolean v1, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    goto :goto_9
.end method

.method public Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V
    .registers 6

    .prologue
    const/4 v3, 0x1

    .line 119
    const-string/jumbo v0, "MultiFunctionImageView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFunction "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-eq p1, v0, :cond_23

    .line 121
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne p1, v0, :cond_2b

    .line 123
    :cond_23
    iput-object p1, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 129
    :cond_25
    :goto_25
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 118
    return-void

    .line 122
    :cond_2b
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-eq p1, v0, :cond_23

    .line 124
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne p1, v0, :cond_36

    .line 125
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    goto :goto_25

    .line 126
    :cond_36
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne p1, v0, :cond_25

    .line 127
    iput-boolean v3, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    goto :goto_25
.end method

.method protected drawableStateChanged()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 318
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zZ:Z

    if-nez v0, :cond_19

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 319
    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zZ:Z

    .line 320
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 326
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 327
    return-void

    .line 328
    :cond_19
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zZ:Z

    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 333
    :cond_23
    :goto_23
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    if-nez v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 334
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    .line 335
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EN()Lcom/android/common/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/l;->vE()V

    .line 336
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    .line 342
    :cond_40
    :goto_40
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 317
    return-void

    .line 329
    :cond_44
    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zZ:Z

    .line 330
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    goto :goto_23

    .line 337
    :cond_4e
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    if-eqz v0, :cond_40

    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isPressed()Z

    move-result v0

    if-nez v0, :cond_40

    .line 338
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    .line 339
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EN()Lcom/android/common/ui/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/l;->vF()V

    .line 340
    invoke-direct {p0, v2, v3}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    goto :goto_40
.end method

.method public mF(F)V
    .registers 2

    .prologue
    .line 187
    invoke-virtual {p0, p1}, Lcom/android/common/ui/MultiFunctionImageView;->EH(F)V

    .line 186
    return-void
.end method

.method public mG(F)V
    .registers 3

    .prologue
    .line 182
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/common/ui/MultiFunctionImageView;->EI(FZ)V

    .line 181
    return-void
.end method

.method public mH(F)V
    .registers 3

    .prologue
    .line 192
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/common/ui/MultiFunctionImageView;->EG(FZ)V

    .line 191
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    const-wide/16 v4, 0x19

    .line 261
    invoke-virtual {p0}, Lcom/android/common/ui/MultiFunctionImageView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    .line 262
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 260
    :cond_c
    :goto_c
    return-void

    .line 263
    :cond_d
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne v0, v1, :cond_3b

    .line 264
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 265
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EO()Lcom/android/common/ui/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/g;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 266
    invoke-direct {p0, v4, v5}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    goto :goto_c

    .line 267
    :cond_25
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ah:Lcom/android/common/ui/af;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EO()Lcom/android/common/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ui/g;->vp()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 268
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ah:Lcom/android/common/ui/af;

    invoke-interface {v0}, Lcom/android/common/ui/af;->EU()V

    .line 269
    iput-object v2, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ah:Lcom/android/common/ui/af;

    goto :goto_c

    .line 271
    :cond_3b
    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Al:Lcom/android/common/ui/MultiFunctionImageView$Function;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne v0, v1, :cond_74

    .line 272
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 274
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 275
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EQ()Lcom/android/common/ui/am;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/ui/am;->FO(II)Landroid/graphics/Path;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 276
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ae:Z

    if-eqz v0, :cond_70

    .line 277
    invoke-direct {p0, p1}, Lcom/android/common/ui/MultiFunctionImageView;->EK(Landroid/graphics/Canvas;)V

    .line 281
    :goto_62
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 283
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EQ()Lcom/android/common/ui/am;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/am;->draw(Landroid/graphics/Canvas;)Z

    .line 284
    invoke-direct {p0, v4, v5}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    goto :goto_c

    .line 279
    :cond_70
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_62

    .line 285
    :cond_74
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zY:Z

    if-eqz v0, :cond_a9

    .line 286
    iget v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zT:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42480000    # 50.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_96

    .line 287
    iget v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zT:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x42200000    # 40.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a9

    iget-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    if-ne v0, v1, :cond_a9

    .line 288
    :cond_96
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ap:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 289
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EL()Lcom/android/common/ui/Z;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/Z;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 290
    invoke-direct {p0, v4, v5}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    goto/16 :goto_c

    .line 292
    :cond_a9
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Aa:Z

    if-eqz v0, :cond_c0

    .line 295
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Ao:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 296
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EM()Lcom/android/common/ui/y;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/y;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 297
    invoke-direct {p0, v4, v5}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    goto/16 :goto_c

    .line 299
    :cond_c0
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ae:Z

    if-eqz v0, :cond_d0

    .line 300
    invoke-direct {p0, p1}, Lcom/android/common/ui/MultiFunctionImageView;->EK(Landroid/graphics/Canvas;)V

    .line 301
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zX:Z

    if-nez v0, :cond_c

    .line 302
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_c

    .line 304
    :cond_d0
    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ad:Z

    if-eqz v0, :cond_eb

    iget-boolean v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->Ac:Z

    if-eqz v0, :cond_eb

    .line 305
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 306
    invoke-direct {p0}, Lcom/android/common/ui/MultiFunctionImageView;->EN()Lcom/android/common/ui/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/ui/l;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 307
    invoke-direct {p0, v4, v5}, Lcom/android/common/ui/MultiFunctionImageView;->ER(J)V

    goto/16 :goto_c

    .line 310
    :cond_eb
    sget-object v0, Lcom/android/common/ui/MultiFunctionImageView$Function;->Aq:Lcom/android/common/ui/MultiFunctionImageView$Function;

    iput-object v0, p0, Lcom/android/common/ui/MultiFunctionImageView;->zU:Lcom/android/common/ui/MultiFunctionImageView$Function;

    .line 311
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto/16 :goto_c
.end method
