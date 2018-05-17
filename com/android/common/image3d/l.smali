.class public Lcom/android/common/image3d/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/image3d/f;


# instance fields
.field private cA:Lcom/android/common/image3d/i;

.field private cB:Z

.field private cC:Z

.field private cD:Z

.field private cE:J

.field private cF:Lcom/android/common/image3d/m;

.field private cG:Lcom/android/common/image3d/e;

.field private cH:F

.field private cI:F

.field private cJ:F

.field private cK:I

.field private cw:F

.field private cx:F

.field private cy:F

.field private cz:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v3, p0, Lcom/android/common/image3d/l;->cG:Lcom/android/common/image3d/e;

    .line 23
    iput-object v3, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    .line 25
    iput-boolean v2, p0, Lcom/android/common/image3d/l;->cB:Z

    .line 26
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/l;->cC:Z

    .line 27
    iput-boolean v2, p0, Lcom/android/common/image3d/l;->cD:Z

    .line 29
    iput v1, p0, Lcom/android/common/image3d/l;->cw:F

    .line 30
    iput v1, p0, Lcom/android/common/image3d/l;->cx:F

    .line 31
    iput v1, p0, Lcom/android/common/image3d/l;->cy:F

    .line 32
    iput v1, p0, Lcom/android/common/image3d/l;->cH:F

    .line 33
    iput v1, p0, Lcom/android/common/image3d/l;->cI:F

    .line 34
    iput v1, p0, Lcom/android/common/image3d/l;->cJ:F

    .line 35
    iput v2, p0, Lcom/android/common/image3d/l;->cK:I

    .line 36
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/common/image3d/l;->cE:J

    .line 38
    iput v2, p0, Lcom/android/common/image3d/l;->cz:I

    .line 39
    iput-object v3, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    .line 41
    new-instance v0, Lcom/android/common/image3d/e;

    invoke-direct {v0, p1}, Lcom/android/common/image3d/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/image3d/l;->cG:Lcom/android/common/image3d/e;

    .line 42
    new-instance v0, Lcom/android/common/image3d/i;

    invoke-direct {v0}, Lcom/android/common/image3d/i;-><init>()V

    iput-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    .line 44
    iget-object v0, p0, Lcom/android/common/image3d/l;->cG:Lcom/android/common/image3d/e;

    invoke-virtual {v0, v2}, Lcom/android/common/image3d/e;->bA(I)V

    .line 45
    iget-object v0, p0, Lcom/android/common/image3d/l;->cG:Lcom/android/common/image3d/e;

    invoke-virtual {v0, p0}, Lcom/android/common/image3d/e;->bz(Lcom/android/common/image3d/f;)V

    .line 40
    return-void
.end method

.method private bX(FFFFFF)Z
    .registers 11

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/common/image3d/l;->cC:Z

    if-eqz v0, :cond_22

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/image3d/l;->cC:Z

    .line 98
    iput p2, p0, Lcom/android/common/image3d/l;->cH:F

    .line 99
    iput p4, p0, Lcom/android/common/image3d/l;->cI:F

    .line 100
    iput p6, p0, Lcom/android/common/image3d/l;->cJ:F

    .line 101
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/common/image3d/i;->bP(FF)V

    .line 102
    iget-object v0, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/common/image3d/m;->ca(I)V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/image3d/l;->cE:J

    .line 104
    const/4 v0, 0x1

    return v0

    .line 108
    :cond_22
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    iget v1, p0, Lcom/android/common/image3d/l;->cH:F

    sub-float v1, p2, v1

    iget v2, p0, Lcom/android/common/image3d/l;->cI:F

    sub-float v2, p4, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/common/image3d/i;->bP(FF)V

    .line 112
    iget v0, p0, Lcom/android/common/image3d/l;->cw:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/common/image3d/l;->cw:F

    .line 113
    iget v0, p0, Lcom/android/common/image3d/l;->cx:F

    add-float/2addr v0, p3

    iput v0, p0, Lcom/android/common/image3d/l;->cx:F

    .line 114
    iget v0, p0, Lcom/android/common/image3d/l;->cy:F

    add-float/2addr v0, p5

    iput v0, p0, Lcom/android/common/image3d/l;->cy:F

    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/common/image3d/l;->cE:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x21

    cmp-long v0, v0, v2

    if-gez v0, :cond_4d

    .line 117
    const/4 v0, 0x0

    return v0

    .line 121
    :cond_4d
    iget-boolean v0, p0, Lcom/android/common/image3d/l;->cB:Z

    if-nez v0, :cond_ad

    .line 123
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    invoke-virtual {v0}, Lcom/android/common/image3d/i;->bN()F

    move-result v0

    const/high16 v1, 0x40400000    # 3.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_83

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/l;->cB:Z

    .line 125
    invoke-direct {p0}, Lcom/android/common/image3d/l;->bZ()V

    .line 126
    const-string/jumbo v0, "TakenPictureController"

    const-string/jumbo v1, "=====HAS GOT THE DIRECTION===="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    invoke-virtual {v0}, Lcom/android/common/image3d/i;->bM()I

    move-result v0

    iput v0, p0, Lcom/android/common/image3d/l;->cz:I

    .line 128
    iget-object v0, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    iget v1, p0, Lcom/android/common/image3d/l;->cz:I

    invoke-interface {v0, v1}, Lcom/android/common/image3d/m;->ca(I)V

    .line 129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/image3d/l;->cE:J

    .line 130
    const/4 v0, 0x1

    return v0

    .line 133
    :cond_83
    iget v0, p0, Lcom/android/common/image3d/l;->cw:F

    iget v1, p0, Lcom/android/common/image3d/l;->cw:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/image3d/l;->cx:F

    iget v2, p0, Lcom/android/common/image3d/l;->cx:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/common/image3d/l;->cy:F

    iget v2, p0, Lcom/android/common/image3d/l;->cy:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 134
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_ab

    .line 135
    invoke-direct {p0}, Lcom/android/common/image3d/l;->bZ()V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/image3d/l;->cE:J

    .line 137
    const/4 v0, 0x1

    return v0

    .line 139
    :cond_ab
    const/4 v0, 0x0

    return v0

    .line 144
    :cond_ad
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    invoke-virtual {v0}, Lcom/android/common/image3d/i;->bM()I

    move-result v1

    .line 145
    const/4 v0, 0x0

    .line 147
    packed-switch v1, :pswitch_data_158

    .line 195
    :cond_b7
    :goto_b7
    if-eqz v0, :cond_156

    .line 196
    invoke-direct {p0}, Lcom/android/common/image3d/l;->bZ()V

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/image3d/l;->cE:J

    .line 198
    const/4 v0, 0x1

    return v0

    .line 149
    :pswitch_c4
    iget v2, p0, Lcom/android/common/image3d/l;->cx:F

    const/high16 v3, -0x41000000    # -0.5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_d9

    .line 150
    const/4 v0, 0x1

    .line 151
    iget v2, p0, Lcom/android/common/image3d/l;->cz:I

    if-eq v2, v1, :cond_b7

    .line 152
    iget-object v2, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    invoke-interface {v2, v1}, Lcom/android/common/image3d/m;->ca(I)V

    .line 153
    iput v1, p0, Lcom/android/common/image3d/l;->cz:I

    goto :goto_b7

    .line 155
    :cond_d9
    iget v1, p0, Lcom/android/common/image3d/l;->cx:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b7

    .line 156
    iget-object v1, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/common/image3d/m;->ca(I)V

    goto :goto_b7

    .line 160
    :pswitch_e8
    iget v2, p0, Lcom/android/common/image3d/l;->cx:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_fd

    .line 161
    const/4 v0, 0x1

    .line 162
    iget v2, p0, Lcom/android/common/image3d/l;->cz:I

    if-eq v2, v1, :cond_b7

    .line 163
    iget-object v2, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    invoke-interface {v2, v1}, Lcom/android/common/image3d/m;->ca(I)V

    .line 164
    iput v1, p0, Lcom/android/common/image3d/l;->cz:I

    goto :goto_b7

    .line 166
    :cond_fd
    iget v1, p0, Lcom/android/common/image3d/l;->cx:F

    const/high16 v2, -0x3f600000    # -5.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b7

    .line 167
    iget-object v1, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/common/image3d/m;->ca(I)V

    goto :goto_b7

    .line 171
    :pswitch_10c
    iget v2, p0, Lcom/android/common/image3d/l;->cw:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_121

    .line 172
    const/4 v0, 0x1

    .line 173
    iget v2, p0, Lcom/android/common/image3d/l;->cz:I

    if-eq v2, v1, :cond_b7

    .line 174
    iget-object v2, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    invoke-interface {v2, v1}, Lcom/android/common/image3d/m;->ca(I)V

    .line 175
    iput v1, p0, Lcom/android/common/image3d/l;->cz:I

    goto :goto_b7

    .line 177
    :cond_121
    iget v1, p0, Lcom/android/common/image3d/l;->cw:F

    const/high16 v2, -0x3f600000    # -5.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_b7

    .line 178
    iget-object v1, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/common/image3d/m;->ca(I)V

    goto :goto_b7

    .line 182
    :pswitch_130
    iget v2, p0, Lcom/android/common/image3d/l;->cw:F

    const/high16 v3, -0x41000000    # -0.5f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_146

    .line 183
    const/4 v0, 0x1

    .line 184
    iget v2, p0, Lcom/android/common/image3d/l;->cz:I

    if-eq v2, v1, :cond_b7

    .line 185
    iget-object v2, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    invoke-interface {v2, v1}, Lcom/android/common/image3d/m;->ca(I)V

    .line 186
    iput v1, p0, Lcom/android/common/image3d/l;->cz:I

    goto/16 :goto_b7

    .line 188
    :cond_146
    iget v1, p0, Lcom/android/common/image3d/l;->cw:F

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_b7

    .line 189
    iget-object v1, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    const/4 v2, -0x1

    invoke-interface {v1, v2}, Lcom/android/common/image3d/m;->ca(I)V

    goto/16 :goto_b7

    .line 200
    :cond_156
    const/4 v0, 0x0

    return v0

    .line 147
    :pswitch_data_158
    .packed-switch 0x1
        :pswitch_c4
        :pswitch_e8
        :pswitch_10c
        :pswitch_130
    .end packed-switch
.end method

.method private bY()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 204
    invoke-direct {p0}, Lcom/android/common/image3d/l;->bZ()V

    .line 205
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    invoke-virtual {v0}, Lcom/android/common/image3d/i;->bO()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/l;->cC:Z

    .line 207
    iput-boolean v2, p0, Lcom/android/common/image3d/l;->cB:Z

    .line 208
    iput v2, p0, Lcom/android/common/image3d/l;->cK:I

    .line 209
    iput v1, p0, Lcom/android/common/image3d/l;->cH:F

    .line 210
    iput v1, p0, Lcom/android/common/image3d/l;->cI:F

    .line 211
    iput v1, p0, Lcom/android/common/image3d/l;->cJ:F

    .line 203
    return-void
.end method

.method private bZ()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 215
    iput v0, p0, Lcom/android/common/image3d/l;->cw:F

    .line 216
    iput v0, p0, Lcom/android/common/image3d/l;->cx:F

    .line 217
    iput v0, p0, Lcom/android/common/image3d/l;->cy:F

    .line 214
    return-void
.end method


# virtual methods
.method public bC(FFFFFF)V
    .registers 8

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    if-nez v0, :cond_5

    .line 75
    return-void

    .line 77
    :cond_5
    invoke-direct/range {p0 .. p6}, Lcom/android/common/image3d/l;->bX(FFFFFF)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 78
    iget v0, p0, Lcom/android/common/image3d/l;->cK:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/image3d/l;->cK:I

    .line 79
    iget-object v0, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    invoke-interface {v0}, Lcom/android/common/image3d/m;->cb()V

    .line 72
    :cond_16
    return-void
.end method

.method public bU(Lcom/android/common/image3d/m;)V
    .registers 2

    .prologue
    .line 49
    iput-object p1, p0, Lcom/android/common/image3d/l;->cF:Lcom/android/common/image3d/m;

    .line 48
    return-void
.end method

.method public bV()I
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    invoke-virtual {v0}, Lcom/android/common/image3d/i;->bM()I

    move-result v0

    return v0
.end method

.method public bW()F
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/common/image3d/l;->cA:Lcom/android/common/image3d/i;

    invoke-virtual {v0}, Lcom/android/common/image3d/i;->bN()F

    move-result v0

    return v0
.end method

.method public start()V
    .registers 3

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/android/common/image3d/l;->cD:Z

    if-nez v0, :cond_18

    .line 54
    invoke-direct {p0}, Lcom/android/common/image3d/l;->bY()V

    .line 55
    const-string/jumbo v0, "TakenPictureController"

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcom/android/common/image3d/l;->cG:Lcom/android/common/image3d/e;

    invoke-virtual {v0}, Lcom/android/common/image3d/e;->bx()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/image3d/l;->cD:Z

    .line 52
    :cond_18
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/common/image3d/l;->cD:Z

    if-eqz v0, :cond_15

    .line 63
    const-string/jumbo v0, "TakenPictureController"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object v0, p0, Lcom/android/common/image3d/l;->cG:Lcom/android/common/image3d/e;

    invoke-virtual {v0}, Lcom/android/common/image3d/e;->bw()V

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/image3d/l;->cD:Z

    .line 61
    :cond_15
    return-void
.end method
