.class Lcom/android/startrack/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic aRi:Lcom/android/startrack/b;


# direct methods
.method private constructor <init>(Lcom/android/startrack/b;)V
    .registers 2

    .prologue
    .line 223
    iput-object p1, p0, Lcom/android/startrack/c;->aRi:Lcom/android/startrack/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/startrack/b;Lcom/android/startrack/c;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/startrack/c;-><init>(Lcom/android/startrack/b;)V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 227
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    if-ne p2, v0, :cond_e

    .line 228
    const-string/jumbo v0, "StarTrackComposeThread"

    const-string/jumbo v1, "storage success"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    :goto_d
    return-void

    .line 230
    :cond_e
    const-string/jumbo v0, "StarTrackComposeThread"

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

    goto :goto_d
.end method
