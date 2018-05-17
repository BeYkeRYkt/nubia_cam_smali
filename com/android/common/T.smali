.class final Lcom/android/common/T;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic akM:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/common/T;->akM:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/16 v2, 0x2710

    .line 371
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 372
    const-string/jumbo v1, "com.nubia_bt.capture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 373
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "receive nubia_bt capture"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 375
    iget-object v1, p0, Lcom/android/common/T;->akM:Lcom/android/common/ActivityBase;

    invoke-virtual {v1, v2, v0}, Lcom/android/common/ActivityBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 370
    :cond_23
    return-void
.end method
