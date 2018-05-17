.class public Lcom/android/slowshutter/a;
.super Lcom/android/common/o/l;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/p;
.implements Lcom/android/common/u;


# instance fields
.field private final axL:I

.field private final axM:I

.field private axN:Z

.field private axO:Landroid/widget/RelativeLayout;

.field private axP:Lcom/android/common/ui/RotateImageView;

.field private axQ:Landroid/widget/ImageView;

.field private axR:Lcom/android/common/n;

.field private axS:Lcom/android/common/t;

.field private axT:Z

.field private axU:Z

.field private axV:I

.field private axW:I

.field private axX:Lcom/android/slowshutter/c;

.field private axY:I

.field private axZ:Lcom/android/common/ui/MultiFunctionImageView;

.field private aya:Landroid/widget/RelativeLayout;

.field private ayb:Lcom/android/common/ui/RotateLayout;

.field private ayc:Lcom/android/common/appService/z;

.field private ayd:Lcom/android/slowshutter/b;


# direct methods
.method public constructor <init>()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 81
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 55
    iput-object v5, p0, Lcom/android/slowshutter/a;->aya:Landroid/widget/RelativeLayout;

    .line 60
    iput v4, p0, Lcom/android/slowshutter/a;->axY:I

    .line 61
    iput-boolean v4, p0, Lcom/android/slowshutter/a;->axN:Z

    .line 62
    iput-object v5, p0, Lcom/android/slowshutter/a;->axR:Lcom/android/common/n;

    .line 67
    const/16 v0, 0xc6

    const/16 v1, 0xcb

    const/16 v2, 0xd1

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axL:I

    .line 68
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axM:I

    .line 69
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axV:I

    .line 70
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axW:I

    .line 72
    iput-boolean v4, p0, Lcom/android/slowshutter/a;->axU:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/slowshutter/a;->axT:Z

    .line 75
    iput-object v5, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    .line 252
    new-instance v0, Lcom/android/slowshutter/b;

    invoke-direct {v0, p0}, Lcom/android/slowshutter/b;-><init>(Lcom/android/slowshutter/a;)V

    iput-object v0, p0, Lcom/android/slowshutter/a;->ayd:Lcom/android/slowshutter/b;

    .line 80
    return-void
.end method

.method public constructor <init>(I)V
    .registers 8

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/16 v3, 0xff

    .line 78
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 55
    iput-object v5, p0, Lcom/android/slowshutter/a;->aya:Landroid/widget/RelativeLayout;

    .line 60
    iput v4, p0, Lcom/android/slowshutter/a;->axY:I

    .line 61
    iput-boolean v4, p0, Lcom/android/slowshutter/a;->axN:Z

    .line 62
    iput-object v5, p0, Lcom/android/slowshutter/a;->axR:Lcom/android/common/n;

    .line 67
    const/16 v0, 0xc6

    const/16 v1, 0xcb

    const/16 v2, 0xd1

    invoke-static {v3, v0, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axL:I

    .line 68
    invoke-static {v3, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axM:I

    .line 69
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axV:I

    .line 70
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/android/common/h;->aoT(I)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axW:I

    .line 72
    iput-boolean v4, p0, Lcom/android/slowshutter/a;->axU:Z

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/slowshutter/a;->axT:Z

    .line 75
    iput-object v5, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    .line 252
    new-instance v0, Lcom/android/slowshutter/b;

    invoke-direct {v0, p0}, Lcom/android/slowshutter/b;-><init>(Lcom/android/slowshutter/a;)V

    iput-object v0, p0, Lcom/android/slowshutter/a;->ayd:Lcom/android/slowshutter/b;

    .line 77
    return-void
.end method

.method private aMJ()V
    .registers 3

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/slowshutter/a;->aMV()V

    .line 225
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    new-instance v1, Lcom/android/slowshutter/h;

    invoke-direct {v1, p0}, Lcom/android/slowshutter/h;-><init>(Lcom/android/slowshutter/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pP(Lcom/android/common/appService/L;)V

    .line 223
    return-void
.end method

.method private aMK()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/slowshutter/a;->aMJ()V

    .line 158
    return-void
.end method

.method private aML(FI)Z
    .registers 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 215
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_d

    move v2, v0

    .line 216
    :goto_9
    if-lez p2, :cond_f

    :goto_b
    or-int/2addr v0, v2

    .line 217
    return v0

    :cond_d
    move v2, v1

    .line 215
    goto :goto_9

    :cond_f
    move v0, v1

    .line 216
    goto :goto_b
.end method

.method private aMM(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 145
    const v0, 0x7f10018c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/slowshutter/a;->aya:Landroid/widget/RelativeLayout;

    .line 146
    iget-object v0, p0, Lcom/android/slowshutter/a;->aya:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 147
    const v0, 0x7f100047

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/slowshutter/a;->axO:Landroid/widget/RelativeLayout;

    .line 148
    const v0, 0x7f10018d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateImageView;

    iput-object v0, p0, Lcom/android/slowshutter/a;->axP:Lcom/android/common/ui/RotateImageView;

    .line 149
    iget-object v0, p0, Lcom/android/slowshutter/a;->axO:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/android/slowshutter/g;

    invoke-direct {v1, p0}, Lcom/android/slowshutter/g;-><init>(Lcom/android/slowshutter/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method private aMN(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 136
    new-instance v0, Lcom/android/common/t;

    invoke-virtual {p0}, Lcom/android/slowshutter/a;->aln()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/common/t;-><init>(Landroid/view/View;Landroid/content/SharedPreferences;Lcom/android/common/u;)V

    iput-object v0, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/slowshutter/a;->aMM(Landroid/view/View;)V

    .line 138
    const v0, 0x7f10018f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/MultiFunctionImageView;

    iput-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    .line 140
    const v0, 0x7f1000ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/slowshutter/a;->axQ:Landroid/widget/ImageView;

    .line 141
    const v0, 0x7f100196

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    iput-object v0, p0, Lcom/android/slowshutter/a;->ayb:Lcom/android/common/ui/RotateLayout;

    .line 142
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayb:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 135
    return-void
.end method

.method public static aMP()Lcom/android/slowshutter/a;
    .registers 2

    .prologue
    .line 163
    new-instance v0, Lcom/android/slowshutter/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/slowshutter/a;-><init>(I)V

    .line 164
    return-object v0
.end method

.method private aMS(FI)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/slowshutter/a;->axQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayb:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/android/slowshutter/a;->aya:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 257
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 258
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->alr()V

    .line 260
    new-instance v0, Lcom/android/slowshutter/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/slowshutter/c;-><init>(Lcom/android/slowshutter/a;FI)V

    iput-object v0, p0, Lcom/android/slowshutter/a;->axX:Lcom/android/slowshutter/c;

    .line 261
    iget-object v0, p0, Lcom/android/slowshutter/a;->axX:Lcom/android/slowshutter/c;

    invoke-virtual {v0}, Lcom/android/slowshutter/c;->start()V

    .line 253
    return-void
.end method

.method private aMU()V
    .registers 3

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/slowshutter/a;->axR:Lcom/android/common/n;

    if-eqz v0, :cond_17

    .line 426
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_17

    .line 427
    iget-object v0, p0, Lcom/android/slowshutter/a;->axR:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->stop()V

    .line 424
    :cond_17
    return-void
.end method

.method private aMV()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 174
    iget-object v0, p0, Lcom/android/slowshutter/a;->axX:Lcom/android/slowshutter/c;

    if-nez v0, :cond_6

    return-void

    .line 176
    :cond_6
    iget-object v0, p0, Lcom/android/slowshutter/a;->axX:Lcom/android/slowshutter/c;

    invoke-virtual {v0}, Lcom/android/slowshutter/c;->aNh()V

    .line 178
    :try_start_b
    iget-object v0, p0, Lcom/android/slowshutter/a;->axX:Lcom/android/slowshutter/c;

    invoke-virtual {v0}, Lcom/android/slowshutter/c;->join()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_10} :catch_19

    .line 182
    :goto_10
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayd:Lcom/android/slowshutter/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/slowshutter/b;->removeMessages(I)V

    .line 183
    iput-object v4, p0, Lcom/android/slowshutter/a;->axX:Lcom/android/slowshutter/c;

    .line 173
    return-void

    .line 179
    :catch_19
    move-exception v0

    .line 180
    const-string/jumbo v1, "SlowShutterFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "InterruptedException when mProgressThread.join() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method static synthetic aMW(Lcom/android/slowshutter/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/slowshutter/a;->axN:Z

    return v0
.end method

.method static synthetic aMX(Lcom/android/slowshutter/a;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic aMY(Lcom/android/slowshutter/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/slowshutter/a;->axU:Z

    return v0
.end method

.method static synthetic aMZ(Lcom/android/slowshutter/a;)Lcom/android/common/ui/MultiFunctionImageView;
    .registers 2

    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    return-object v0
.end method

.method static synthetic aNa(Lcom/android/slowshutter/a;)Lcom/android/common/appService/z;
    .registers 2

    iget-object v0, p0, Lcom/android/slowshutter/a;->ayc:Lcom/android/common/appService/z;

    return-object v0
.end method

.method static synthetic aNb(Lcom/android/slowshutter/a;)Lcom/android/slowshutter/b;
    .registers 2

    iget-object v0, p0, Lcom/android/slowshutter/a;->ayd:Lcom/android/slowshutter/b;

    return-object v0
.end method

.method static synthetic aNc(Lcom/android/slowshutter/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/slowshutter/a;->aMK()V

    return-void
.end method

.method static synthetic aNd(Lcom/android/slowshutter/a;Lcom/android/common/camerastate/DeviceState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/slowshutter/a;->als(Lcom/android/common/camerastate/DeviceState;)V

    return-void
.end method

.method static synthetic aNe(Lcom/android/slowshutter/a;Lcom/android/common/camerastate/FunctionState;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/slowshutter/a;->alt(Lcom/android/common/camerastate/FunctionState;)V

    return-void
.end method

.method static synthetic aNf(Lcom/android/slowshutter/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/slowshutter/a;->aMU()V

    return-void
.end method


# virtual methods
.method public aMO()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 372
    iget-object v1, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    .line 373
    sget-object v2, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    .line 372
    if-eq v1, v2, :cond_1d

    .line 374
    iget-object v1, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_31

    .line 375
    :cond_1d
    :goto_1d
    iget-object v1, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/setting/o;->XK()Z

    move-result v1

    if-nez v1, :cond_2b

    .line 376
    if-eqz v0, :cond_33

    .line 379
    :cond_2b
    iget-object v0, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 371
    :goto_30
    return-void

    .line 374
    :cond_31
    const/4 v0, 0x0

    goto :goto_1d

    .line 377
    :cond_33
    iget-object v0, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    goto :goto_30
.end method

.method public aMQ(Lcom/android/common/n;)V
    .registers 2

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/slowshutter/a;->axR:Lcom/android/common/n;

    .line 219
    return-void
.end method

.method public aMR(Z)V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    if-nez v0, :cond_5

    return-void

    .line 278
    :cond_5
    if-eqz p1, :cond_1b

    .line 279
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayd:Lcom/android/slowshutter/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/slowshutter/b;->removeMessages(I)V

    .line 280
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 276
    :goto_1a
    return-void

    .line 283
    :cond_1b
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    goto :goto_1a
.end method

.method aMT()V
    .registers 5

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 265
    iget-boolean v0, p0, Lcom/android/slowshutter/a;->axU:Z

    if-nez v0, :cond_f

    .line 266
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_10

    :cond_f
    return-void

    .line 267
    :cond_10
    invoke-direct {p0}, Lcom/android/slowshutter/a;->aMV()V

    .line 268
    invoke-virtual {p0, v2}, Lcom/android/slowshutter/a;->aMR(Z)V

    .line 269
    iget-object v0, p0, Lcom/android/slowshutter/a;->axQ:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcom/android/slowshutter/a;->aya:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 271
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v3}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/android/slowshutter/a;->axZ:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    .line 273
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->alq()V

    .line 264
    return-void
.end method

.method public aip()V
    .registers 2

    .prologue
    .line 390
    iget-boolean v0, p0, Lcom/android/slowshutter/a;->adv:Z

    if-eqz v0, :cond_5

    .line 391
    return-void

    .line 393
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/slowshutter/a;->axN:Z

    .line 394
    iget-object v0, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    if-eqz v0, :cond_11

    .line 395
    iget-object v0, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->arx()V

    .line 389
    :cond_11
    return-void
.end method

.method public aiq()V
    .registers 2

    .prologue
    .line 401
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/slowshutter/a;->axN:Z

    .line 402
    iget-object v0, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    if-eqz v0, :cond_c

    .line 403
    iget-object v0, p0, Lcom/android/slowshutter/a;->axS:Lcom/android/common/t;

    invoke-virtual {v0}, Lcom/android/common/t;->show()V

    .line 400
    :cond_c
    return-void
.end method

.method protected ajt(IZ)V
    .registers 3

    .prologue
    .line 169
    invoke-super {p0, p1, p2}, Lcom/android/common/o/l;->ajt(IZ)V

    .line 170
    iput p1, p0, Lcom/android/slowshutter/a;->axY:I

    .line 168
    return-void
.end method

.method protected alq()V
    .registers 8

    .prologue
    const-wide/16 v2, -0x1

    .line 410
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_32

    .line 411
    iget-object v0, p0, Lcom/android/slowshutter/a;->ady:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_16
    :goto_16
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/e/h;

    .line 412
    instance-of v1, v0, Lcom/android/common/o/e;

    if-nez v1, :cond_2a

    .line 413
    instance-of v1, v0, Lcom/android/common/o/a;

    .line 412
    if-eqz v1, :cond_16

    .line 414
    :cond_2a
    if-eqz v0, :cond_16

    .line 415
    const/4 v1, 0x0

    move-wide v4, v2

    invoke-interface/range {v0 .. v5}, Lcom/android/common/e/h;->ZP(ZJJ)V

    goto :goto_16

    .line 420
    :cond_32
    invoke-super {p0}, Lcom/android/common/o/l;->alq()V

    .line 409
    :cond_35
    return-void
.end method

.method public arG()V
    .registers 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mI()V

    .line 384
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 297
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayb:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_12

    .line 298
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayb:Lcom/android/common/ui/RotateLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 299
    iput-boolean v2, p0, Lcom/android/slowshutter/a;->axT:Z

    .line 301
    :cond_12
    return v2
.end method

.method public mY([B)Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 289
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->aMT()V

    .line 290
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_17

    .line 291
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->pM(Z)V

    .line 293
    :cond_17
    return v2
.end method

.method public nD()Z
    .registers 4

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pM(Z)V

    .line 202
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->Xy()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pO()I

    move-result v1

    .line 204
    invoke-direct {p0, v0, v1}, Lcom/android/slowshutter/a;->aML(FI)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 205
    invoke-direct {p0, v0, v1}, Lcom/android/slowshutter/a;->aMS(FI)V

    .line 206
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_37

    .line 207
    iget-object v0, p0, Lcom/android/slowshutter/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pz(I)V

    .line 210
    :cond_37
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "slowshutter_1"

    const-string/jumbo v2, "SlowShutterFragment"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()Z
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 188
    iget-boolean v0, p0, Lcom/android/slowshutter/a;->axN:Z

    if-nez v0, :cond_1d

    .line 189
    iget-object v0, p0, Lcom/android/slowshutter/a;->axX:Lcom/android/slowshutter/c;

    if-eqz v0, :cond_1d

    .line 190
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_1d

    .line 191
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayc:Lcom/android/common/appService/z;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/z;->lL(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 192
    invoke-direct {p0}, Lcom/android/slowshutter/a;->aMJ()V

    .line 194
    :cond_1c
    return v2

    .line 196
    :cond_1d
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcom/android/common/o/l;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iget-boolean v0, p0, Lcom/android/slowshutter/a;->adu:Z

    if-eqz v0, :cond_8

    .line 101
    return-void

    .line 103
    :cond_8
    new-instance v0, Lcom/android/common/appService/z;

    invoke-virtual {p0}, Lcom/android/slowshutter/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/common/appService/z;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/slowshutter/a;->ayc:Lcom/android/common/appService/z;

    .line 104
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axV:I

    .line 105
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/slowshutter/a;->axW:I

    .line 98
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    .line 87
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 88
    iget-boolean v0, p0, Lcom/android/slowshutter/a;->adu:Z

    if-eqz v0, :cond_9

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_9
    const v0, 0x7f04006b

    .line 92
    const/4 v1, 0x0

    .line 91
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 93
    invoke-direct {p0, v0}, Lcom/android/slowshutter/a;->aMN(Landroid/view/View;)V

    .line 94
    return-object v0
.end method

.method public onPause()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-boolean v0, p0, Lcom/android/slowshutter/a;->adu:Z

    if-eqz v0, :cond_9

    .line 125
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 126
    return-void

    .line 128
    :cond_9
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->aMT()V

    .line 130
    iput-boolean v1, p0, Lcom/android/slowshutter/a;->axU:Z

    .line 131
    iget-object v0, p0, Lcom/android/slowshutter/a;->ayd:Lcom/android/slowshutter/b;

    invoke-virtual {v0, v1}, Lcom/android/slowshutter/b;->removeMessages(I)V

    .line 132
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 123
    return-void
.end method

.method public onResume()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 111
    iget-boolean v0, p0, Lcom/android/slowshutter/a;->adu:Z

    if-eqz v0, :cond_9

    .line 112
    return-void

    .line 114
    :cond_9
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/slowshutter/a;->akU(Z)V

    .line 115
    iput-boolean v1, p0, Lcom/android/slowshutter/a;->axU:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/slowshutter/a;->axN:Z

    .line 118
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->aMT()V

    .line 119
    invoke-virtual {p0}, Lcom/android/slowshutter/a;->aMO()V

    .line 109
    return-void
.end method
