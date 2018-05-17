.class public Lcom/android/b/d;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field private aBA:Ljava/util/HashMap;

.field private aBy:Lcom/android/common/appService/CameraMember;

.field private aBz:Lcom/android/common/setting/ListPreference;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/common/appService/CameraMember;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 25
    sget-object v0, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    iput-object v0, p0, Lcom/android/b/d;->aBy:Lcom/android/common/appService/CameraMember;

    .line 26
    iput-object v1, p0, Lcom/android/b/d;->aBz:Lcom/android/common/setting/ListPreference;

    .line 27
    iput-object v1, p0, Lcom/android/b/d;->aBA:Ljava/util/HashMap;

    .line 31
    iput-object p2, p0, Lcom/android/b/d;->aBy:Lcom/android/common/appService/CameraMember;

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/b/d;->aBA:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method protected TA()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    const-string/jumbo v0, "ON"

    return-object v0
.end method

.method protected TB()I
    .registers 2

    .prologue
    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected Tc()Lcom/android/common/setting/e;
    .registers 3

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/b/d;->Tm:Lcom/android/common/appService/W;

    iget-object v1, p0, Lcom/android/b/d;->Tm:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->rA(I)Lcom/android/common/setting/e;

    move-result-object v0

    return-object v0
.end method

.method protected Th()Ljava/lang/String;
    .registers 4

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/b/d;->Tc()Lcom/android/common/setting/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_facedetection_key"

    .line 54
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/common/custom/x;->acE()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lcom/android/common/setting/e;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/android/b/d;->TQ()Ljava/lang/String;

    move-result-object v1

    .line 43
    iget v0, p0, Lcom/android/b/d;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v2

    if-eq v0, v2, :cond_27

    .line 44
    iget-object v0, p0, Lcom/android/b/d;->Tm:Lcom/android/common/appService/W;

    iget v2, p0, Lcom/android/b/d;->Tn:I

    invoke-virtual {v0, v2}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v0

    const-string/jumbo v2, "altek-back-sub-picturesize"

    invoke-interface {v0, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    if-eqz v0, :cond_22

    :goto_21
    return-object v0

    :cond_22
    invoke-virtual {p0, v1}, Lcom/android/b/d;->UC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    .line 47
    :cond_27
    return-object v1
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 4

    .prologue
    .line 65
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0
.end method

.method protected Uh()I
    .registers 2

    .prologue
    .line 81
    const/16 v0, 0x1e

    return v0
.end method
