.class public Lcom/android/common/appService/R;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private kP:I

.field private kQ:I

.field private kR:I

.field private kS:I

.field private kT:D

.field private kU:I

.field private kV:Z

.field private kW:I

.field private kX:Landroid/os/Handler;

.field private kY:Ljava/util/ArrayList;

.field private kZ:Landroid/content/res/Resources;

.field private la:I

.field private lb:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/os/Handler;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/android/common/h;->aoN()I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/R;->kR:I

    .line 45
    invoke-static {}, Lcom/android/common/h;->aoO()I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/R;->kQ:I

    .line 52
    iput-object v1, p0, Lcom/android/common/appService/R;->kZ:Landroid/content/res/Resources;

    .line 54
    iput-object v1, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    .line 55
    iput-object v1, p0, Lcom/android/common/appService/R;->kX:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcom/android/common/appService/R;->kZ:Landroid/content/res/Resources;

    .line 59
    iput-object p2, p0, Lcom/android/common/appService/R;->kX:Landroid/os/Handler;

    .line 60
    const v0, 0x7f0d0020

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/R;->kS:I

    .line 61
    const v0, 0x7f0d001f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/common/appService/R;->kP:I

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/appService/R;->kV:Z

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    .line 64
    const-wide v0, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    invoke-virtual {p0, v0, v1}, Lcom/android/common/appService/R;->oE(D)V

    .line 57
    return-void
.end method

.method private oA(Lcom/android/common/appService/S;IIII)V
    .registers 14

    .prologue
    .line 207
    if-nez p1, :cond_3

    .line 208
    return-void

    .line 210
    :cond_3
    invoke-interface {p1}, Lcom/android/common/appService/S;->bb()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 211
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_24

    .line 212
    iget-object v7, p0, Lcom/android/common/appService/R;->kX:Landroid/os/Handler;

    new-instance v0, Lcom/android/common/appService/av;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/common/appService/av;-><init>(Lcom/android/common/appService/R;Lcom/android/common/appService/S;IIII)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    :goto_23
    return-void

    .line 221
    :cond_24
    invoke-interface {p1, p2, p3, p4, p5}, Lcom/android/common/appService/S;->bd(IIII)V

    goto :goto_23
.end method

.method private oB(Lcom/android/common/appService/R;IIIIIIII)V
    .registers 23

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    if-eqz v0, :cond_2a

    .line 165
    iget-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    const/4 v0, 0x0

    array-length v12, v11

    move v10, v0

    :goto_d
    if-ge v10, v12, :cond_2a

    aget-object v1, v11, v10

    .line 166
    check-cast v1, Lcom/android/common/appService/S;

    move-object v0, p0

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/android/common/appService/R;->oz(Lcom/android/common/appService/S;IIIIIIII)V

    .line 165
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_d

    .line 163
    :cond_2a
    return-void
.end method

.method private oD()V
    .registers 12

    .prologue
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    .line 111
    iget v0, p0, Lcom/android/common/appService/R;->kR:I

    .line 112
    iget v1, p0, Lcom/android/common/appService/R;->kQ:I

    .line 113
    const-string/jumbo v2, "PreviewAreaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "original preview dimensions are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    if-le v0, v1, :cond_c1

    .line 124
    :goto_2d
    iget-boolean v2, p0, Lcom/android/common/appService/R;->kV:Z

    if-eqz v2, :cond_9c

    .line 125
    int-to-double v2, v1

    iget-wide v4, p0, Lcom/android/common/appService/R;->kT:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v2, v2

    move v3, v1

    .line 130
    :goto_38
    if-le v3, v1, :cond_a4

    .line 131
    int-to-double v4, v1

    int-to-double v6, v3

    div-double/2addr v4, v6

    int-to-double v2, v2

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .line 139
    :goto_40
    shr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    .line 140
    shr-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    .line 142
    const-string/jumbo v2, "PreviewAreaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preview dimensions are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget v6, p0, Lcom/android/common/appService/R;->kW:I

    .line 145
    iget v7, p0, Lcom/android/common/appService/R;->lb:I

    .line 146
    iget v8, p0, Lcom/android/common/appService/R;->la:I

    .line 147
    iget v9, p0, Lcom/android/common/appService/R;->kU:I

    .line 150
    iget v2, p0, Lcom/android/common/appService/R;->kQ:I

    iget v3, p0, Lcom/android/common/appService/R;->kP:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iget v3, p0, Lcom/android/common/appService/R;->kS:I

    div-int/lit8 v3, v3, 0x2

    if-gt v2, v3, :cond_ad

    .line 151
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/common/appService/R;->lb:I

    .line 155
    :goto_84
    iget v2, p0, Lcom/android/common/appService/R;->lb:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/common/appService/R;->kU:I

    .line 156
    iget v0, p0, Lcom/android/common/appService/R;->kW:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/common/appService/R;->la:I

    .line 158
    iget v2, p0, Lcom/android/common/appService/R;->kW:I

    iget v3, p0, Lcom/android/common/appService/R;->lb:I

    iget v4, p0, Lcom/android/common/appService/R;->la:I

    iget v5, p0, Lcom/android/common/appService/R;->kU:I

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v9}, Lcom/android/common/appService/R;->oB(Lcom/android/common/appService/R;IIIIIIII)V

    .line 110
    return-void

    .line 127
    :cond_9c
    int-to-double v2, v0

    iget-wide v4, p0, Lcom/android/common/appService/R;->kT:D

    mul-double/2addr v2, v4

    add-double/2addr v2, v6

    double-to-int v3, v2

    move v2, v0

    goto :goto_38

    .line 133
    :cond_a4
    if-le v2, v0, :cond_be

    .line 134
    int-to-double v4, v0

    int-to-double v6, v2

    div-double/2addr v4, v6

    int-to-double v2, v3

    mul-double/2addr v2, v4

    double-to-int v1, v2

    .line 135
    goto :goto_40

    .line 153
    :cond_ad
    iget v2, p0, Lcom/android/common/appService/R;->kS:I

    iget v3, p0, Lcom/android/common/appService/R;->kQ:I

    iget v4, p0, Lcom/android/common/appService/R;->kS:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/common/appService/R;->kP:I

    sub-int/2addr v3, v4

    sub-int/2addr v3, v0

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/common/appService/R;->lb:I

    goto :goto_84

    :cond_be
    move v0, v2

    move v1, v3

    goto :goto_40

    :cond_c1
    move v10, v1

    move v1, v0

    move v0, v10

    goto/16 :goto_2d
.end method

.method static synthetic oG(Lcom/android/common/appService/R;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    return-object v0
.end method

.method private oz(Lcom/android/common/appService/S;IIIIIIII)V
    .registers 22

    .prologue
    .line 176
    if-nez p1, :cond_3

    .line 177
    return-void

    .line 179
    :cond_3
    invoke-interface {p1}, Lcom/android/common/appService/S;->bb()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 180
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_2e

    .line 181
    iget-object v11, p0, Lcom/android/common/appService/R;->kX:Landroid/os/Handler;

    new-instance v0, Lcom/android/common/appService/au;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/common/appService/au;-><init>(Lcom/android/common/appService/R;Lcom/android/common/appService/S;IIIIIIII)V

    invoke-virtual {v11, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :goto_2d
    return-void

    :cond_2e
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 192
    invoke-interface/range {v0 .. v9}, Lcom/android/common/appService/S;->bc(Lcom/android/common/appService/R;IIIIIIII)V

    goto :goto_2d
.end method


# virtual methods
.method public oC(FF)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 84
    iget v1, p0, Lcom/android/common/appService/R;->kW:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_1e

    iget v1, p0, Lcom/android/common/appService/R;->la:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1e

    .line 85
    iget v1, p0, Lcom/android/common/appService/R;->lb:I

    int-to-float v1, v1

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_1e

    iget v1, p0, Lcom/android/common/appService/R;->kU:I

    int-to-float v1, v1

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1e

    const/4 v0, 0x1

    .line 84
    :cond_1e
    return v0
.end method

.method public oE(D)V
    .registers 8

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_c

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 75
    :cond_c
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p1

    .line 77
    iget-wide v2, p0, Lcom/android/common/appService/R;->kT:D

    cmpl-double v2, v2, v0

    if-eqz v2, :cond_1a

    .line 78
    iput-wide v0, p0, Lcom/android/common/appService/R;->kT:D

    .line 79
    invoke-direct {p0}, Lcom/android/common/appService/R;->oD()V

    .line 71
    :cond_1a
    return-void
.end method

.method public oF(Z)V
    .registers 2

    .prologue
    .line 68
    iput-boolean p1, p0, Lcom/android/common/appService/R;->kV:Z

    .line 67
    return-void
.end method

.method public ot()D
    .registers 3

    .prologue
    .line 107
    iget-wide v0, p0, Lcom/android/common/appService/R;->kT:D

    return-wide v0
.end method

.method public ou(Lcom/android/common/appService/S;)V
    .registers 8

    .prologue
    .line 199
    if-eqz p1, :cond_a

    iget-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 198
    :cond_a
    :goto_a
    return-void

    .line 200
    :cond_b
    iget-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget v2, p0, Lcom/android/common/appService/R;->kW:I

    iget v3, p0, Lcom/android/common/appService/R;->lb:I

    iget v4, p0, Lcom/android/common/appService/R;->la:I

    iget v5, p0, Lcom/android/common/appService/R;->kU:I

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/R;->oA(Lcom/android/common/appService/S;IIII)V

    goto :goto_a
.end method

.method public ov(Lcom/android/common/appService/S;)V
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 227
    iget-object v0, p0, Lcom/android/common/appService/R;->kY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 225
    :cond_9
    return-void
.end method

.method public ow()I
    .registers 3

    .prologue
    .line 89
    iget v0, p0, Lcom/android/common/appService/R;->la:I

    iget v1, p0, Lcom/android/common/appService/R;->kW:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public ox()I
    .registers 3

    .prologue
    .line 93
    iget v0, p0, Lcom/android/common/appService/R;->kU:I

    iget v1, p0, Lcom/android/common/appService/R;->lb:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public oy([I)V
    .registers 4

    .prologue
    .line 97
    if-eqz p1, :cond_6

    .line 98
    array-length v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    .line 99
    :cond_6
    const-string/jumbo v0, "PreviewAreaController"

    const-string/jumbo v1, "Can\'t getLocationInWindow"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_10
    iget v0, p0, Lcom/android/common/appService/R;->kW:I

    const/4 v1, 0x0

    aput v0, p1, v1

    .line 103
    iget v0, p0, Lcom/android/common/appService/R;->lb:I

    const/4 v1, 0x1

    aput v0, p1, v1

    .line 96
    return-void
.end method
