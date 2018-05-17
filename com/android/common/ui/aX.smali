.class final Lcom/android/common/ui/aX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic Ef:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/common/ui/ZtemtSlidingDrawer;)V
    .registers 2

    .prologue
    .line 206
    iput-object p1, p0, Lcom/android/common/ui/aX;->Ef:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/common/ui/aX;->Ef:Lcom/android/common/ui/ZtemtSlidingDrawer;

    invoke-static {v0, p3}, Lcom/android/common/c/l;->hE(Lcom/android/common/ui/ZtemtSlidingDrawer;I)Lcom/android/common/c/a;

    move-result-object v0

    .line 210
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/common/c/e;->hr(Lcom/android/common/c/a;)V

    .line 208
    return-void
.end method
