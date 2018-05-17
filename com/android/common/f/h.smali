.class final Lcom/android/common/f/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic VY:Lcom/android/common/f/a;

.field final synthetic VZ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/common/f/a;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/common/f/h;->VY:Lcom/android/common/f/a;

    iput-object p2, p0, Lcom/android/common/f/h;->VZ:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 8

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/common/f/h;->VY:Lcom/android/common/f/a;

    invoke-static {v0}, Lcom/android/common/f/a;->aah(Lcom/android/common/f/a;)Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asl()Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 200
    iget-object v0, p0, Lcom/android/common/f/h;->VY:Lcom/android/common/f/a;

    invoke-static {v0}, Lcom/android/common/f/a;->aah(Lcom/android/common/f/a;)Lcom/android/common/ActivityBase;

    move-result-object v0

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aiZ:Lcom/android/common/m/c;

    invoke-virtual {v0}, Lcom/android/common/m/c;->ahi()V

    .line 202
    :cond_1b
    iget-object v0, p0, Lcom/android/common/f/h;->VY:Lcom/android/common/f/a;

    invoke-static {v0}, Lcom/android/common/f/a;->aah(Lcom/android/common/f/a;)Lcom/android/common/ActivityBase;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    .line 203
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/common/f/h;->VZ:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 202
    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Lcom/android/common/ActivityBase;->sendBroadcast(Landroid/content/Intent;)V

    .line 198
    return-void
.end method
