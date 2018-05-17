.class final Lcom/android/common/o/O;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aeQ:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 307
    iput-object p1, p0, Lcom/android/common/o/O;->aeQ:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/common/o/O;->aeQ:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->ams(Lcom/android/common/o/p;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 311
    iget-object v0, p0, Lcom/android/common/o/O;->aeQ:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->nk(Z)Z

    .line 309
    :goto_14
    return-void

    .line 313
    :cond_15
    iget-object v0, p0, Lcom/android/common/o/O;->aeQ:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_14
.end method
