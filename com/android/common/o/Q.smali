.class final Lcom/android/common/o/Q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic aeS:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asO()V

    .line 348
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->mV()V

    .line 349
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->ams(Lcom/android/common/o/p;)Z

    move-result v0

    if-nez v0, :cond_6a

    .line 350
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->ne()V

    .line 354
    :goto_29
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nt()V

    .line 355
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->np()V

    .line 357
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amu(Lcom/android/common/o/p;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_60

    .line 358
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    iget-object v1, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    invoke-virtual {v1}, Lcom/android/common/o/p;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    const v3, 0x7f0a0431

    invoke-virtual {v2, v3}, Lcom/android/common/o/p;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 360
    const/4 v3, 0x0

    .line 358
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/o/p;->amy(Lcom/android/common/o/p;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 362
    :cond_60
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amu(Lcom/android/common/o/p;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 346
    return-void

    .line 352
    :cond_6a
    iget-object v0, p0, Lcom/android/common/o/Q;->aeS:Lcom/android/common/o/p;

    invoke-virtual {v0}, Lcom/android/common/o/p;->notifyDataSetChanged()V

    goto :goto_29
.end method
