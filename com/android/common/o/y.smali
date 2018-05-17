.class final Lcom/android/common/o/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aeA:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 611
    iput-object p1, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 615
    iget-object v0, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    iget-object v1, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-static {v1}, Lcom/android/common/o/a;->ajO(Lcom/android/common/o/a;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/o/a;->ajV(Lcom/android/common/o/a;Landroid/animation/Animator;)Z

    move-result v0

    if-nez v0, :cond_30

    iget-object v0, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    iget-object v1, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-static {v1}, Lcom/android/common/o/a;->ajM(Lcom/android/common/o/a;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/o/a;->ajV(Lcom/android/common/o/a;Landroid/animation/Animator;)Z

    move-result v0

    .line 616
    :goto_1a
    iget-object v1, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-virtual {v1}, Lcom/android/common/o/a;->alk()Lcom/android/common/camerastate/UIState;

    move-result-object v1

    sget-object v2, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    if-ne v1, v2, :cond_26

    if-eqz v0, :cond_32

    .line 617
    :cond_26
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "Cannot go to more setting, not in setting or setting is animating."

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    return-void

    .line 615
    :cond_30
    const/4 v0, 0x1

    goto :goto_1a

    .line 620
    :cond_32
    iget-object v0, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajK(Lcom/android/common/o/a;)Lcom/android/common/o/p;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 621
    iget-object v0, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajK(Lcom/android/common/o/a;)Lcom/android/common/o/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/o/p;->alX()Z

    move-result v0

    .line 620
    if-eqz v0, :cond_50

    .line 622
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "MoreSettingsFragment is playing Animator"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void

    .line 625
    :cond_50
    iget-object v0, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "MORE"

    const-string/jumbo v2, "more"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    iget-object v0, p0, Lcom/android/common/o/y;->aeA:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->ajZ(Lcom/android/common/o/a;)V

    .line 614
    return-void
.end method
