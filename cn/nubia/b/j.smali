.class Lcn/nubia/b/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic bpJ:Lcn/nubia/b/i;


# direct methods
.method private constructor <init>(Lcn/nubia/b/i;)V
    .registers 2

    .prologue
    .line 143
    iput-object p1, p0, Lcn/nubia/b/j;->bpJ:Lcn/nubia/b/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/b/i;Lcn/nubia/b/j;)V
    .registers 3

    invoke-direct {p0, p1}, Lcn/nubia/b/j;-><init>(Lcn/nubia/b/i;)V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 146
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-ne p2, v0, :cond_20

    .line 147
    iget-object v0, p0, Lcn/nubia/b/j;->bpJ:Lcn/nubia/b/i;

    invoke-static {v0}, Lcn/nubia/b/i;->bMg(Lcn/nubia/b/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pb()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/common/h;->apj(Landroid/content/Context;Landroid/net/Uri;)V

    .line 149
    iget-object v0, p0, Lcn/nubia/b/j;->bpJ:Lcn/nubia/b/i;

    invoke-static {v0}, Lcn/nubia/b/i;->bMg(Lcn/nubia/b/i;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 145
    :goto_1f
    return-void

    .line 151
    :cond_20
    const-string/jumbo v0, "DualCameraJpegPictureCallback"

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

    goto :goto_1f
.end method
