.class Lcom/android/video/g;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aHK:Lcom/android/video/d;


# direct methods
.method private constructor <init>(Lcom/android/video/d;)V
    .registers 2

    .prologue
    .line 980
    iput-object p1, p0, Lcom/android/video/g;->aHK:Lcom/android/video/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/video/d;Lcom/android/video/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/video/g;-><init>(Lcom/android/video/d;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .prologue
    .line 983
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_28

    .line 989
    const-string/jumbo v0, "VideoRecordManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unhandled message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    :goto_21
    return-void

    .line 985
    :pswitch_22
    iget-object v0, p0, Lcom/android/video/g;->aHK:Lcom/android/video/d;

    invoke-static {v0}, Lcom/android/video/d;->aWF(Lcom/android/video/d;)V

    goto :goto_21

    .line 983
    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_22
    .end packed-switch
.end method
