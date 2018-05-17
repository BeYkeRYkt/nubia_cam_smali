.class Lcom/android/common/appService/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic hp:Lcom/android/common/appService/c;


# direct methods
.method private constructor <init>(Lcom/android/common/appService/c;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/common/appService/e;->hp:Lcom/android/common/appService/c;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/appService/c;Lcom/android/common/appService/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/appService/e;-><init>(Lcom/android/common/appService/c;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 157
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_16

    .line 166
    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 156
    return-void

    .line 159
    :pswitch_9
    iget-object v0, p0, Lcom/android/common/appService/e;->hp:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->is(Lcom/android/common/appService/c;)V

    goto :goto_5

    .line 163
    :pswitch_f
    iget-object v0, p0, Lcom/android/common/appService/e;->hp:Lcom/android/common/appService/c;

    invoke-static {v0}, Lcom/android/common/appService/c;->it(Lcom/android/common/appService/c;)V

    goto :goto_5

    .line 157
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_f
        :pswitch_9
    .end packed-switch
.end method
