.class Lcom/android/common/C;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aku:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 2010
    iput-object p1, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    .prologue
    const/16 v4, 0x2714

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2013
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_f

    return-void

    .line 2014
    :cond_f
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_14e

    .line 2012
    :cond_14
    :goto_14
    return-void

    .line 2016
    :sswitch_15
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avP(Lcom/android/common/ActivityBase;)V

    goto :goto_14

    .line 2020
    :sswitch_1b
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atD()V

    goto :goto_14

    .line 2025
    :sswitch_21
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avW(Lcom/android/common/ActivityBase;)V

    .line 2026
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avV(Lcom/android/common/ActivityBase;)V

    goto :goto_14

    .line 2030
    :sswitch_2c
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avU(Lcom/android/common/ActivityBase;)V

    goto :goto_14

    .line 2034
    :sswitch_32
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v3}, Lcom/android/common/ActivityBase;->asZ(I)V

    goto :goto_14

    .line 2038
    :sswitch_38
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atS()Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    if-eq v0, v1, :cond_14

    .line 2039
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0, v3}, Lcom/android/common/appService/W;->qn(Z)V

    goto :goto_14

    .line 2042
    :sswitch_4a
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iput-boolean v2, v0, Lcom/android/common/ActivityBase;->ajO:Z

    goto :goto_14

    .line 2046
    :sswitch_4f
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    goto :goto_14

    .line 2049
    :sswitch_5c
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asi()V

    goto :goto_14

    .line 2052
    :sswitch_62
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jN:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_14

    .line 2053
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jO:Lcom/android/common/appService/CameraMember;

    if-eq v0, v1, :cond_14

    .line 2054
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->ng()V

    goto :goto_14

    .line 2058
    :sswitch_86
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nv()V

    goto :goto_14

    .line 2061
    :sswitch_92
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->ade()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 2062
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v1, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->atT()Lcom/android/common/g/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->atk(Lcom/android/common/a/b;)V

    goto/16 :goto_14

    .line 2066
    :sswitch_ad
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avQ(Lcom/android/common/ActivityBase;)V

    goto/16 :goto_14

    .line 2069
    :sswitch_b4
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avR(Lcom/android/common/ActivityBase;)V

    goto/16 :goto_14

    .line 2072
    :sswitch_bb
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->atu()V

    goto/16 :goto_14

    .line 2075
    :sswitch_c2
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asU()V

    goto/16 :goto_14

    .line 2078
    :sswitch_c9
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avL(Lcom/android/common/ActivityBase;)Z

    move-result v0

    if-nez v0, :cond_d2

    .line 2079
    return-void

    .line 2081
    :cond_d2
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v3, v4}, Landroid/view/KeyEvent;-><init>(II)V

    .line 2082
    iget-object v1, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v1, v4, v0}, Lcom/android/common/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 2083
    iget-object v1, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v1, v4, v0}, Lcom/android/common/ActivityBase;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 2084
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    const-string/jumbo v1, "fingerprint"

    const-string/jumbo v2, "fingerprint"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_14

    .line 2087
    :sswitch_ee
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->eL()Z

    goto/16 :goto_14

    .line 2090
    :sswitch_fb
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_14

    .line 2091
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2092
    const/16 v1, 0x80

    .line 2091
    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2093
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "Close camera time arrived."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 2097
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/H;->nk(Z)Z

    .line 2098
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/appService/H;->nq(Z)V

    .line 2100
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->so()V

    .line 2101
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asF()V

    .line 2102
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asG()V

    .line 2103
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v2}, Lcom/android/common/ActivityBase;->asP(Z)V

    goto/16 :goto_14

    .line 2107
    :sswitch_147
    iget-object v0, p0, Lcom/android/common/C;->aku:Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asQ()V

    goto/16 :goto_14

    .line 2014
    :sswitch_data_14e
    .sparse-switch
        0x2 -> :sswitch_15
        0x4 -> :sswitch_32
        0x5 -> :sswitch_1b
        0x12 -> :sswitch_21
        0x13 -> :sswitch_2c
        0x23 -> :sswitch_38
        0x25 -> :sswitch_4a
        0x26 -> :sswitch_4f
        0x3c -> :sswitch_5c
        0x56 -> :sswitch_62
        0x57 -> :sswitch_86
        0x5b -> :sswitch_92
        0x5e -> :sswitch_ad
        0x5f -> :sswitch_b4
        0x61 -> :sswitch_bb
        0x67 -> :sswitch_c9
        0x68 -> :sswitch_c2
        0x6b -> :sswitch_ee
        0x70 -> :sswitch_fb
        0x71 -> :sswitch_147
    .end sparse-switch
.end method
