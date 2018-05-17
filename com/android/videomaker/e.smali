.class Lcom/android/videomaker/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aKV:Lcom/android/videomaker/b;


# direct methods
.method private constructor <init>(Lcom/android/videomaker/b;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcom/android/videomaker/e;->aKV:Lcom/android/videomaker/b;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/videomaker/b;Lcom/android/videomaker/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/videomaker/e;-><init>(Lcom/android/videomaker/b;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 146
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    .line 145
    :cond_5
    :goto_5
    return-void

    .line 148
    :pswitch_6
    iget-object v0, p0, Lcom/android/videomaker/e;->aKV:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->baj(Lcom/android/videomaker/b;)Lcom/android/videomaker/c;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 149
    iget-object v0, p0, Lcom/android/videomaker/e;->aKV:Lcom/android/videomaker/b;

    invoke-static {v0}, Lcom/android/videomaker/b;->baj(Lcom/android/videomaker/b;)Lcom/android/videomaker/c;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/videomaker/c;->ban()V

    goto :goto_5

    .line 146
    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
