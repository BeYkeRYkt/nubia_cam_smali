.class public Lcom/android/camera/i;
.super Lcom/android/common/appService/H;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/common/appService/y;)V
    .registers 3

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/common/appService/H;-><init>(Landroid/app/Activity;Lcom/android/common/appService/y;)V

    .line 34
    return-void
.end method


# virtual methods
.method public aBy(ILcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/W;)V
    .registers 10

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/android/camera/i;->kg:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 41
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_3e

    .line 42
    iget-object v0, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v0, v0, Lcom/android/common/appService/I;->kj:Lcom/android/common/appService/CameraMember;

    .line 43
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kj:Lcom/android/common/appService/CameraMember;

    if-ne v1, p2, :cond_30

    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget v1, v1, Lcom/android/common/appService/I;->kk:I

    if-ne v1, p1, :cond_30

    .line 44
    const-string/jumbo v1, "CameraFamilyManager"

    const-string/jumbo v2, "Member need to be show equals to Current display memeber. Do nothing, just return."

    invoke-static {v1, v2}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v1, p3, v0, p2}, Lcom/android/common/o/a;->aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 46
    return-void

    .line 49
    :cond_30
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v1}, Lcom/android/common/o/a;->aik()V

    .line 50
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v2, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 53
    :cond_3e
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_103

    .line 54
    const-string/jumbo v1, "CameraFamilyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch member: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v4, v4, Lcom/android/common/appService/I;->kj:Lcom/android/common/appService/CameraMember;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget v4, v4, Lcom/android/common/appService/I;->kk:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") -> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    const-string/jumbo v4, ", "

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    const-string/jumbo v4, ")"

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_8c
    invoke-virtual {p4}, Lcom/android/common/appService/W;->pJ()Lcom/android/common/independentFocusExposure/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/independentFocusExposure/g;->dC()V

    .line 61
    invoke-virtual {p4}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v3

    invoke-virtual {p4}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v4

    .line 62
    invoke-virtual {p4}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    if-eqz v1, :cond_131

    invoke-virtual {p4}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v1

    .line 61
    :goto_a9
    invoke-virtual {v3, v4, p1, p2, v1}, Lcom/android/common/setting/g;->UW(Landroid/content/Context;ILcom/android/common/appService/CameraMember;Z)V

    .line 63
    invoke-virtual {p4}, Lcom/android/common/appService/W;->qA()Lcom/android/common/setting/g;

    move-result-object v1

    invoke-virtual {p4}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/common/setting/g;->UY(Landroid/content/Context;ILcom/android/common/appService/CameraMember;)V

    .line 64
    invoke-virtual {p4}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asU()V

    .line 66
    new-instance v1, Lcom/android/common/appService/I;

    iget-object v3, p0, Lcom/android/camera/i;->ki:Lcom/android/common/appService/y;

    invoke-interface {v3, p1, p2}, Lcom/android/common/appService/y;->lI(ILcom/android/common/appService/CameraMember;)Lcom/android/common/o/a;

    move-result-object v3

    invoke-direct {v1, p0, p1, p2, v3}, Lcom/android/common/appService/I;-><init>(Lcom/android/common/appService/H;ILcom/android/common/appService/CameraMember;Lcom/android/common/o/a;)V

    iput-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    .line 67
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    if-eqz v1, :cond_dc

    .line 68
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    const-string/jumbo v3, "currentFragment"

    const v4, 0x7f10004f

    invoke-virtual {v2, v4, v1, v3}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 70
    :cond_dc
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 71
    iget-object v1, p0, Lcom/android/camera/i;->kh:Lcom/android/common/appService/I;

    iget-object v1, v1, Lcom/android/common/appService/I;->kl:Lcom/android/common/o/a;

    invoke-virtual {v1, p3, v0, p2}, Lcom/android/common/o/a;->aij(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 74
    invoke-virtual {p4}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v1

    if-eqz v1, :cond_fb

    .line 75
    invoke-virtual {p4}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/ActivityBase;->asV()Lcom/android/common/appService/T;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/T;->oH()V

    .line 78
    :cond_fb
    invoke-virtual {p4}, Lcom/android/common/appService/W;->qJ()Lcom/android/common/appService/i;

    move-result-object v1

    invoke-virtual {v1, v0, p2}, Lcom/android/common/appService/i;->iL(Lcom/android/common/appService/CameraMember;Lcom/android/common/appService/CameraMember;)V

    .line 38
    return-void

    .line 57
    :cond_103
    const-string/jumbo v1, "CameraFamilyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "switch member: (-1, -1) -> ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8c

    .line 62
    :cond_131
    const/4 v1, 0x0

    goto/16 :goto_a9
.end method
