.class public Lcom/android/common/setting/s;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private UA:Lcom/android/common/custom/v;

.field private UB:I

.field private UC:Ljava/lang/String;

.field private UD:Lcom/android/common/custom/v;

.field private UE:Ljava/lang/String;

.field private UF:Ljava/lang/String;

.field private UG:Lcom/android/common/cameradevice/p;

.field private UH:Ljava/util/List;

.field private UI:Ljava/util/List;

.field private UJ:Ljava/util/List;

.field private UK:Ljava/util/List;

.field private Uz:Lcom/android/common/custom/v;


# direct methods
.method public constructor <init>(Lcom/android/common/cameradevice/p;I)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object v0, p0, Lcom/android/common/setting/s;->UG:Lcom/android/common/cameradevice/p;

    .line 16
    iput-object v0, p0, Lcom/android/common/setting/s;->UK:Ljava/util/List;

    .line 17
    iput-object v0, p0, Lcom/android/common/setting/s;->UJ:Ljava/util/List;

    .line 18
    iput-object v0, p0, Lcom/android/common/setting/s;->UH:Ljava/util/List;

    .line 19
    iput-object v0, p0, Lcom/android/common/setting/s;->UI:Ljava/util/List;

    .line 21
    iput-object v0, p0, Lcom/android/common/setting/s;->UF:Ljava/lang/String;

    .line 22
    iput-object v0, p0, Lcom/android/common/setting/s;->UC:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/android/common/setting/s;->UE:Ljava/lang/String;

    .line 24
    iput-object v0, p0, Lcom/android/common/setting/s;->Uz:Lcom/android/common/custom/v;

    .line 25
    iput-object v0, p0, Lcom/android/common/setting/s;->UA:Lcom/android/common/custom/v;

    .line 26
    iput-object v0, p0, Lcom/android/common/setting/s;->UD:Lcom/android/common/custom/v;

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/setting/s;->UB:I

    .line 30
    iput-object p1, p0, Lcom/android/common/setting/s;->UG:Lcom/android/common/cameradevice/p;

    .line 31
    iput p2, p0, Lcom/android/common/setting/s;->UB:I

    .line 33
    iget-object v0, p0, Lcom/android/common/setting/s;->UG:Lcom/android/common/cameradevice/p;

    if-eqz v0, :cond_2a

    .line 34
    iget-object v0, p0, Lcom/android/common/setting/s;->UG:Lcom/android/common/cameradevice/p;

    invoke-direct {p0, v0}, Lcom/android/common/setting/s;->YL(Lcom/android/common/cameradevice/p;)V

    .line 29
    :cond_2a
    return-void
.end method

.method private YI(ZLjava/util/List;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 121
    const-wide/16 v0, 0x0

    .line 122
    if-eqz p1, :cond_7d

    .line 123
    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    .line 124
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    move-wide v2, v0

    .line 126
    :goto_1b
    const/4 v1, 0x0

    .line 127
    const/4 v0, 0x0

    .line 128
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v1

    move v1, v0

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 129
    const-wide/16 v8, 0x0

    cmpl-double v5, v2, v8

    if-eqz v5, :cond_4f

    .line 130
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v5

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 131
    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v5, v8, v10

    if-lez v5, :cond_4f

    move v0, v1

    move-object v1, v4

    :goto_4c
    move-object v4, v1

    move v1, v0

    goto :goto_23

    .line 133
    :cond_4f
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v7

    .line 134
    if-le v5, v1, :cond_7a

    move-object v1, v0

    move v0, v5

    .line 136
    goto :goto_4c

    .line 139
    :cond_59
    if-nez v4, :cond_5d

    const/4 v0, 0x0

    :goto_5c
    return-object v0

    :cond_5d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5c

    :cond_7a
    move v0, v1

    move-object v1, v4

    goto :goto_4c

    :cond_7d
    move-wide v2, v0

    goto :goto_1b
.end method

.method private YJ(ZLjava/util/List;)Ljava/lang/String;
    .registers 15

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    .line 144
    if-eqz p1, :cond_7f

    .line 145
    sget-object v0, Lcom/android/common/h;->ahr:Landroid/graphics/Point;

    .line 146
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    int-to-double v2, v1

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-double v0, v0

    div-double v0, v2, v0

    move-wide v2, v0

    .line 148
    :goto_1b
    const/4 v1, 0x0

    .line 149
    const v0, 0x7fffffff

    .line 150
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v1

    move v1, v0

    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 151
    const-wide/16 v8, 0x0

    cmpl-double v5, v2, v8

    if-eqz v5, :cond_51

    .line 152
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    int-to-double v8, v5

    iget v5, v0, Landroid/hardware/Camera$Size;->height:I

    int-to-double v10, v5

    div-double/2addr v8, v10

    .line 153
    sub-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(D)D

    move-result-wide v8

    const-wide v10, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpl-double v5, v8, v10

    if-lez v5, :cond_51

    move v0, v1

    move-object v1, v4

    :goto_4e
    move-object v4, v1

    move v1, v0

    goto :goto_25

    .line 155
    :cond_51
    iget v5, v0, Landroid/hardware/Camera$Size;->width:I

    iget v7, v0, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v5, v7

    .line 156
    if-ge v5, v1, :cond_7c

    move-object v1, v0

    move v0, v5

    .line 158
    goto :goto_4e

    .line 161
    :cond_5b
    if-nez v4, :cond_5f

    const/4 v0, 0x0

    :goto_5e
    return-object v0

    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, v4, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v4, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5e

    :cond_7c
    move v0, v1

    move-object v1, v4

    goto :goto_4e

    :cond_7f
    move-wide v2, v0

    goto :goto_1b
.end method

.method private YK([ILjava/util/List;)Lcom/android/common/custom/v;
    .registers 8

    .prologue
    const/4 v4, 0x0

    .line 165
    if-eqz p1, :cond_7

    .line 166
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    .line 167
    :cond_7
    return-object v4

    .line 169
    :cond_8
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 170
    const/4 v2, 0x0

    aget v2, p1, v2

    const/4 v3, 0x1

    aget v3, p1, v3

    invoke-static {v0, v2, v3}, Lcom/android/common/h;->apc(Landroid/hardware/Camera$Size;II)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 171
    new-instance v1, Lcom/android/common/custom/v;

    iget v2, v0, Landroid/hardware/Camera$Size;->width:I

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-direct {v1, v2, v0}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v1

    .line 174
    :cond_2e
    return-object v4
.end method

.method private YL(Lcom/android/common/cameradevice/p;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 87
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LS()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UK:Ljava/util/List;

    .line 88
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LQ()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UJ:Ljava/util/List;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/common/setting/s;->YN(Lcom/android/common/cameradevice/p;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UH:Ljava/util/List;

    .line 90
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LM()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UI:Ljava/util/List;

    .line 93
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adQ()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 94
    iget v0, p0, Lcom/android/common/setting/s;->UB:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v1

    if-ne v0, v1, :cond_3b

    .line 95
    iget-object v0, p0, Lcom/android/common/setting/s;->UI:Ljava/util/List;

    const-string/jumbo v1, "af-mapping"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_3b
    iget-object v0, p0, Lcom/android/common/setting/s;->UJ:Ljava/util/List;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/common/setting/s;->YI(ZLjava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UF:Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/common/setting/s;->UJ:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/android/common/setting/s;->YI(ZLjava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UC:Ljava/lang/String;

    .line 100
    iget-object v0, p0, Lcom/android/common/setting/s;->UJ:Ljava/util/List;

    invoke-direct {p0, v2, v0}, Lcom/android/common/setting/s;->YJ(ZLjava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UE:Ljava/lang/String;

    .line 101
    const/16 v0, 0xf00

    const/16 v1, 0x870

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/s;->UK:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/common/setting/s;->YK([ILjava/util/List;)Lcom/android/common/custom/v;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UA:Lcom/android/common/custom/v;

    .line 102
    const/16 v0, 0x780

    const/16 v1, 0x438

    filled-new-array {v0, v1}, [I

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/setting/s;->UK:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/common/setting/s;->YK([ILjava/util/List;)Lcom/android/common/custom/v;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->Uz:Lcom/android/common/custom/v;

    .line 103
    invoke-direct {p0, p1}, Lcom/android/common/setting/s;->YM(Lcom/android/common/cameradevice/p;)Lcom/android/common/custom/v;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/s;->UD:Lcom/android/common/custom/v;

    .line 86
    return-void
.end method

.method private YM(Lcom/android/common/cameradevice/p;)Lcom/android/common/custom/v;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 177
    const-string/jumbo v0, "nubia_max_preview_size"

    invoke-interface {p1, v0}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    if-nez v0, :cond_b

    return-object v3

    .line 179
    :cond_b
    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 180
    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    return-object v3

    .line 181
    :cond_15
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 182
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 183
    new-instance v1, Lcom/android/common/custom/v;

    invoke-direct {v1, v2, v0}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v1
.end method

.method private YN(Lcom/android/common/cameradevice/p;)Ljava/util/List;
    .registers 7

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 107
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LL()Ljava/util/List;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_e

    .line 111
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_15

    .line 114
    :cond_e
    :goto_e
    invoke-interface {p1}, Lcom/android/common/cameradevice/p;->LO()Ljava/util/List;

    move-result-object v1

    .line 117
    :cond_12
    if-nez v1, :cond_2a

    :goto_14
    return-object v0

    .line 113
    :cond_15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    const-string/jumbo v2, "off"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 110
    if-eqz v2, :cond_12

    goto :goto_e

    :cond_2a
    move-object v0, v1

    .line 117
    goto :goto_14
.end method


# virtual methods
.method public YA()Ljava/util/List;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/common/setting/s;->UH:Ljava/util/List;

    return-object v0
.end method

.method public YB()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/common/setting/s;->UF:Ljava/lang/String;

    return-object v0
.end method

.method public YC()Ljava/lang/String;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/common/setting/s;->UC:Ljava/lang/String;

    return-object v0
.end method

.method public YD()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/common/setting/s;->UE:Ljava/lang/String;

    return-object v0
.end method

.method public YE()Lcom/android/common/cameradevice/p;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/common/setting/s;->UG:Lcom/android/common/cameradevice/p;

    return-object v0
.end method

.method public YF()Ljava/util/List;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/common/setting/s;->UI:Ljava/util/List;

    return-object v0
.end method

.method public YG(Lcom/android/common/cameradevice/p;)V
    .registers 3

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/common/setting/s;->UG:Lcom/android/common/cameradevice/p;

    if-nez v0, :cond_9

    .line 40
    if-eqz p1, :cond_9

    .line 41
    invoke-direct {p0, p1}, Lcom/android/common/setting/s;->YL(Lcom/android/common/cameradevice/p;)V

    .line 43
    :cond_9
    iput-object p1, p0, Lcom/android/common/setting/s;->UG:Lcom/android/common/cameradevice/p;

    .line 38
    return-void
.end method

.method public YH()Lcom/android/common/custom/v;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/common/setting/s;->UD:Lcom/android/common/custom/v;

    return-object v0
.end method

.method public Yw()Lcom/android/common/custom/v;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/common/setting/s;->UA:Lcom/android/common/custom/v;

    return-object v0
.end method

.method public Yx()Lcom/android/common/custom/v;
    .registers 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/common/setting/s;->Uz:Lcom/android/common/custom/v;

    return-object v0
.end method

.method public Yy()Ljava/util/List;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/common/setting/s;->UK:Ljava/util/List;

    return-object v0
.end method

.method public Yz()Ljava/util/List;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/common/setting/s;->UJ:Ljava/util/List;

    return-object v0
.end method
