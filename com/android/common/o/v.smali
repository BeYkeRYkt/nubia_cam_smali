.class final Lcom/android/common/o/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic aex:Lcom/android/common/o/a;


# direct methods
.method constructor <init>(Lcom/android/common/o/a;)V
    .registers 2

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/common/o/v;->aex:Lcom/android/common/o/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 466
    iget-object v0, p0, Lcom/android/common/o/v;->aex:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    if-eqz v0, :cond_1f

    .line 467
    iget-object v0, p0, Lcom/android/common/o/v;->aex:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pu()Lcom/android/common/cameradevice/j;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 468
    iget-object v0, p0, Lcom/android/common/o/v;->aex:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    invoke-static {v0}, Lcom/android/common/h;->aqg(Lcom/android/common/appService/W;)V

    .line 469
    :cond_17
    iget-object v0, p0, Lcom/android/common/o/v;->aex:Lcom/android/common/o/a;

    iget-object v0, v0, Lcom/android/common/o/a;->adt:Lcom/android/common/appService/W;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->re(Z)V

    .line 465
    :cond_1f
    return-void
.end method
