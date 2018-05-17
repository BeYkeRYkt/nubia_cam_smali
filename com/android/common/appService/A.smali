.class Lcom/android/common/appService/A;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic iW:Lcom/android/common/appService/z;


# direct methods
.method private constructor <init>(Lcom/android/common/appService/z;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/common/appService/A;->iW:Lcom/android/common/appService/z;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/appService/z;Lcom/android/common/appService/A;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/appService/A;-><init>(Lcom/android/common/appService/z;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 28
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 27
    :goto_5
    return-void

    .line 30
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/appService/A;->iW:Lcom/android/common/appService/z;

    invoke-static {v0}, Lcom/android/common/appService/z;->lP(Lcom/android/common/appService/z;)V

    goto :goto_5

    .line 28
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
