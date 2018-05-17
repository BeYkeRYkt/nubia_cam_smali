.class final Lcom/android/specification/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic aZH:Lcom/android/specification/SpecificationActivity;


# direct methods
.method constructor <init>(Lcom/android/specification/SpecificationActivity;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/specification/j;->aZH:Lcom/android/specification/SpecificationActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 100
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 101
    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 102
    const-string/jumbo v0, "reason"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string/jumbo v1, "homekey"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 104
    const-string/jumbo v0, "SpecificationActivity"

    const-string/jumbo v1, "Home pressed"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/specification/j;->aZH:Lcom/android/specification/SpecificationActivity;

    invoke-virtual {v0}, Lcom/android/specification/SpecificationActivity;->finish()V

    .line 99
    :cond_2b
    return-void
.end method
