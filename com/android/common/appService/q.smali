.class public Lcom/android/common/appService/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private hW:Lcom/android/common/appService/W;

.field private hX:Ljava/text/DecimalFormat;

.field private hY:Landroid/view/View;

.field private hZ:Landroid/os/Handler;

.field private ia:Lcom/android/common/ui/H;

.field private ib:Landroid/widget/TextView;

.field private ic:Landroid/widget/ImageView;

.field private id:Lcom/android/common/appService/U;

.field private ie:Landroid/view/View$OnClickListener;

.field private if:Lcom/android/common/appService/T;

.field private ig:Landroid/widget/ImageView;

.field private ih:Ljava/util/List;

.field private ii:Lcom/android/common/ui/ZoomSeekBar;

.field private ij:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/common/appService/W;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v2, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    .line 34
    iput-object v2, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    .line 35
    iput-object v2, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    .line 36
    iput-object v2, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    .line 37
    iput-object v2, p0, Lcom/android/common/appService/q;->ic:Landroid/widget/ImageView;

    .line 38
    iput-object v2, p0, Lcom/android/common/appService/q;->ig:Landroid/widget/ImageView;

    .line 39
    iput-object v2, p0, Lcom/android/common/appService/q;->ib:Landroid/widget/TextView;

    .line 40
    iput-object v2, p0, Lcom/android/common/appService/q;->hY:Landroid/view/View;

    .line 41
    new-instance v0, Ljava/text/DecimalFormat;

    const-string/jumbo v1, "0.0"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/common/appService/q;->hX:Ljava/text/DecimalFormat;

    .line 42
    iput-object v2, p0, Lcom/android/common/appService/q;->ih:Ljava/util/List;

    .line 43
    new-instance v0, Lcom/android/common/appService/ah;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ah;-><init>(Lcom/android/common/appService/q;)V

    iput-object v0, p0, Lcom/android/common/appService/q;->id:Lcom/android/common/appService/U;

    .line 59
    new-instance v0, Lcom/android/common/appService/ai;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ai;-><init>(Lcom/android/common/appService/q;)V

    iput-object v0, p0, Lcom/android/common/appService/q;->ia:Lcom/android/common/ui/H;

    .line 88
    new-instance v0, Lcom/android/common/appService/aj;

    invoke-direct {v0, p0}, Lcom/android/common/appService/aj;-><init>(Lcom/android/common/appService/q;)V

    iput-object v0, p0, Lcom/android/common/appService/q;->ie:Landroid/view/View$OnClickListener;

    .line 108
    new-instance v0, Lcom/android/common/appService/ak;

    invoke-direct {v0, p0}, Lcom/android/common/appService/ak;-><init>(Lcom/android/common/appService/q;)V

    iput-object v0, p0, Lcom/android/common/appService/q;->hZ:Landroid/os/Handler;

    .line 126
    iput-object p2, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    .line 127
    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 128
    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->LW()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/q;->ih:Ljava/util/List;

    .line 130
    :cond_56
    invoke-direct {p0, p1}, Lcom/android/common/appService/q;->kp(Landroid/view/View;)V

    .line 125
    return-void
.end method

.method static synthetic kA(Lcom/android/common/appService/q;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/appService/q;->ko(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic kB(Lcom/android/common/appService/q;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/common/appService/q;->ks(Z)V

    return-void
.end method

.method private ko(I)Ljava/lang/String;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v0, p0, Lcom/android/common/appService/q;->ih:Ljava/util/List;

    if-nez v0, :cond_6

    .line 247
    return-object v1

    .line 248
    :cond_6
    iget-object v0, p0, Lcom/android/common/appService/q;->ih:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    .line 249
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/common/appService/q;->hX:Ljava/text/DecimalFormat;

    float-to-double v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private kp(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 162
    const v0, 0x7f1001ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    .line 163
    const v0, 0x7f1001b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/ZoomSeekBar;

    iput-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    .line 164
    const v0, 0x7f1001b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/appService/q;->ic:Landroid/widget/ImageView;

    .line 165
    const v0, 0x7f1001b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/common/appService/q;->ig:Landroid/widget/ImageView;

    .line 166
    const v0, 0x7f1001af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/common/appService/q;->ib:Landroid/widget/TextView;

    .line 167
    const v0, 0x7f1001b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/appService/q;->hY:Landroid/view/View;

    .line 168
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    iget-object v1, p0, Lcom/android/common/appService/q;->ia:Lcom/android/common/ui/H;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZoomSeekBar;->zR(Lcom/android/common/ui/H;)V

    .line 169
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adq()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 170
    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pv()I

    move-result v0

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v1

    if-ne v0, v1, :cond_75

    .line 172
    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_84

    .line 173
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZoomSeekBar;->zS(Z)V

    .line 178
    :cond_75
    :goto_75
    iget-object v0, p0, Lcom/android/common/appService/q;->ic:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/common/appService/q;->ie:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/android/common/appService/q;->ig:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/common/appService/q;->ie:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    return-void

    .line 175
    :cond_84
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZoomSeekBar;->zS(Z)V

    goto :goto_75
.end method

.method private kq()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    if-nez v1, :cond_6

    .line 254
    return v0

    .line 256
    :cond_6
    iget-object v1, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amG()Lcom/android/common/camerastate/DeviceState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-eq v1, v2, :cond_23

    .line 257
    iget-object v1, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/camerastate/a;->amF()Lcom/android/common/camerastate/FunctionState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-ne v1, v2, :cond_23

    const/4 v0, 0x1

    .line 256
    :cond_23
    return v0
.end method

.method private kr()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 141
    new-array v0, v7, [I

    .line 142
    iget-object v1, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 143
    iget-object v1, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v1

    .line 144
    iget-object v2, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    .line 145
    const/4 v3, 0x4

    new-array v3, v3, [I

    .line 146
    aget v4, v0, v5

    aput v4, v3, v5

    .line 147
    aget v4, v0, v5

    add-int/2addr v1, v4

    aput v1, v3, v6

    .line 148
    aget v1, v0, v6

    aput v1, v3, v7

    .line 149
    aget v0, v0, v6

    add-int/2addr v0, v2

    const/4 v1, 0x3

    aput v0, v3, v1

    .line 150
    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->rq([I)V

    .line 140
    return-void
.end method

.method private ks(Z)V
    .registers 5

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    if-nez v0, :cond_5

    .line 239
    return-void

    .line 241
    :cond_5
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZoomSeekBar;->zV(Z)V

    .line 242
    const-string/jumbo v0, "ZoomManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnable flag : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method static synthetic ku(Lcom/android/common/appService/q;)Lcom/android/common/appService/W;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    return-object v0
.end method

.method static synthetic kv(Lcom/android/common/appService/q;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/q;->hZ:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic kw(Lcom/android/common/appService/q;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/q;->ib:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic kx(Lcom/android/common/appService/q;)Lcom/android/common/appService/T;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    return-object v0
.end method

.method static synthetic ky(Lcom/android/common/appService/q;)Lcom/android/common/ui/ZoomSeekBar;
    .registers 2

    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    return-object v0
.end method

.method static synthetic kz(Lcom/android/common/appService/q;)Z
    .registers 2

    invoke-direct {p0}, Lcom/android/common/appService/q;->kq()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public kk(Lcom/android/common/appService/T;)V
    .registers 4

    .prologue
    .line 192
    iput-object p1, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    .line 193
    iget-object v0, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    if-eqz v0, :cond_3a

    .line 194
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adq()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 196
    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_3b

    .line 197
    iget-object v0, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/T;->oL(Z)V

    .line 202
    :cond_24
    :goto_24
    iget-object v0, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    iget-object v1, p0, Lcom/android/common/appService/q;->id:Lcom/android/common/appService/U;

    invoke-virtual {v0, v1}, Lcom/android/common/appService/T;->oM(Lcom/android/common/appService/U;)V

    .line 203
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    if-eqz v0, :cond_3a

    .line 204
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    iget-object v1, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    invoke-virtual {v1}, Lcom/android/common/appService/T;->oN()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZoomSeekBar;->zU(I)V

    .line 191
    :cond_3a
    return-void

    .line 199
    :cond_3b
    iget-object v0, p0, Lcom/android/common/appService/q;->if:Lcom/android/common/appService/T;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/T;->oL(Z)V

    goto :goto_24
.end method

.method public kl(Z)V
    .registers 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/common/appService/q;->ii:Lcom/android/common/ui/ZoomSeekBar;

    invoke-virtual {v0, p1}, Lcom/android/common/ui/ZoomSeekBar;->zT(Z)V

    .line 187
    return-void
.end method

.method public km(Z)V
    .registers 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/android/common/appService/q;->hY:Landroid/view/View;

    if-nez v0, :cond_5

    .line 225
    return-void

    .line 226
    :cond_5
    if-eqz p1, :cond_e

    .line 227
    iget-object v0, p0, Lcom/android/common/appService/q;->hY:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    :goto_d
    return-void

    .line 229
    :cond_e
    iget-object v0, p0, Lcom/android/common/appService/q;->hY:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_d
.end method

.method public kn()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 154
    iget-object v0, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_c

    .line 155
    iget-object v0, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 157
    :cond_c
    iget-object v0, p0, Lcom/android/common/appService/q;->hW:Lcom/android/common/appService/W;

    filled-new-array {v2, v2, v2, v2}, [I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rq([I)V

    .line 158
    iget-object v0, p0, Lcom/android/common/appService/q;->hZ:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    return-void
.end method

.method public kt()V
    .registers 3

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_d

    .line 135
    iget-object v0, p0, Lcom/android/common/appService/q;->ij:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 136
    invoke-direct {p0}, Lcom/android/common/appService/q;->kr()V

    .line 133
    :cond_d
    return-void
.end method
