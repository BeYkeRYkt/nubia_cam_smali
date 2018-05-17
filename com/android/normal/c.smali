.class public Lcom/android/normal/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic baW:Lcom/android/normal/b;


# direct methods
.method public constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/normal/c;->baW:Lcom/android/normal/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 576
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 575
    :goto_5
    return-void

    .line 578
    :pswitch_6
    iget-object v0, p0, Lcom/android/normal/c;->baW:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsg(Lcom/android/normal/b;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 579
    iget-object v0, p0, Lcom/android/normal/c;->baW:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsg(Lcom/android/normal/b;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 580
    iget-object v0, p0, Lcom/android/normal/c;->baW:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsg(Lcom/android/normal/b;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    goto :goto_5

    .line 576
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
