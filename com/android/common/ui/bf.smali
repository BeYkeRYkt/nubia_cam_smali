.class final Lcom/android/common/ui/bf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field final synthetic En:Lcom/android/common/ui/HighSettingLayout;


# direct methods
.method constructor <init>(Lcom/android/common/ui/HighSettingLayout;)V
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/common/ui/bf;->En:Lcom/android/common/ui/HighSettingLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 127
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .registers 2

    .prologue
    .line 124
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .registers 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/common/ui/bf;->En:Lcom/android/common/ui/HighSettingLayout;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/ui/HighSettingLayout;->CZ(Lcom/android/common/ui/HighSettingLayout;Z)V

    .line 120
    return-void
.end method
