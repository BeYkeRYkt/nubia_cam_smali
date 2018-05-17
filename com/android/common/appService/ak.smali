.class final Lcom/android/common/appService/ak;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic nm:Lcom/android/common/appService/q;


# direct methods
.method constructor <init>(Lcom/android/common/appService/q;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/common/appService/ak;->nm:Lcom/android/common/appService/q;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_26

    .line 109
    :goto_6
    return-void

    .line 112
    :pswitch_7
    iget-object v0, p0, Lcom/android/common/appService/ak;->nm:Lcom/android/common/appService/q;

    invoke-virtual {v0}, Lcom/android/common/appService/q;->kn()V

    goto :goto_6

    .line 115
    :pswitch_d
    iget-object v0, p0, Lcom/android/common/appService/ak;->nm:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->ky(Lcom/android/common/appService/q;)Lcom/android/common/ui/ZoomSeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/ui/ZoomSeekBar;->zQ(I)V

    .line 116
    iget-object v0, p0, Lcom/android/common/appService/ak;->nm:Lcom/android/common/appService/q;

    invoke-static {v0}, Lcom/android/common/appService/q;->kw(Lcom/android/common/appService/q;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/ak;->nm:Lcom/android/common/appService/q;

    invoke-static {v1, v2}, Lcom/android/common/appService/q;->kA(Lcom/android/common/appService/q;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 110
    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_7
        :pswitch_d
    .end packed-switch
.end method
