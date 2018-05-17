.class public Lcom/android/funeffect/a;
.super Lcom/android/common/o/l;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private aTS:Lcom/android/common/appService/t;

.field private aTT:Z

.field private aTU:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    const-string/jumbo v0, "FunEffectListFragment"

    sput-object v0, Lcom/android/funeffect/a;->TAG:Ljava/lang/String;

    .line 22
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Lcom/android/common/o/l;-><init>()V

    .line 24
    iput-boolean v1, p0, Lcom/android/funeffect/a;->aTT:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    .line 26
    iput-boolean v1, p0, Lcom/android/funeffect/a;->aTU:Z

    .line 32
    return-void
.end method

.method public constructor <init>(I)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/common/o/l;-><init>(I)V

    .line 24
    iput-boolean v1, p0, Lcom/android/funeffect/a;->aTT:Z

    .line 25
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    .line 26
    iput-boolean v1, p0, Lcom/android/funeffect/a;->aTU:Z

    .line 28
    return-void
.end method

.method private blc(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 75
    new-instance v0, Lcom/android/common/appService/t;

    iget-object v1, p0, Lcom/android/funeffect/a;->adt:Lcom/android/common/appService/W;

    .line 76
    invoke-virtual {p0}, Lcom/android/funeffect/a;->alA()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v2

    const-string/jumbo v3, "pref_camera_ztemt_fun_effect"

    invoke-virtual {v2, v3}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v2

    .line 77
    const v4, 0x7f1000de

    const v5, 0x7f1000df

    move-object v3, p1

    .line 75
    invoke-direct/range {v0 .. v5}, Lcom/android/common/appService/t;-><init>(Lcom/android/common/appService/W;Lcom/android/common/setting/ListPreference;Landroid/view/View;II)V

    iput-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    .line 78
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    new-instance v1, Lcom/android/funeffect/g;

    invoke-direct {v1, p0}, Lcom/android/funeffect/g;-><init>(Lcom/android/funeffect/a;)V

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kQ(Lcom/android/common/appService/u;)V

    .line 74
    return-void
.end method

.method public static bld()Lcom/android/funeffect/a;
    .registers 2

    .prologue
    .line 105
    new-instance v0, Lcom/android/funeffect/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/funeffect/a;-><init>(I)V

    return-object v0
.end method

.method static synthetic ble(Lcom/android/funeffect/a;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/funeffect/a;->adv:Z

    return v0
.end method

.method static synthetic blf(Lcom/android/funeffect/a;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/funeffect/a;->alB(ZJJ)V

    return-void
.end method

.method static synthetic blg(Lcom/android/funeffect/a;ZJJ)V
    .registers 6

    invoke-virtual/range {p0 .. p5}, Lcom/android/funeffect/a;->alC(ZJJ)V

    return-void
.end method


# virtual methods
.method protected aji(IIII)V
    .registers 7

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    if-eqz v0, :cond_d

    .line 111
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    invoke-virtual {p0}, Lcom/android/funeffect/a;->alD()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kR(F)V

    .line 109
    :cond_d
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/android/funeffect/a;->adv:Z

    if-eqz v0, :cond_9

    .line 118
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kN()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 121
    sget-object v0, Lcom/android/funeffect/a;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Grid effect anim is Running, just consume the dipatch event"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_1f
    invoke-super {p0, p1}, Lcom/android/common/o/l;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .registers 2

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/funeffect/a;->adv:Z

    if-eqz v0, :cond_9

    .line 130
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0

    .line 132
    :cond_9
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    if-eqz v0, :cond_14

    .line 133
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->onBackPressed()Z

    move-result v0

    return v0

    .line 135
    :cond_14
    invoke-super {p0}, Lcom/android/common/o/l;->onBackPressed()Z

    move-result v0

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/android/common/o/l;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 40
    iget-boolean v0, p0, Lcom/android/funeffect/a;->adu:Z

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    return-object v0

    .line 42
    :cond_a
    const v0, 0x7f040030

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 43
    invoke-direct {p0, v0}, Lcom/android/funeffect/a;->blc(Landroid/view/View;)V

    .line 44
    iput-boolean v1, p0, Lcom/android/funeffect/a;->aTT:Z

    .line 46
    return-object v0
.end method

.method public onPause()V
    .registers 2

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/common/o/l;->onPause()V

    .line 67
    iget-boolean v0, p0, Lcom/android/funeffect/a;->adu:Z

    if-eqz v0, :cond_8

    return-void

    .line 69
    :cond_8
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kN()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 70
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kO()Z

    move-result v0

    .line 69
    :goto_16
    iput-boolean v0, p0, Lcom/android/funeffect/a;->aTU:Z

    .line 71
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kP()V

    .line 65
    return-void

    .line 69
    :cond_1e
    const/4 v0, 0x1

    goto :goto_16
.end method

.method public onResume()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 51
    invoke-super {p0}, Lcom/android/common/o/l;->onResume()V

    .line 52
    iget-boolean v0, p0, Lcom/android/funeffect/a;->adu:Z

    if-eqz v0, :cond_9

    return-void

    .line 56
    :cond_9
    iget-boolean v0, p0, Lcom/android/funeffect/a;->aTT:Z

    if-eqz v0, :cond_17

    .line 57
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    iget-boolean v1, p0, Lcom/android/funeffect/a;->aTU:Z

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kM(Z)V

    .line 61
    :goto_14
    iput-boolean v2, p0, Lcom/android/funeffect/a;->aTT:Z

    .line 50
    return-void

    .line 59
    :cond_17
    iget-object v0, p0, Lcom/android/funeffect/a;->aTS:Lcom/android/common/appService/t;

    invoke-virtual {v0, v2}, Lcom/android/common/appService/t;->kM(Z)V

    goto :goto_14
.end method
