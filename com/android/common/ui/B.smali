.class Lcom/android/common/ui/B;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic tY:Lcom/android/common/ui/CameraSelectButton;


# direct methods
.method private constructor <init>(Lcom/android/common/ui/CameraSelectButton;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/common/ui/B;->tY:Lcom/android/common/ui/CameraSelectButton;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/ui/CameraSelectButton;Lcom/android/common/ui/B;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/ui/B;-><init>(Lcom/android/common/ui/CameraSelectButton;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_1e

    .line 76
    :cond_5
    :goto_5
    return-void

    .line 79
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/ui/B;->tY:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {v0}, Lcom/android/common/ui/CameraSelectButton;->yo(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/C;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 80
    iget-object v0, p0, Lcom/android/common/ui/B;->tY:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {v0}, Lcom/android/common/ui/CameraSelectButton;->yo(Lcom/android/common/ui/CameraSelectButton;)Lcom/android/common/ui/C;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/ui/B;->tY:Lcom/android/common/ui/CameraSelectButton;

    invoke-static {v1}, Lcom/android/common/ui/CameraSelectButton;->yq(Lcom/android/common/ui/CameraSelectButton;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/common/ui/C;->yw(I)V

    goto :goto_5

    .line 77
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch
.end method
