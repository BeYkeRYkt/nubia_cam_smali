.class public Lcom/android/multiexposure/q;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field arq:Lcom/android/multiexposure/o;


# direct methods
.method public constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 8
    const-string/jumbo v0, "MultiExposureFragmentHandler"

    iput-object v0, p0, Lcom/android/multiexposure/q;->TAG:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/multiexposure/q;->arq:Lcom/android/multiexposure/o;

    .line 12
    iput-object p1, p0, Lcom/android/multiexposure/q;->arq:Lcom/android/multiexposure/o;

    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 18
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    .line 16
    :goto_8
    return-void

    .line 21
    :pswitch_9
    iget-object v0, p0, Lcom/android/multiexposure/q;->arq:Lcom/android/multiexposure/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/o;->aCE(Z)V

    goto :goto_8

    .line 18
    :pswitch_data_10
    .packed-switch 0x2
        :pswitch_9
    .end packed-switch
.end method
