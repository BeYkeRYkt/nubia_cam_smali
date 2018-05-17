.class final Lcom/android/common/i/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic Ze:Lcom/android/common/i/e;


# direct methods
.method private constructor <init>(Lcom/android/common/i/e;)V
    .registers 2

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/i/e;Lcom/android/common/i/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/i/f;-><init>(Lcom/android/common/i/e;)V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 289
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afp(Lcom/android/common/i/e;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/i/e;->afu(Lcom/android/common/i/e;I)I

    .line 290
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afr(Lcom/android/common/i/e;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 291
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afs(Lcom/android/common/i/e;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 288
    :cond_1c
    :goto_1c
    return-void

    .line 292
    :cond_1d
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afp(Lcom/android/common/i/e;)I

    move-result v0

    iget-object v1, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v1}, Lcom/android/common/i/e;->afq(Lcom/android/common/i/e;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_1c

    .line 293
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0, v2}, Lcom/android/common/i/e;->afv(Lcom/android/common/i/e;Z)Z

    .line 294
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afo(Lcom/android/common/i/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 295
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afo(Lcom/android/common/i/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rS()V

    .line 296
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afo(Lcom/android/common/i/e;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_6a

    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afo(Lcom/android/common/i/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 297
    iget-object v0, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v0}, Lcom/android/common/i/e;->afo(Lcom/android/common/i/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->qk()Lcom/android/common/m/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/common/m/c;->ahn(Z)V

    .line 300
    :cond_6a
    const-string/jumbo v0, "MultiShoot"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mIsMultiShootDone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/i/f;->Ze:Lcom/android/common/i/e;

    invoke-static {v2}, Lcom/android/common/i/e;->afr(Lcom/android/common/i/e;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method
