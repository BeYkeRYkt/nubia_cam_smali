.class public Lcom/android/d/k;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# instance fields
.field private aGj:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/d/k;->aGj:Ljava/util/HashMap;

    .line 19
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 63
    const/16 v0, 0x14

    return v0
.end method

.method protected To()Ljava/lang/String;
    .registers 4

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/d/k;->aGj:Ljava/util/HashMap;

    const-string/jumbo v1, "4:3"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 46
    if-nez v0, :cond_20

    .line 48
    const-string/jumbo v0, "4:3"

    .line 49
    invoke-virtual {p0}, Lcom/android/d/k;->Tp()Ljava/util/List;

    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/android/d/k;->Tq(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/d/k;->aGj:Ljava/util/HashMap;

    const-string/jumbo v2, "4:3"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_20
    iget v1, p0, Lcom/android/d/k;->Tn:I

    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v2

    if-ne v1, v2, :cond_44

    .line 54
    iget-object v1, p0, Lcom/android/d/k;->Tm:Lcom/android/common/appService/W;

    iget v2, p0, Lcom/android/d/k;->Tn:I

    invoke-virtual {v1, v2}, Lcom/android/common/appService/W;->qm(I)Lcom/android/common/cameradevice/p;

    move-result-object v1

    const-string/jumbo v2, "altek-back-sub-picturesize"

    invoke-interface {v1, v2}, Lcom/android/common/cameradevice/p;->Lh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    if-eqz v1, :cond_3f

    move-object v0, v1

    :goto_3e
    return-object v0

    :cond_3f
    invoke-virtual {p0, v0}, Lcom/android/d/k;->UC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3e

    .line 58
    :cond_44
    return-object v0
.end method

.method protected Tu()Ljava/lang/String;
    .registers 2

    .prologue
    .line 35
    const-string/jumbo v0, "on"

    return-object v0
.end method

.method protected Tw()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 4

    .prologue
    .line 74
    new-instance v0, Lcom/android/common/custom/v;

    const/16 v1, 0x500

    const/16 v2, 0x3c0

    invoke-direct {v0, v1, v2}, Lcom/android/common/custom/v;-><init>(II)V

    return-object v0
.end method

.method protected Uh()I
    .registers 2

    .prologue
    .line 40
    const/16 v0, 0x1e

    return v0
.end method

.method protected Um()I
    .registers 2

    .prologue
    .line 30
    const/4 v0, 0x2

    return v0
.end method
