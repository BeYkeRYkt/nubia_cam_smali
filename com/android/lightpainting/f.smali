.class Lcom/android/lightpainting/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic auq:Lcom/android/lightpainting/e;


# direct methods
.method private constructor <init>(Lcom/android/lightpainting/e;)V
    .registers 2

    .prologue
    .line 630
    iput-object p1, p0, Lcom/android/lightpainting/f;->auq:Lcom/android/lightpainting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/lightpainting/e;Lcom/android/lightpainting/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/lightpainting/f;-><init>(Lcom/android/lightpainting/e;)V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 634
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-ne p2, v0, :cond_33

    .line 635
    const-string/jumbo v0, "LightDrawFragment"

    const-string/jumbo v1, "storage success"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcom/android/lightpainting/f;->auq:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aGG(Lcom/android/lightpainting/e;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 638
    iget-object v0, p0, Lcom/android/lightpainting/f;->auq:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHa(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 639
    iget-object v0, p0, Lcom/android/lightpainting/f;->auq:Lcom/android/lightpainting/e;

    invoke-static {v0}, Lcom/android/lightpainting/e;->aHa(Lcom/android/lightpainting/e;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    .line 640
    const/16 v1, 0x13

    .line 639
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 633
    :cond_32
    :goto_32
    return-void

    .line 643
    :cond_33
    const-string/jumbo v0, "LightDrawFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage Result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_32
.end method
