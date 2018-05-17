.class final Lcom/android/common/ui/bj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Es:Lcom/android/common/ui/EffectPage;

.field final synthetic Et:I

.field final synthetic Eu:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/EffectPage;ILandroid/widget/TextView;)V
    .registers 4

    .prologue
    .line 451
    iput-object p1, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    iput p2, p0, Lcom/android/common/ui/bj;->Et:I

    iput-object p3, p0, Lcom/android/common/ui/bj;->Eu:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 455
    iget-object v0, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v0}, Lcom/android/common/ui/EffectPage;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_13

    .line 456
    const-string/jumbo v0, "FunEffectPage"

    const-string/jumbo v1, "page is not visible, just return"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    return-void

    .line 459
    :cond_13
    iget-object v0, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-static {v0}, Lcom/android/common/ui/EffectPage;->Eb(Lcom/android/common/ui/EffectPage;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    iget v1, p0, Lcom/android/common/ui/bj;->Et:I

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 460
    iget-object v0, p0, Lcom/android/common/ui/bj;->Eu:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-static {v1}, Lcom/android/common/ui/EffectPage;->Ea(Lcom/android/common/ui/EffectPage;)Landroid/widget/TextView;

    move-result-object v1

    if-eq v0, v1, :cond_48

    .line 461
    iget-object v0, p0, Lcom/android/common/ui/bj;->Eu:Landroid/widget/TextView;

    const v1, 0x7f0200b3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 462
    iget-object v0, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-static {v0}, Lcom/android/common/ui/EffectPage;->Ea(Lcom/android/common/ui/EffectPage;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_41

    .line 463
    iget-object v0, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-static {v0}, Lcom/android/common/ui/EffectPage;->Ea(Lcom/android/common/ui/EffectPage;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 465
    :cond_41
    iget-object v0, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    iget-object v1, p0, Lcom/android/common/ui/bj;->Eu:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/android/common/ui/EffectPage;->Ef(Lcom/android/common/ui/EffectPage;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 468
    :cond_48
    iget-object v0, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    iget v1, p0, Lcom/android/common/ui/bj;->Et:I

    invoke-static {v0, v1}, Lcom/android/common/ui/EffectPage;->Ei(Lcom/android/common/ui/EffectPage;I)V

    .line 469
    iget-object v0, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    iget-object v1, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-virtual {v1}, Lcom/android/common/ui/EffectPage;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 470
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "effect_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-static {v3}, Lcom/android/common/ui/EffectPage;->Eb(Lcom/android/common/ui/EffectPage;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 471
    iget-object v3, p0, Lcom/android/common/ui/bj;->Es:Lcom/android/common/ui/EffectPage;

    invoke-static {v3}, Lcom/android/common/ui/EffectPage;->Eb(Lcom/android/common/ui/EffectPage;)Lcom/android/common/setting/ListPreference;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/setting/ListPreference;->Vu()Ljava/lang/String;

    move-result-object v3

    .line 469
    invoke-static {v0, v1, v2, v3}, Lcom/android/common/ui/EffectPage;->Ej(Lcom/android/common/ui/EffectPage;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    return-void
.end method
