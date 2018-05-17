.class final Lcom/android/common/M;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic akE:Lcom/android/common/t;


# direct methods
.method constructor <init>(Lcom/android/common/t;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/common/M;->akE:Lcom/android/common/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/common/M;->akE:Lcom/android/common/t;

    invoke-static {v0}, Lcom/android/common/t;->arA(Lcom/android/common/t;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "onClick "

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/android/common/M;->akE:Lcom/android/common/t;

    invoke-static {v0}, Lcom/android/common/t;->arE(Lcom/android/common/t;)Landroid/widget/RelativeLayout;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 76
    iget-object v0, p0, Lcom/android/common/M;->akE:Lcom/android/common/t;

    invoke-static {v0}, Lcom/android/common/t;->arE(Lcom/android/common/t;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3c

    .line 77
    iget-object v0, p0, Lcom/android/common/M;->akE:Lcom/android/common/t;

    invoke-static {v0}, Lcom/android/common/t;->arB(Lcom/android/common/t;)Lcom/android/common/u;

    move-result-object v0

    if-eqz v0, :cond_3c

    .line 78
    iget-object v0, p0, Lcom/android/common/M;->akE:Lcom/android/common/t;

    invoke-static {v0}, Lcom/android/common/t;->arB(Lcom/android/common/t;)Lcom/android/common/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/u;->arG()V

    .line 79
    iget-object v0, p0, Lcom/android/common/M;->akE:Lcom/android/common/t;

    invoke-static {v0}, Lcom/android/common/t;->arE(Lcom/android/common/t;)Landroid/widget/RelativeLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 73
    :cond_3c
    return-void
.end method
