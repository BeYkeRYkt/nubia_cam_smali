.class final Lcom/android/common/o/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aez:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 599
    iput-object p1, p0, Lcom/android/common/o/x;->aez:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/common/o/x;->aez:Lcom/android/common/o/a;

    invoke-virtual {v0}, Lcom/android/common/o/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string/jumbo v1, "setting_close"

    const-string/jumbo v2, "close_click"

    invoke-static {v0, v1, v2}, Lcom/android/common/h;->aoP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/android/common/o/x;->aez:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->aka(Lcom/android/common/o/a;)V

    .line 602
    return-void
.end method
