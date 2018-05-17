.class Lcom/android/common/o/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/o;


# instance fields
.field final synthetic acH:Lcom/android/common/o/a;


# direct methods
.method private constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 947
    iput-object p1, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/o/a;Lcom/android/common/o/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/b;-><init>(Lcom/android/common/o/a;)V

    return-void
.end method

.method private akh()V
    .registers 4

    .prologue
    .line 956
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v1, v1, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 957
    const v1, 0x7f0a03a6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 958
    const v1, 0x7f0a0278

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 959
    const v1, 0x7f0a0277

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 960
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 955
    return-void
.end method

.method private aki(J)V
    .registers 8

    .prologue
    .line 949
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->alo()Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    if-eq v0, v1, :cond_34

    .line 950
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->acg:Lcom/android/common/ui/RotateLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 951
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajR(Lcom/android/common/o/a;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 948
    :cond_34
    return-void
.end method


# virtual methods
.method public ake()V
    .registers 4

    .prologue
    const/16 v2, 0x8

    .line 1010
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "onInterrupted"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajQ(Lcom/android/common/o/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->acg:Lcom/android/common/ui/RotateLayout;

    if-nez v0, :cond_49

    .line 1012
    :cond_19
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mShowInformationLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v2}, Lcom/android/common/o/a;->ajQ(Lcom/android/common/o/a;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " mLastTimeLayout "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v2, v2, Lcom/android/common/o/a;->acg:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    return-void

    .line 1016
    :cond_49
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajH(Lcom/android/common/o/a;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajH(Lcom/android/common/o/a;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getVisibility()I

    move-result v0

    if-nez v0, :cond_62

    .line 1017
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mT()V

    .line 1020
    :cond_62
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    if-eqz v0, :cond_6f

    .line 1021
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    invoke-virtual {v0}, Lcom/android/common/f/b;->stop()V

    .line 1024
    :cond_6f
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajQ(Lcom/android/common/o/a;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1025
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->acg:Lcom/android/common/ui/RotateLayout;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateLayout;->setVisibility(I)V

    .line 1009
    return-void
.end method

.method public akf(J)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 965
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pi()Lcom/android/common/appService/CameraMember;

    move-result-object v0

    sget-object v1, Lcom/android/common/appService/CameraMember;->jw:Lcom/android/common/appService/CameraMember;

    if-ne v0, v1, :cond_21

    .line 967
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->mS()V

    .line 969
    :cond_21
    invoke-direct {p0, p1, p2}, Lcom/android/common/o/b;->aki(J)V

    .line 970
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-virtual {v0, v2}, Lcom/android/common/o/a;->ajD(I)V

    .line 971
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajX(Lcom/android/common/o/a;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 972
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/n;->aqT(Z)V

    .line 976
    :goto_39
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->aiW()V

    .line 964
    return-void

    .line 974
    :cond_3f
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    invoke-virtual {v0, v2}, Lcom/android/common/n;->aqT(Z)V

    goto :goto_39
.end method

.method public akg(JJI)V
    .registers 7

    .prologue
    .line 982
    invoke-direct {p0, p1, p2}, Lcom/android/common/o/b;->aki(J)V

    .line 983
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-virtual {v0, p5}, Lcom/android/common/o/a;->ajE(I)V

    .line 980
    return-void
.end method

.method public onFinish()V
    .registers 4

    .prologue
    .line 988
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "onFinish"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_10

    .line 990
    return-void

    .line 993
    :cond_10
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_54

    .line 994
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enough storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v2, v2, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 995
    const-string/jumbo v2, "; stop interval"

    .line 994
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    if-eqz v0, :cond_50

    .line 997
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->abF:Lcom/android/common/n;

    invoke-virtual {v0}, Lcom/android/common/n;->stop()V

    .line 998
    :cond_50
    invoke-direct {p0}, Lcom/android/common/o/b;->akh()V

    .line 999
    return-void

    .line 1001
    :cond_54
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget v0, v0, Lcom/android/common/o/a;->abO:I

    if-nez v0, :cond_68

    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    if-eqz v0, :cond_68

    .line 1002
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajX(Lcom/android/common/o/a;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 1005
    :cond_68
    :goto_68
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 987
    return-void

    .line 1003
    :cond_70
    iget-object v0, p0, Lcom/android/common/o/b;->acH:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->acF:Lcom/android/common/f/b;

    invoke-virtual {v0}, Lcom/android/common/f/b;->aao()V

    goto :goto_68
.end method
