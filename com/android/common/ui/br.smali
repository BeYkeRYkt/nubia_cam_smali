.class final Lcom/android/common/ui/br;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic ED:Lcom/android/common/ui/an;

.field final synthetic EE:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/an;Landroid/widget/TextView;)V
    .registers 3

    .prologue
    .line 184
    iput-object p1, p0, Lcom/android/common/ui/br;->ED:Lcom/android/common/ui/an;

    iput-object p2, p0, Lcom/android/common/ui/br;->EE:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/common/ui/br;->EE:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 186
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 190
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 192
    return-void
.end method
