.class Lcom/android/common/appService/w;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic iL:Lcom/android/common/appService/t;


# direct methods
.method private constructor <init>(Lcom/android/common/appService/t;)V
    .registers 2

    .prologue
    .line 596
    iput-object p1, p0, Lcom/android/common/appService/w;->iL:Lcom/android/common/appService/t;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/appService/t;Lcom/android/common/appService/w;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/appService/w;-><init>(Lcom/android/common/appService/t;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/common/appService/w;->iL:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lA(Lcom/android/common/appService/t;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 600
    return-void

    .line 602
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_38

    .line 598
    :goto_e
    return-void

    .line 604
    :pswitch_f
    iget-object v0, p0, Lcom/android/common/appService/w;->iL:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lB(Lcom/android/common/appService/t;)V

    .line 605
    iget-object v0, p0, Lcom/android/common/appService/w;->iL:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lt(Lcom/android/common/appService/t;)Lcom/android/common/ui/EffectPage;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->setVisibility(I)V

    goto :goto_e

    .line 608
    :pswitch_20
    iget-object v0, p0, Lcom/android/common/appService/w;->iL:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lC(Lcom/android/common/appService/t;)V

    goto :goto_e

    .line 611
    :pswitch_26
    iget-object v0, p0, Lcom/android/common/appService/w;->iL:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lD(Lcom/android/common/appService/t;)V

    goto :goto_e

    .line 614
    :pswitch_2c
    iget-object v0, p0, Lcom/android/common/appService/w;->iL:Lcom/android/common/appService/t;

    invoke-static {v0}, Lcom/android/common/appService/t;->lt(Lcom/android/common/appService/t;)Lcom/android/common/ui/EffectPage;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/EffectPage;->setVisibility(I)V

    goto :goto_e

    .line 602
    nop

    :pswitch_data_38
    .packed-switch 0x65
        :pswitch_26
        :pswitch_2c
        :pswitch_f
        :pswitch_20
    .end packed-switch
.end method
