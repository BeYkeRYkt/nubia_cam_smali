.class final Lcom/android/video/z;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic aIP:Lcom/android/video/n;


# direct methods
.method constructor <init>(Lcom/android/video/n;)V
    .registers 2

    .prologue
    .line 965
    iput-object p1, p0, Lcom/android/video/z;->aIP:Lcom/android/video/n;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 969
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 970
    const-string/jumbo v1, "android.media.action.STOP_CAMCORDER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 968
    :cond_d
    :goto_d
    return-void

    .line 972
    :cond_e
    const-string/jumbo v1, "com.android.mms.NOTIFY_RECEIVER_SMS_OR_MMS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 973
    iget-object v0, p0, Lcom/android/video/z;->aIP:Lcom/android/video/n;

    invoke-static {v0}, Lcom/android/video/n;->aXM(Lcom/android/video/n;)Lcom/android/video/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/video/d;->getState()I

    move-result v0

    .line 974
    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    .line 975
    const/4 v1, 0x3

    if-ne v0, v1, :cond_30

    .line 977
    :cond_27
    :goto_27
    iget-object v0, p0, Lcom/android/video/z;->aIP:Lcom/android/video/n;

    const v1, 0x186a1

    invoke-static {v0, v1}, Lcom/android/video/n;->aXU(Lcom/android/video/n;I)V

    goto :goto_d

    .line 976
    :cond_30
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    goto :goto_27
.end method
