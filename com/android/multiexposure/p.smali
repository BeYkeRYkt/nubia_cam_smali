.class Lcom/android/multiexposure/p;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic arp:Lcom/android/multiexposure/o;


# direct methods
.method private constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 906
    iput-object p1, p0, Lcom/android/multiexposure/p;->arp:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/multiexposure/o;Lcom/android/multiexposure/p;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/multiexposure/p;-><init>(Lcom/android/multiexposure/o;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 909
    iget-object v0, p0, Lcom/android/multiexposure/p;->arp:Lcom/android/multiexposure/o;

    invoke-virtual {v0}, Lcom/android/multiexposure/o;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/multiexposure/p;->arp:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDl(Lcom/android/multiexposure/o;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    return-void

    .line 910
    :cond_15
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_22

    .line 908
    :goto_1a
    return-void

    .line 912
    :pswitch_1b
    iget-object v0, p0, Lcom/android/multiexposure/p;->arp:Lcom/android/multiexposure/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/o;->aDj(Z)V

    goto :goto_1a

    .line 910
    :pswitch_data_22
    .packed-switch 0x3ec
        :pswitch_1b
    .end packed-switch
.end method
