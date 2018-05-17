.class final Lcom/android/video/y;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic aIO:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 948
    iput-object p1, p0, Lcom/android/video/y;->aIO:Lcom/android/video/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 952
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 953
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 954
    iget-object v0, p0, Lcom/android/video/y;->aIO:Lcom/android/video/n;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/video/n;->aXV(Lcom/android/video/n;Z)V

    .line 951
    :cond_13
    return-void
.end method
