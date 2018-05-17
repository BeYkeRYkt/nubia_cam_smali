.class final Lcom/android/common/ui/aW;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AA(Lcom/android/common/ui/ZtemtSlidingDrawer;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 169
    iget-object v0, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ay(Lcom/android/common/ui/ZtemtSlidingDrawer;)Lcom/android/common/ui/L;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 170
    iget-object v0, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ay(Lcom/android/common/ui/ZtemtSlidingDrawer;)Lcom/android/common/ui/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/ui/L;->AI()V

    .line 171
    :cond_19
    iget-object v0, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AG(Lcom/android/common/ui/ZtemtSlidingDrawer;)V

    .line 167
    :goto_1e
    return-void

    .line 173
    :cond_1f
    iget-object v0, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ay(Lcom/android/common/ui/ZtemtSlidingDrawer;)Lcom/android/common/ui/L;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 174
    iget-object v0, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ay(Lcom/android/common/ui/ZtemtSlidingDrawer;)Lcom/android/common/ui/L;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/ui/L;->AH()V

    .line 175
    :cond_30
    iget-object v0, p0, Lcom/android/common/ui/aW;->Ee:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0}, Lcom/android/common/ui/ZtemtSlidingDrawer;->AF(Lcom/android/common/ui/ZtemtSlidingDrawer;)V

    goto :goto_1e
.end method
