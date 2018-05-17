.class Lcom/android/multiexposure/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic aqs:Lcom/android/multiexposure/c;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/c;)V
    .registers 2

    .prologue
    .line 209
    iput-object p1, p0, Lcom/android/multiexposure/d;->aqs:Lcom/android/multiexposure/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 212
    const-string/jumbo v0, "BaseMultiExposure"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "storage result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v0, p0, Lcom/android/multiexposure/d;->aqs:Lcom/android/multiexposure/c;

    iget-object v0, v0, Lcom/android/multiexposure/c;->aqe:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 211
    return-void
.end method
