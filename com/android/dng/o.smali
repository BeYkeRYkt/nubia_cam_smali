.class Lcom/android/dng/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic aBb:Lcom/android/dng/n;


# direct methods
.method private constructor <init>(Lcom/android/dng/n;)V
    .registers 2

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/dng/o;->aBb:Lcom/android/dng/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/dng/n;Lcom/android/dng/o;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/dng/o;-><init>(Lcom/android/dng/n;)V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 88
    const-string/jumbo v0, "DngRawPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/dng/o;->aBb:Lcom/android/dng/n;

    invoke-static {v0}, Lcom/android/dng/n;->aQp(Lcom/android/dng/n;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/dng/o;->aBb:Lcom/android/dng/n;

    invoke-static {v0}, Lcom/android/dng/n;->aQp(Lcom/android/dng/n;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pk()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 87
    :cond_2e
    :goto_2e
    return-void

    .line 90
    :cond_2f
    iget-object v0, p0, Lcom/android/dng/o;->aBb:Lcom/android/dng/n;

    invoke-static {v0}, Lcom/android/dng/n;->aQp(Lcom/android/dng/n;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agA()J

    move-result-wide v0

    .line 91
    iget-object v2, p0, Lcom/android/dng/o;->aBb:Lcom/android/dng/n;

    invoke-static {v2}, Lcom/android/dng/n;->aQp(Lcom/android/dng/n;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/common/appService/W;->qV(J)V

    goto :goto_2e
.end method
