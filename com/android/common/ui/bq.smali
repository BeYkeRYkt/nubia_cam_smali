.class final Lcom/android/common/ui/bq;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic EC:Lcom/android/common/ui/an;


# direct methods
.method constructor <init>(Lcom/android/common/ui/an;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/common/ui/bq;->EC:Lcom/android/common/ui/an;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 55
    const-string/jumbo v0, "level"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    const-string/jumbo v1, "scale"

    const/16 v2, 0x64

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 57
    iget-object v2, p0, Lcom/android/common/ui/bq;->EC:Lcom/android/common/ui/an;

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/android/common/ui/an;->Gn(Lcom/android/common/ui/an;I)I

    .line 58
    iget-object v0, p0, Lcom/android/common/ui/bq;->EC:Lcom/android/common/ui/an;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/ui/bq;->EC:Lcom/android/common/ui/an;

    invoke-static {v2}, Lcom/android/common/ui/an;->Gm(Lcom/android/common/ui/an;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/ui/an;->Go(Lcom/android/common/ui/an;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/android/common/ui/bq;->EC:Lcom/android/common/ui/an;

    invoke-static {v0}, Lcom/android/common/ui/an;->Gp(Lcom/android/common/ui/an;)V

    .line 52
    :cond_4a
    return-void
.end method
