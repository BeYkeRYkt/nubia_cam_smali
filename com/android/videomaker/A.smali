.class final Lcom/android/videomaker/A;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aNF:Lcom/android/videomaker/LooperShowView;


# direct methods
.method constructor <init>(Lcom/android/videomaker/LooperShowView;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/videomaker/A;->aNF:Lcom/android/videomaker/LooperShowView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 116
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_24

    .line 122
    new-instance v0, Ljava/lang/AssertionError;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    .line 118
    :pswitch_d
    iget-object v0, p0, Lcom/android/videomaker/A;->aNF:Lcom/android/videomaker/LooperShowView;

    invoke-virtual {v0}, Lcom/android/videomaker/LooperShowView;->invalidate()V

    .line 119
    iget-object v0, p0, Lcom/android/videomaker/A;->aNF:Lcom/android/videomaker/LooperShowView;

    invoke-static {v0}, Lcom/android/videomaker/LooperShowView;->bdP(Lcom/android/videomaker/LooperShowView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/videomaker/A;->aNF:Lcom/android/videomaker/LooperShowView;

    invoke-static {v1}, Lcom/android/videomaker/LooperShowView;->bdQ(Lcom/android/videomaker/LooperShowView;)J

    move-result-wide v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 115
    return-void

    .line 116
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_d
    .end packed-switch
.end method
