.class public Lcom/android/common/ui/NubiaProgressWheel;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private Ch:I

.field private Ci:I

.field private Cj:I

.field private Ck:Landroid/os/Handler;

.field private Cl:Z

.field private Cm:I

.field private Cn:Ljava/lang/Boolean;

.field private Co:D

.field private Cp:Landroid/graphics/Paint;

.field private Cq:Ljava/lang/Runnable;

.field private Cr:D

.field private Cs:Ljava/lang/Thread;

.field private Ct:I

.field private Cu:I

.field private Cv:Landroid/graphics/Paint;

.field private Cw:D

.field private Cx:J

.field private Cy:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8

    .prologue
    const/16 v1, 0x60

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    iput v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    .line 22
    iput v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    .line 23
    iput v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    .line 24
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    rsub-int/lit8 v0, v0, 0x60

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    .line 25
    iput-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    .line 26
    iput-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    .line 28
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    .line 29
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    rsub-int/lit8 v0, v0, 0x60

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    .line 30
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cx:J

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    .line 33
    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cr:D

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cn:Ljava/lang/Boolean;

    .line 37
    iput-boolean v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    .line 38
    new-instance v0, Lcom/android/common/ui/bo;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bo;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ck:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/common/ui/bp;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bp;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cq:Ljava/lang/Runnable;

    .line 90
    invoke-direct {p0}, Lcom/android/common/ui/NubiaProgressWheel;->FV()V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 9

    .prologue
    const/16 v1, 0x60

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 94
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    iput v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    .line 22
    iput v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    .line 23
    iput v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    .line 24
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    rsub-int/lit8 v0, v0, 0x60

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    .line 25
    iput-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    .line 26
    iput-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    .line 28
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    .line 29
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    rsub-int/lit8 v0, v0, 0x60

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    .line 30
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cx:J

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    .line 33
    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cr:D

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cn:Ljava/lang/Boolean;

    .line 37
    iput-boolean v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    .line 38
    new-instance v0, Lcom/android/common/ui/bo;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bo;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ck:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/common/ui/bp;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bp;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cq:Ljava/lang/Runnable;

    .line 95
    invoke-direct {p0}, Lcom/android/common/ui/NubiaProgressWheel;->FV()V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    .prologue
    const/16 v1, 0x60

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    iput v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    .line 21
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    .line 22
    iput v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    .line 23
    iput v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    .line 24
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    rsub-int/lit8 v0, v0, 0x60

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    .line 25
    iput-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    .line 26
    iput-wide v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    .line 28
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    .line 29
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    rsub-int/lit8 v0, v0, 0x60

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    .line 30
    const-wide/16 v0, 0x1e

    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cx:J

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    .line 33
    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cr:D

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cn:Ljava/lang/Boolean;

    .line 37
    iput-boolean v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    .line 38
    new-instance v0, Lcom/android/common/ui/bo;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bo;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ck:Landroid/os/Handler;

    .line 56
    new-instance v0, Lcom/android/common/ui/bp;

    invoke-direct {v0, p0}, Lcom/android/common/ui/bp;-><init>(Lcom/android/common/ui/NubiaProgressWheel;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cq:Ljava/lang/Runnable;

    .line 100
    invoke-direct {p0}, Lcom/android/common/ui/NubiaProgressWheel;->FV()V

    .line 98
    return-void
.end method

.method private FV()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 104
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 105
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    const v1, 0x3fa66666    # 1.3f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 106
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 107
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 109
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 111
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 112
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 103
    return-void
.end method

.method static synthetic FW(Lcom/android/common/ui/NubiaProgressWheel;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    return v0
.end method

.method static synthetic FX(Lcom/android/common/ui/NubiaProgressWheel;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cn:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic FY(Lcom/android/common/ui/NubiaProgressWheel;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    return-wide v0
.end method

.method static synthetic FZ(Lcom/android/common/ui/NubiaProgressWheel;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cr:D

    return-wide v0
.end method

.method static synthetic Ga(Lcom/android/common/ui/NubiaProgressWheel;)D
    .registers 3

    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    return-wide v0
.end method

.method static synthetic Gb(Lcom/android/common/ui/NubiaProgressWheel;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cx:J

    return-wide v0
.end method

.method static synthetic Gc(Lcom/android/common/ui/NubiaProgressWheel;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    iput-object p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cn:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic Gd(Lcom/android/common/ui/NubiaProgressWheel;D)D
    .registers 4

    iput-wide p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    return-wide p1
.end method

.method static synthetic Ge(Lcom/android/common/ui/NubiaProgressWheel;D)D
    .registers 4

    iput-wide p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cr:D

    return-wide p1
.end method

.method static synthetic Gf(Lcom/android/common/ui/NubiaProgressWheel;D)D
    .registers 4

    iput-wide p1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    return-wide p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 14

    .prologue
    const/4 v6, 0x0

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    .line 117
    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cn:Ljava/lang/Boolean;

    monitor-enter v1

    .line 118
    const/4 v0, 0x0

    :try_start_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cn:Ljava/lang/Boolean;
    :try_end_10
    .catchall {:try_start_a .. :try_end_10} :catchall_fa

    monitor-exit v1

    .line 120
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    if-nez v0, :cond_4f

    .line 121
    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    .line 122
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    .line 123
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    .line 124
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    iget v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    .line 125
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    iget v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    .line 126
    const-string/jumbo v0, "NubiaProgressWheel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mViewR = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cy:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :cond_4f
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 129
    iget-boolean v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    if-eqz v0, :cond_9f

    .line 130
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    const-wide/high16 v2, 0x4018000000000000L    # 6.0

    mul-double/2addr v0, v2

    mul-double v4, v0, v10

    .line 131
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 132
    iget v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    iget v3, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 131
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 133
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 134
    iget v3, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cu:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    .line 133
    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 134
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    int-to-float v0, v0

    .line 135
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    int-to-float v7, v7

    mul-float/2addr v3, v7

    .line 134
    add-float/2addr v3, v0

    .line 136
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ct:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    .line 137
    iget-object v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cv:Landroid/graphics/Paint;

    move-object v0, p1

    .line 131
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 139
    :cond_9f
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cr:D

    const-wide v2, 0x3fd3333340000000L    # 0.30000001192092896

    cmpl-double v0, v0, v2

    if-nez v0, :cond_fd

    .line 140
    :goto_aa
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    double-to-int v0, v0

    if-ge v6, v0, :cond_152

    .line 141
    mul-int/lit8 v0, v6, 0x6

    int-to-double v0, v0

    mul-double v4, v0, v10

    .line 142
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 143
    iget v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    iget v3, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 142
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 143
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 144
    iget v3, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    .line 143
    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 144
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 145
    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    int-to-float v7, v7

    .line 144
    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    .line 145
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    .line 146
    iget-object v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    move-object v0, p1

    .line 142
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 140
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_aa

    .line 117
    :catchall_fa
    move-exception v0

    monitor-exit v1

    throw v0

    .line 149
    :cond_fd
    const/16 v0, 0x3c

    move v6, v0

    :goto_100
    iget-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    double-to-int v0, v0

    rsub-int/lit8 v0, v0, 0x3c

    if-le v6, v0, :cond_152

    .line 150
    mul-int/lit8 v0, v6, 0x6

    int-to-double v0, v0

    mul-double v4, v0, v10

    .line 151
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v1, v2

    .line 152
    iget v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    iget v3, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 151
    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 152
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 153
    iget v3, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cm:I

    add-int/2addr v3, v7

    int-to-float v3, v3

    .line 152
    mul-float/2addr v2, v3

    sub-float v2, v0, v2

    .line 153
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ci:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    double-to-float v3, v8

    .line 154
    iget v7, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    int-to-float v7, v7

    .line 153
    mul-float/2addr v3, v7

    add-float/2addr v3, v0

    .line 154
    iget v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cj:I

    int-to-float v0, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    iget v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ch:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    sub-float v4, v0, v4

    .line 155
    iget-object v5, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cp:Landroid/graphics/Paint;

    move-object v0, p1

    .line 151
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_100

    .line 116
    :cond_152
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .registers 3

    .prologue
    .line 194
    if-eqz p1, :cond_9

    iget-boolean v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    if-eqz v0, :cond_9

    .line 195
    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 197
    :cond_9
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 193
    return-void
.end method

.method public start()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x0

    .line 161
    const-string/jumbo v0, "NubiaProgressWheel"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 163
    const-string/jumbo v0, "NubiaProgressWheel"

    const-string/jumbo v1, "start  mThread isAlive"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/android/common/ui/NubiaProgressWheel;->stop()V

    .line 166
    :try_start_23
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_28
    .catch Ljava/lang/InterruptedException; {:try_start_23 .. :try_end_28} :catch_45

    .line 172
    :cond_28
    :goto_28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    .line 173
    const-wide v0, 0x3fd3333340000000L    # 0.30000001192092896

    iput-wide v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cr:D

    .line 174
    iput-wide v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    .line 175
    iput-wide v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    .line 176
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cq:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    .line 177
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cs:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 160
    return-void

    .line 167
    :catch_45
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_28
.end method

.method public stop()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 181
    const-string/jumbo v0, "NubiaProgressWheel"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iput-boolean v4, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cl:Z

    .line 183
    iput-wide v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Co:D

    .line 184
    iput-wide v2, p0, Lcom/android/common/ui/NubiaProgressWheel;->Cw:D

    .line 185
    iget-object v0, p0, Lcom/android/common/ui/NubiaProgressWheel;->Ck:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 180
    return-void
.end method
