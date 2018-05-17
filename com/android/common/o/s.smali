.class final Lcom/android/common/o/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic aeu:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 413
    iput-object p1, p0, Lcom/android/common/o/s;->aeu:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/common/o/s;->aeu:Lcom/android/common/o/a;

    iget-boolean v0, v0, Lcom/android/common/o/a;->adv:Z

    if-eqz v0, :cond_10

    .line 418
    const-string/jumbo v0, "AbstractFamilyMemberFragment"

    const-string/jumbo v1, "BacklightTipDialog be click when fragment is pause"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    return-void

    .line 421
    :cond_10
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 422
    iget-object v0, p0, Lcom/android/common/o/s;->aeu:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->aqf(Lcom/android/common/appService/W;)V

    .line 423
    iget-object v0, p0, Lcom/android/common/o/s;->aeu:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->re(Z)V

    .line 424
    iget-object v0, p0, Lcom/android/common/o/s;->aeu:Lcom/android/common/o/a;

    invoke-static {v0}, Lcom/android/common/o/a;->akc(Lcom/android/common/o/a;)V

    .line 416
    return-void
.end method
