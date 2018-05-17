.class final Lcom/android/common/ui/aV;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/K;


# instance fields
.field final synthetic Ed:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V
    .registers 2

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/common/ui/aV;->Ed:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Am(Z)V
    .registers 4

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/common/ui/aV;->Ed:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0, p1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AE(Lcom/android/common/ui/ZtemtSlidingDrawer;Z)Z

    .line 124
    iget-object v0, p0, Lcom/android/common/ui/aV;->Ed:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AA(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 125
    iget-object v0, p0, Lcom/android/common/ui/aV;->Ed:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Az(Lcom/android/common/ui/ZtemtSlidingDrawer;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020099

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    :goto_19
    return-void

    .line 127
    :cond_1a
    iget-object v0, p0, Lcom/android/common/ui/aV;->Ed:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Az(Lcom/android/common/ui/ZtemtSlidingDrawer;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f02009a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_19
.end method
