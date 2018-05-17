.class public Lcom/android/common/setting/h;
.super Lcom/android/common/setting/l;
.source "SourceFile"


# instance fields
.field private TD:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(ILcom/android/common/appService/W;Lcom/android/common/appService/y;)V
    .registers 5

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/setting/l;-><init>(ILcom/android/common/appService/W;Lcom/android/common/appService/y;)V

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/setting/h;->TD:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/common/setting/h;->TD:Ljava/util/HashMap;

    .line 21
    return-void
.end method

.method private Vj(Lcom/android/common/cameradevice/j;)V
    .registers 3

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/android/common/setting/h;->Wr(Lcom/android/common/cameradevice/j;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 126
    :cond_7
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WT()V

    .line 128
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agj:Z

    if-eqz v0, :cond_11

    .line 129
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WU()V

    .line 131
    :cond_11
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agk:Z

    if-eqz v0, :cond_18

    .line 132
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WV()V

    .line 134
    :cond_18
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agl:Z

    if-eqz v0, :cond_1f

    .line 135
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WW()V

    .line 137
    :cond_1f
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agm:Z

    if-eqz v0, :cond_26

    .line 138
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WX()V

    .line 140
    :cond_26
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WY()V

    .line 141
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agd:Z

    if-eqz v0, :cond_30

    .line 142
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WZ()V

    .line 144
    :cond_30
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agn:Z

    if-eqz v0, :cond_37

    .line 145
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xa()V

    .line 147
    :cond_37
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->ago:Z

    if-eqz v0, :cond_3e

    .line 148
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xb()V

    .line 150
    :cond_3e
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agp:Z

    if-eqz v0, :cond_45

    .line 151
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xc()V

    .line 153
    :cond_45
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agq:Z

    if-eqz v0, :cond_4c

    .line 154
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wn()V

    .line 156
    :cond_4c
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xd()V

    .line 157
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Vk()V

    .line 158
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xe()V

    .line 123
    return-void
.end method


# virtual methods
.method public Vh()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agh:Z

    if-nez v0, :cond_8

    .line 28
    const-string/jumbo v0, "off"

    return-object v0

    .line 30
    :cond_8
    invoke-super {p0}, Lcom/android/common/setting/l;->Vh()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Vi()Lcom/android/common/setting/c;
    .registers 6

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wg()Lcom/android/common/appService/W;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v2

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/android/common/appService/CameraMember;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x26

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/common/setting/h;->Ud:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 216
    iget-object v0, p0, Lcom/android/common/setting/h;->TD:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/setting/c;

    .line 217
    if-nez v0, :cond_3c

    .line 218
    iget-object v0, p0, Lcom/android/common/setting/h;->Ue:Lcom/android/common/appService/y;

    iget v4, p0, Lcom/android/common/setting/h;->Ud:I

    invoke-interface {v0, v1, v4, v2}, Lcom/android/common/appService/y;->lJ(Lcom/android/common/appService/W;ILcom/android/common/appService/CameraMember;)Lcom/android/common/setting/c;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/android/common/setting/h;->TD:Ljava/util/HashMap;

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_3c
    if-eqz v0, :cond_45

    .line 223
    iget v1, p0, Lcom/android/common/setting/h;->Ud:I

    iget-object v2, p0, Lcom/android/common/setting/h;->Uf:Lcom/android/common/setting/s;

    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/c;->Tt(ILcom/android/common/setting/s;)V

    .line 225
    :cond_45
    return-object v0
.end method

.method protected Vk()V
    .registers 4

    .prologue
    .line 163
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agr:Z

    if-eqz v0, :cond_8

    .line 164
    invoke-super {p0}, Lcom/android/common/setting/l;->Vk()V

    .line 162
    :goto_7
    return-void

    .line 166
    :cond_8
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lt()I

    move-result v0

    if-lez v0, :cond_66

    .line 167
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Th()Ljava/lang/String;

    move-result-object v0

    .line 168
    const-string/jumbo v1, "on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 169
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wg()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rZ()Z

    move-result v1

    if-nez v1, :cond_34

    .line 170
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wg()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qS()V

    .line 172
    :cond_34
    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 173
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wg()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->rZ()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 174
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wg()Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->qR()V

    .line 176
    :cond_4e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "FaceDetectionMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/h;->Xg(Ljava/lang/String;)V

    goto :goto_7

    .line 178
    :cond_66
    const-string/jumbo v0, "FaceDetectionMode: off"

    invoke-virtual {p0, v0}, Lcom/android/common/setting/h;->Xg(Ljava/lang/String;)V

    goto :goto_7
.end method

.method protected Vl(Lcom/android/common/cameradevice/j;)V
    .registers 7

    .prologue
    const/4 v4, -0x1

    .line 185
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->TS()I

    move-result v1

    .line 186
    if-eq v1, v4, :cond_68

    const-string/jumbo v0, "manual"

    .line 187
    :goto_e
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xh()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/cameradevice/p;->LM()Ljava/util/List;

    move-result-object v2

    .line 188
    invoke-virtual {p0, v0, v2}, Lcom/android/common/setting/h;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 189
    const-string/jumbo v0, "auto"

    invoke-virtual {p0, v0, v2}, Lcom/android/common/setting/h;->Xi(Ljava/lang/String;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_71

    .line 190
    const-string/jumbo v0, "auto"

    .line 196
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/common/cameradevice/p;->Mn(Ljava/lang/String;)V

    .line 197
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->anr()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 198
    invoke-virtual {p0, v0, p1}, Lcom/android/common/setting/h;->Xj(Ljava/lang/String;Lcom/android/common/cameradevice/j;)V

    .line 200
    :cond_38
    sget-boolean v2, Lcom/android/common/independentutil/IndependenceUtil;->ags:Z

    if-eqz v2, :cond_45

    .line 201
    if-eq v1, v4, :cond_45

    .line 202
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/common/cameradevice/p;->Nu(I)V

    .line 205
    :cond_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "FocusMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "; Manual: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/common/setting/h;->Xg(Ljava/lang/String;)V

    .line 184
    return-void

    .line 186
    :cond_68
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Xf()Lcom/android/common/setting/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/setting/c;->Tm()Ljava/lang/String;

    move-result-object v0

    goto :goto_e

    .line 192
    :cond_71
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/cameradevice/p;->Lo()Ljava/lang/String;

    move-result-object v0

    goto :goto_28
.end method

.method protected Vm(Lcom/android/common/cameradevice/j;)V
    .registers 4

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/android/common/setting/h;->Wr(Lcom/android/common/cameradevice/j;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 54
    :cond_7
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Ws()V

    .line 55
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wt()V

    .line 56
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wh()V

    .line 57
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wi()V

    .line 58
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wj()V

    .line 59
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wk()V

    .line 60
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wu()V

    .line 61
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wv()V

    .line 62
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Ww()V

    .line 63
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agi:Z

    if-eqz v0, :cond_29

    .line 64
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wx()V

    .line 66
    :cond_29
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wy()V

    .line 67
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wz()V

    .line 68
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WA()V

    .line 69
    invoke-static {}, Lcom/android/common/independentutil/IndependenceUtil;->ans()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 70
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WB()V

    .line 72
    :cond_3b
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WC()V

    .line 73
    sget-boolean v0, Lcom/android/common/independentutil/IndependenceUtil;->agh:Z

    if-eqz v0, :cond_48

    .line 74
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WD()V

    .line 75
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WE()V

    .line 77
    :cond_48
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WF()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/setting/h;->Ug:Z

    .line 80
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WG()V

    .line 81
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WH()V

    .line 82
    iget-boolean v0, p0, Lcom/android/common/setting/h;->Ug:Z

    if-eqz v0, :cond_62

    .line 83
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WI()Lcom/android/common/cameradevice/p;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/common/cameradevice/j;->KE(Lcom/android/common/cameradevice/p;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WJ()V

    .line 87
    :cond_62
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WK()V

    .line 88
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adK()Z

    move-result v0

    if-eqz v0, :cond_b4

    .line 89
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WL()V

    .line 93
    :goto_76
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WN()V

    .line 96
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wp()V

    .line 99
    const-string/jumbo v0, "auto"

    iget-object v1, p0, Lcom/android/common/setting/h;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    const-string/jumbo v0, "hdr"

    iget-object v1, p0, Lcom/android/common/setting/h;->Uh:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    .line 100
    :cond_92
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wl()V

    .line 101
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wm()V

    .line 102
    invoke-virtual {p0, p1}, Lcom/android/common/setting/h;->Vl(Lcom/android/common/cameradevice/j;)V

    .line 107
    :cond_9b
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WO()V

    .line 108
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wo()V

    .line 109
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WP()V

    .line 110
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WQ()V

    .line 111
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WR()V

    .line 112
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wq()V

    .line 114
    invoke-direct {p0, p1}, Lcom/android/common/setting/h;->Vj(Lcom/android/common/cameradevice/j;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WS()V

    .line 51
    return-void

    .line 91
    :cond_b4
    invoke-virtual {p0}, Lcom/android/common/setting/h;->WM()V

    goto :goto_76
.end method

.method protected Vn(Lcom/android/common/cameradevice/j;)V
    .registers 2

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wh()V

    .line 36
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wi()V

    .line 37
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wj()V

    .line 38
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wk()V

    .line 40
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wl()V

    .line 41
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wm()V

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/common/setting/h;->Vl(Lcom/android/common/cameradevice/j;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wn()V

    .line 45
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wo()V

    .line 46
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wp()V

    .line 47
    invoke-virtual {p0}, Lcom/android/common/setting/h;->Wq()V

    .line 34
    return-void
.end method
