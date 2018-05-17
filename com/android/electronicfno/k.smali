.class public Lcom/android/electronicfno/k;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aVT:Lcom/android/electronicfno/i;


# direct methods
.method public constructor <init>(Lcom/android/electronicfno/i;)V
    .registers 2

    .prologue
    .line 642
    iput-object p1, p0, Lcom/android/electronicfno/k;->aVT:Lcom/android/electronicfno/i;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 645
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_32

    .line 644
    :cond_5
    :goto_5
    return-void

    .line 647
    :sswitch_6
    iget-object v0, p0, Lcom/android/electronicfno/k;->aVT:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnK(Lcom/android/electronicfno/i;)V

    goto :goto_5

    .line 650
    :sswitch_c
    iget-object v0, p0, Lcom/android/electronicfno/k;->aVT:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnH(Lcom/android/electronicfno/i;)Lcom/android/common/ui/ZtemtShutterButton;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 651
    iget-object v0, p0, Lcom/android/electronicfno/k;->aVT:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnH(Lcom/android/electronicfno/i;)Lcom/android/common/ui/ZtemtShutterButton;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtShutterButton;->setEnabled(Z)V

    goto :goto_5

    .line 655
    :sswitch_1f
    iget-object v0, p0, Lcom/android/electronicfno/k;->aVT:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnG(Lcom/android/electronicfno/i;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    goto :goto_5

    .line 658
    :sswitch_2b
    iget-object v0, p0, Lcom/android/electronicfno/k;->aVT:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnM(Lcom/android/electronicfno/i;)V

    goto :goto_5

    .line 645
    nop

    :sswitch_data_32
    .sparse-switch
        0x3 -> :sswitch_c
        0x5 -> :sswitch_1f
        0x6 -> :sswitch_2b
        0x4a -> :sswitch_6
    .end sparse-switch
.end method
