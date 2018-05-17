.class public Lcom/android/common/storagemanager/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ZU:I

.field private ZV:[Lcom/android/common/storagemanager/d;


# direct methods
.method public constructor <init>(Ljava/util/LinkedList;Landroid/os/Handler;I)V
    .registers 7

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p3, p0, Lcom/android/common/storagemanager/a;->ZU:I

    .line 16
    iget v0, p0, Lcom/android/common/storagemanager/a;->ZU:I

    new-array v0, v0, [Lcom/android/common/storagemanager/d;

    iput-object v0, p0, Lcom/android/common/storagemanager/a;->ZV:[Lcom/android/common/storagemanager/d;

    .line 17
    const/4 v0, 0x0

    :goto_c
    iget v1, p0, Lcom/android/common/storagemanager/a;->ZU:I

    if-ge v0, v1, :cond_1c

    .line 18
    iget-object v1, p0, Lcom/android/common/storagemanager/a;->ZV:[Lcom/android/common/storagemanager/d;

    new-instance v2, Lcom/android/common/storagemanager/d;

    invoke-direct {v2, p1, p2}, Lcom/android/common/storagemanager/d;-><init>(Ljava/util/LinkedList;Landroid/os/Handler;)V

    aput-object v2, v1, v0

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 14
    :cond_1c
    return-void
.end method


# virtual methods
.method public start()V
    .registers 3

    .prologue
    .line 23
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/common/storagemanager/a;->ZU:I

    if-ge v0, v1, :cond_f

    .line 24
    iget-object v1, p0, Lcom/android/common/storagemanager/a;->ZV:[Lcom/android/common/storagemanager/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/common/storagemanager/d;->start()V

    .line 23
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_f
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 29
    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/android/common/storagemanager/a;->ZU:I

    if-ge v0, v1, :cond_f

    .line 30
    iget-object v1, p0, Lcom/android/common/storagemanager/a;->ZV:[Lcom/android/common/storagemanager/d;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/common/storagemanager/d;->agt()V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 28
    :cond_f
    return-void
.end method
