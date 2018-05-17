.class public Lcom/android/camera/cameraFamily/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/camera/cameraFamily/d;


# instance fields
.field private amm:Landroid/app/Activity;

.field private amn:Lcom/android/common/appService/W;

.field private amo:Lcom/android/camera/cameraFamily/a;

.field private amp:Landroid/widget/FrameLayout;

.field private amq:Lcom/android/common/camerastate/a;

.field private amr:Lcom/android/camera/cameraFamily/e;

.field private ams:I

.field private amt:Z

.field private amu:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    .line 33
    iput-boolean v1, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    .line 34
    iput-boolean v1, p0, Lcom/android/camera/cameraFamily/l;->amt:Z

    .line 36
    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amm:Landroid/app/Activity;

    .line 37
    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amn:Lcom/android/common/appService/W;

    .line 38
    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amq:Lcom/android/common/camerastate/a;

    .line 39
    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amr:Lcom/android/camera/cameraFamily/e;

    .line 41
    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    .line 42
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/cameraFamily/l;->ams:I

    .line 45
    iput-object p1, p0, Lcom/android/camera/cameraFamily/l;->amm:Landroid/app/Activity;

    .line 46
    iput-object p2, p0, Lcom/android/camera/cameraFamily/l;->amn:Lcom/android/common/appService/W;

    .line 47
    invoke-virtual {p2}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amq:Lcom/android/common/camerastate/a;

    .line 48
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/l;->aye()V

    .line 49
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/l;->ayf()V

    .line 44
    return-void
.end method

.method private aye()V
    .registers 3

    .prologue
    .line 56
    invoke-static {}, Lcom/android/camera/cameraFamily/e;->axu()Lcom/android/camera/cameraFamily/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amr:Lcom/android/camera/cameraFamily/e;

    .line 57
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amr:Lcom/android/camera/cameraFamily/e;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/l;->amm:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/e;->axx(Landroid/content/Context;)V

    .line 58
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amr:Lcom/android/camera/cameraFamily/e;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/e;->axB()V

    .line 55
    return-void
.end method

.method private ayf()V
    .registers 3

    .prologue
    .line 62
    invoke-static {}, Lcom/android/camera/cameraFamily/a;->awu()Lcom/android/camera/cameraFamily/a;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    .line 63
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/l;->amr:Lcom/android/camera/cameraFamily/e;

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/a;->awA(Lcom/android/camera/cameraFamily/e;)V

    .line 64
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0, p0}, Lcom/android/camera/cameraFamily/a;->awy(Lcom/android/camera/cameraFamily/d;)V

    .line 65
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amr:Lcom/android/camera/cameraFamily/e;

    iget-object v1, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/e;->axs(Lcom/android/camera/cameraFamily/f;)V

    .line 66
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amm:Landroid/app/Activity;

    const v1, 0x7f10005b

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    .line 67
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 61
    return-void
.end method

.method private ayg(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 213
    return-void
.end method

.method private ayh()V
    .registers 3

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    if-eqz v0, :cond_c

    .line 167
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amq:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amO(Lcom/android/common/camerastate/UIState;)V

    .line 165
    :goto_b
    return-void

    .line 169
    :cond_c
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amq:Lcom/android/common/camerastate/a;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amN(Lcom/android/common/camerastate/UIState;)V

    goto :goto_b
.end method


# virtual methods
.method public axU()V
    .registers 3

    .prologue
    .line 119
    const-string/jumbo v0, "showFamilyPage"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/cameraFamily/l;->ams:I

    .line 121
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 122
    const-string/jumbo v0, "inner call showFamilyPage"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/a;->awB(Z)V

    .line 125
    :cond_1b
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amn:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mR()V

    .line 118
    return-void
.end method

.method public axV()Z
    .registers 2

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    return v0
.end method

.method public axW()V
    .registers 3

    .prologue
    .line 129
    const-string/jumbo v0, "hideFamilyPage"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 130
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/camera/cameraFamily/l;->ams:I

    .line 131
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    if-nez v0, :cond_16

    .line 132
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/a;->awl(Z)V

    .line 134
    :cond_16
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amn:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mR()V

    .line 128
    return-void
.end method

.method public axX(I)V
    .registers 4

    .prologue
    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFamilyPageVisibility: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 159
    iput p1, p0, Lcom/android/camera/cameraFamily/l;->ams:I

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    if-nez v0, :cond_26

    .line 161
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/camera/cameraFamily/l;->ams:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 157
    :cond_26
    return-void
.end method

.method public axY()Z
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->aws()Z

    move-result v0

    return v0
.end method

.method public axZ()V
    .registers 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_8

    .line 139
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    if-eqz v0, :cond_12

    .line 144
    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amn:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mR()V

    .line 137
    return-void

    .line 140
    :cond_12
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    if-nez v0, :cond_8

    .line 141
    const-string/jumbo v0, "show CameraFamily IfNeed"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 142
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/a;->awB(Z)V

    goto :goto_8
.end method

.method public axj()V
    .registers 3

    .prologue
    .line 209
    const-string/jumbo v0, "onFamilyHideEnd"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/android/camera/cameraFamily/l;->ams:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 208
    return-void
.end method

.method public axk()V
    .registers 2

    .prologue
    .line 202
    const-string/jumbo v0, "onFamilyHideStart"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    .line 204
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/l;->ayh()V

    .line 201
    return-void
.end method

.method public axl()V
    .registers 2

    .prologue
    .line 197
    const-string/jumbo v0, "onFamilyShowEnd"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public axm()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 187
    const-string/jumbo v0, "onFamilyShowStart"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 189
    iput-boolean v2, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    .line 190
    invoke-direct {p0}, Lcom/android/camera/cameraFamily/l;->ayh()V

    .line 191
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0, v2}, Lcom/android/camera/cameraFamily/a;->setEnabled(Z)V

    .line 192
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 186
    return-void
.end method

.method public aya()V
    .registers 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amp:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_e

    .line 149
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    .line 148
    if-eqz v0, :cond_e

    .line 150
    invoke-virtual {p0}, Lcom/android/camera/cameraFamily/l;->axY()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 154
    :cond_e
    :goto_e
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amn:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mR()V

    .line 147
    return-void

    .line 151
    :cond_18
    const-string/jumbo v0, "hideFamilySelectGrid"

    invoke-direct {p0, v0}, Lcom/android/camera/cameraFamily/l;->ayg(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/a;->awl(Z)V

    goto :goto_e
.end method

.method public ayb()V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 75
    const-string/jumbo v0, "CameraFamily"

    const-string/jumbo v1, "showCameraFamily mCameraFamilyFragment is Added()"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    return-void

    .line 78
    :cond_16
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amm:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v1}, Lcom/android/camera/cameraFamily/a;->isAdded()Z

    move-result v1

    if-nez v1, :cond_2c

    iget-boolean v1, p0, Lcom/android/camera/cameraFamily/l;->amt:Z

    if-eqz v1, :cond_30

    .line 83
    :cond_2c
    :goto_2c
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 73
    return-void

    .line 80
    :cond_30
    iget-object v1, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    const v2, 0x7f10005b

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 81
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/camera/cameraFamily/l;->amt:Z

    goto :goto_2c
.end method

.method public ayc(Lcom/android/camera/cameraFamily/c;)V
    .registers 3

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    if-eqz v0, :cond_9

    .line 181
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0, p1}, Lcom/android/camera/cameraFamily/a;->awd(Lcom/android/camera/cameraFamily/c;)V

    .line 179
    :cond_9
    return-void
.end method

.method public ayd()V
    .registers 2

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    if-eqz v0, :cond_9

    .line 175
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->awx()V

    .line 173
    :cond_9
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0, p1}, Lcom/android/camera/cameraFamily/a;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/camera/cameraFamily/l;->amu:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/camera/cameraFamily/l;->amo:Lcom/android/camera/cameraFamily/a;

    invoke-virtual {v0}, Lcom/android/camera/cameraFamily/a;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 99
    const/4 v0, 0x1

    return v0

    .line 101
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
