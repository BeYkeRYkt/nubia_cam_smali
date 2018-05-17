.class Lcom/loc/ar;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic bfp:Lcom/loc/af;


# direct methods
.method constructor <init>(Lcom/loc/af;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/ar;->bfp:Lcom/loc/af;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    if-nez p2, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    :goto_10
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35

    :goto_19
    const-string/jumbo v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/loc/at;->bfK:Z
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_25} :catch_26

    goto :goto_2

    :catch_26
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "mMockReceier"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_31
    const/4 v1, 0x0

    :try_start_32
    sput-boolean v1, Lcom/loc/at;->bfK:Z

    goto :goto_10

    :cond_35
    const/4 v1, 0x1

    sput-boolean v1, Lcom/loc/at;->bfK:Z
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_38} :catch_26

    goto :goto_19
.end method
