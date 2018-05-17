.class Lcom/android/common/i/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic Zu:Lcom/android/common/i/k;


# direct methods
.method private constructor <init>(Lcom/android/common/i/k;)V
    .registers 2

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/common/i/l;->Zu:Lcom/android/common/i/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/i/k;Lcom/android/common/i/l;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/i/l;-><init>(Lcom/android/common/i/k;)V

    return-void
.end method

.method private afN()V
    .registers 4

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/common/i/l;->Zu:Lcom/android/common/i/k;

    invoke-static {v0}, Lcom/android/common/i/k;->afM(Lcom/android/common/i/k;)Lcom/android/common/appService/W;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 200
    iget-object v0, p0, Lcom/android/common/i/l;->Zu:Lcom/android/common/i/k;

    invoke-static {v0}, Lcom/android/common/i/k;->afM(Lcom/android/common/i/k;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 201
    iget-object v0, p0, Lcom/android/common/i/l;->Zu:Lcom/android/common/i/k;

    invoke-static {v0}, Lcom/android/common/i/k;->afM(Lcom/android/common/i/k;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agA()J

    move-result-wide v0

    .line 203
    iget-object v2, p0, Lcom/android/common/i/l;->Zu:Lcom/android/common/i/k;

    invoke-static {v2}, Lcom/android/common/i/k;->afM(Lcom/android/common/i/k;)Lcom/android/common/appService/W;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/common/appService/W;->qV(J)V

    .line 198
    :cond_2b
    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 190
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-ne p2, v0, :cond_8

    .line 196
    :goto_4
    invoke-direct {p0}, Lcom/android/common/i/l;->afN()V

    .line 189
    return-void

    .line 194
    :cond_8
    const-string/jumbo v0, "LongShotJpegPictureCallback"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "quality multishoot save fail "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4
.end method
