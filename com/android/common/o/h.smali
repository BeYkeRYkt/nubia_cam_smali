.class Lcom/android/common/o/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/u;


# instance fields
.field final synthetic adn:Lcom/android/common/o/e;


# direct methods
.method private constructor <init>(Lcom/android/common/o/e;)V
    .registers 2

    .prologue
    .line 746
    iput-object p1, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/o/e;Lcom/android/common/o/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/o/h;-><init>(Lcom/android/common/o/e;)V

    return-void
.end method


# virtual methods
.method public xf()V
    .registers 4

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_10

    .line 756
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 755
    if-eqz v0, :cond_34

    .line 757
    :cond_10
    const-string/jumbo v1, "BaseBottomBarFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Appservice null: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    if-nez v0, :cond_32

    const/4 v0, 0x1

    :goto_26
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    return-void

    .line 757
    :cond_32
    const/4 v0, 0x0

    goto :goto_26

    .line 761
    :cond_34
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-static {v0}, Lcom/android/common/o/e;->alg(Lcom/android/common/o/e;)V

    .line 754
    return-void
.end method

.method public xg(Z)V
    .registers 3

    .prologue
    .line 750
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pL(Z)V

    .line 749
    return-void
.end method

.method public xh()V
    .registers 7

    .prologue
    const v5, 0x7f0a04d6

    const v4, 0x7f0a04d5

    const v3, 0x7f0a0498

    const/4 v2, 0x0

    .line 766
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_1a

    .line 767
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    .line 766
    if-eqz v0, :cond_1b

    .line 768
    :cond_1a
    return-void

    .line 770
    :cond_1b
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->acZ:Lcom/android/common/ui/ZtemtShutterButton;

    invoke-virtual {v0}, Lcom/android/common/ui/ZtemtShutterButton;->isLongClickable()Z

    move-result v0

    if-eqz v0, :cond_df

    .line 771
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pN()Lcom/android/common/setting/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/setting/o;->XI()Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 772
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_4b

    .line 773
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    .line 765
    :goto_4a
    return-void

    .line 775
    :cond_4b
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 776
    iget-object v1, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v1, v3}, Lcom/android/common/o/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4a

    .line 779
    :cond_5f
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hR()Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    move-result-object v0

    .line 780
    sget-object v1, Lcom/android/common/appService/IDualCameraControl$DualCameraMode;->ha:Lcom/android/common/appService/IDualCameraControl$DualCameraMode;

    .line 779
    if-ne v0, v1, :cond_9f

    .line 781
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_8b

    .line 782
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    goto :goto_4a

    .line 784
    :cond_8b
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 785
    iget-object v1, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v1, v5}, Lcom/android/common/o/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 784
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_4a

    .line 788
    :cond_9f
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qX()Z

    move-result v0

    if-eqz v0, :cond_d6

    .line 789
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asf()Z

    move-result v0

    if-eqz v0, :cond_c1

    .line 790
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/common/j;->aqr(Landroid/app/Activity;I)V

    goto :goto_4a

    .line 792
    :cond_c1
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v0}, Lcom/android/common/o/e;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 793
    iget-object v1, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-virtual {v1, v4}, Lcom/android/common/o/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 792
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4a

    .line 797
    :cond_d6
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    iget-object v0, v0, Lcom/android/common/o/e;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rB()V

    goto/16 :goto_4a

    .line 800
    :cond_df
    iget-object v0, p0, Lcom/android/common/o/h;->adn:Lcom/android/common/o/e;

    invoke-static {v0}, Lcom/android/common/o/e;->alg(Lcom/android/common/o/e;)V

    goto/16 :goto_4a
.end method
