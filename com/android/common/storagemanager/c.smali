.class public Lcom/android/common/storagemanager/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public aaa:Landroid/net/Uri;

.field public aab:Lcom/android/common/b/f;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object v0, p0, Lcom/android/common/storagemanager/c;->aaa:Landroid/net/Uri;

    .line 14
    iput-object v0, p0, Lcom/android/common/storagemanager/c;->aab:Lcom/android/common/b/f;

    .line 15
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    iput-object v0, p0, Lcom/android/common/storagemanager/c;->ZZ:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 7
    return-void
.end method
