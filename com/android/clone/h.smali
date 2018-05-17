.class Lcom/android/clone/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/f;


# instance fields
.field final synthetic aTs:Lcom/android/clone/g;


# direct methods
.method private constructor <init>(Lcom/android/clone/g;)V
    .registers 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/android/clone/h;->aTs:Lcom/android/clone/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/clone/g;Lcom/android/clone/h;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/clone/h;-><init>(Lcom/android/clone/g;)V

    return-void
.end method


# virtual methods
.method public bl(Landroid/net/Uri;Lcom/android/common/storagemanager/StorageResult$StorageResultType;)V
    .registers 6

    .prologue
    .line 298
    const-string/jumbo v0, "CloneFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trajectory storage result:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    return-void
.end method
