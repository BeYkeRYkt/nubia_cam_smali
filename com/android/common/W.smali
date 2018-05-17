.class final Lcom/android/common/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic akP:Lcom/android/common/ActivityBase;


# direct methods
.method constructor <init>(Lcom/android/common/ActivityBase;)V
    .registers 2

    .prologue
    .line 423
    iput-object p1, p0, Lcom/android/common/W;->akP:Lcom/android/common/ActivityBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/common/W;->akP:Lcom/android/common/ActivityBase;

    invoke-static {v0}, Lcom/android/common/ActivityBase;->avN(Lcom/android/common/ActivityBase;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 428
    iget-object v0, p0, Lcom/android/common/W;->akP:Lcom/android/common/ActivityBase;

    iget-object v0, v0, Lcom/android/common/ActivityBase;->aja:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 429
    const-string/jumbo v0, "ActivityBase"

    const-string/jumbo v1, "path is already set to sd card"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_1d
    return-void
.end method
