.class Lcom/android/startrack/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic aRB:Lcom/android/startrack/h;


# direct methods
.method constructor <init>(Lcom/android/startrack/h;)V
    .registers 2

    .prologue
    .line 502
    iput-object p1, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 506
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-ne p2, v0, :cond_74

    .line 507
    const-string/jumbo v0, "StarTrackFragment"

    const-string/jumbo v1, "storage success"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    .line 510
    iget-object v1, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    invoke-static {v1}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 508
    invoke-static {p1, v1}, Lcom/android/common/h;->apC(Landroid/net/Uri;Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/startrack/h;->aRv:Ljava/lang/String;

    .line 512
    iget-object v0, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 513
    iget-object v0, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pK()Z

    move-result v0

    if-nez v0, :cond_6e

    .line 514
    const-string/jumbo v0, "StarTrackFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Enough storage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    invoke-static {v2}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/appService/W;->pK()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 515
    const-string/jumbo v2, "; stop capture."

    .line 514
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v0, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->biu(Lcom/android/startrack/h;)V

    .line 517
    return-void

    .line 519
    :cond_6e
    iget-object v0, p0, Lcom/android/startrack/i;->aRB:Lcom/android/startrack/h;

    invoke-static {v0, p1}, Lcom/android/startrack/h;->biv(Lcom/android/startrack/h;Landroid/net/Uri;)V

    .line 505
    :goto_73
    return-void

    .line 521
    :cond_74
    const-string/jumbo v0, "StarTrackFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StarTrackStorageResult:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_73
.end method
