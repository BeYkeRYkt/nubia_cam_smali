.class final Lcom/android/common/ui/bs;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic EF:Lcom/android/common/ui/FaceView;


# direct methods
.method constructor <init>(Lcom/android/common/ui/FaceView;)V
    .registers 2

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/common/ui/bs;->EF:Lcom/android/common/ui/FaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 198
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 197
    :goto_5
    return-void

    .line 200
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/ui/bs;->EF:Lcom/android/common/ui/FaceView;

    invoke-virtual {v0}, Lcom/android/common/ui/FaceView;->clear()V

    goto :goto_5

    .line 198
    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
