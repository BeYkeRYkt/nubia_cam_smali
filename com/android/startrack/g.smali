.class public final Lcom/android/startrack/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# instance fields
.field private aRk:Lcom/android/common/appService/W;

.field private aRl:Lcom/android/common/camerastate/a;

.field private aRm:Lcom/android/startrack/h;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/startrack/h;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    .line 21
    iput-object v0, p0, Lcom/android/startrack/g;->aRm:Lcom/android/startrack/h;

    .line 22
    iput-object v0, p0, Lcom/android/startrack/g;->aRl:Lcom/android/common/camerastate/a;

    .line 25
    iput-object p1, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    .line 26
    iput-object p2, p0, Lcom/android/startrack/g;->aRm:Lcom/android/startrack/h;

    .line 24
    return-void
.end method

.method private bhH()I
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qd()I

    move-result v0

    return v0
.end method

.method private bhI()Lcom/android/common/camerastate/a;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pl()Lcom/android/common/camerastate/a;

    move-result-object v0

    return-object v0
.end method

.method private bhJ()I
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qc()I

    move-result v0

    return v0
.end method

.method private bhK()Z
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    return v0
.end method

.method private bhL(I)V
    .registers 3

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->rb(I)V

    .line 78
    return-void
.end method

.method private bhM()V
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pA()V

    .line 74
    return-void
.end method


# virtual methods
.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .registers 5

    .prologue
    .line 33
    const-string/jumbo v0, "wq"

    const-string/jumbo v1, "====================================onPictureTaken"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    invoke-direct {p0}, Lcom/android/startrack/g;->bhK()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 35
    return-void

    .line 37
    :cond_10
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qn(Z)V

    .line 39
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qb(I)V

    .line 40
    const-string/jumbo v0, "on"

    iget-object v1, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 41
    const-string/jumbo v0, "JpegPictureCallback"

    const-string/jumbo v1, "In onPictureTaken , in zslmode"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->WJ()V

    .line 43
    iget-object v0, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rv()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/startrack/g;->bhL(I)V

    .line 46
    :cond_4a
    const-string/jumbo v0, "off"

    iget-object v1, p0, Lcom/android/startrack/g;->aRk:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pt()Lcom/android/common/cameradevice/p;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/common/cameradevice/p;->Nm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 47
    invoke-direct {p0}, Lcom/android/startrack/g;->bhJ()I

    move-result v0

    invoke-direct {p0}, Lcom/android/startrack/g;->bhH()I

    move-result v1

    if-ne v0, v1, :cond_8d

    .line 48
    invoke-direct {p0}, Lcom/android/startrack/g;->bhM()V

    .line 53
    :cond_6a
    :goto_6a
    invoke-direct {p0}, Lcom/android/startrack/g;->bhJ()I

    move-result v0

    invoke-direct {p0}, Lcom/android/startrack/g;->bhH()I

    move-result v1

    if-ne v0, v1, :cond_7b

    .line 54
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 57
    :cond_7b
    iget-object v0, p0, Lcom/android/startrack/g;->aRm:Lcom/android/startrack/h;

    if-eqz v0, :cond_8c

    iget-object v0, p0, Lcom/android/startrack/g;->aRm:Lcom/android/startrack/h;

    iget-object v0, v0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    if-eqz v0, :cond_8c

    .line 58
    iget-object v0, p0, Lcom/android/startrack/g;->aRm:Lcom/android/startrack/h;

    iget-object v0, v0, Lcom/android/startrack/h;->aRq:Lcom/android/startrack/b;

    invoke-virtual {v0, p1}, Lcom/android/startrack/b;->bhy([B)Z

    .line 31
    :cond_8c
    return-void

    .line 49
    :cond_8d
    invoke-direct {p0}, Lcom/android/startrack/g;->bhJ()I

    move-result v0

    invoke-direct {p0}, Lcom/android/startrack/g;->bhH()I

    move-result v1

    if-ne v0, v1, :cond_6a

    .line 50
    invoke-direct {p0}, Lcom/android/startrack/g;->bhI()Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amJ(Lcom/android/common/camerastate/DeviceState;)V

    goto :goto_6a
.end method
