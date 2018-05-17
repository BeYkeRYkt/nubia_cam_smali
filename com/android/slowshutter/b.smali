.class public Lcom/android/slowshutter/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aye:Lcom/android/slowshutter/a;


# direct methods
.method public constructor <init>(Lcom/android/slowshutter/a;)V
    .registers 2

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/slowshutter/b;->aye:Lcom/android/slowshutter/a;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 242
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_2e

    .line 241
    :goto_5
    return-void

    .line 244
    :pswitch_6
    iget-object v0, p0, Lcom/android/slowshutter/b;->aye:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aMZ(Lcom/android/slowshutter/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->setVisibility(I)V

    .line 245
    iget-object v0, p0, Lcom/android/slowshutter/b;->aye:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aMZ(Lcom/android/slowshutter/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->Am:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 246
    iget-object v0, p0, Lcom/android/slowshutter/b;->aye:Lcom/android/slowshutter/a;

    invoke-static {v0}, Lcom/android/slowshutter/a;->aMZ(Lcom/android/slowshutter/a;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/common/ui/MultiFunctionImageView;->Ex(IZ)V

    goto :goto_5

    .line 242
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
