.class public Lcom/android/common/storagemanager/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aao:I

.field private aap:Lcom/android/common/storagemanager/f;


# direct methods
.method public constructor <init>(Lcom/android/common/storagemanager/f;)V
    .registers 3

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/common/storagemanager/e;->aao:I

    .line 8
    iput-object p1, p0, Lcom/android/common/storagemanager/e;->aap:Lcom/android/common/storagemanager/f;

    .line 7
    return-void
.end method


# virtual methods
.method public agu()Z
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 16
    iget-object v0, p0, Lcom/android/common/storagemanager/e;->aap:Lcom/android/common/storagemanager/f;

    invoke-virtual {v0}, Lcom/android/common/storagemanager/f;->agF()I

    move-result v0

    .line 17
    add-int/lit8 v0, v0, -0x4

    iget v1, p0, Lcom/android/common/storagemanager/e;->aao:I

    if-le v0, v1, :cond_14

    .line 18
    iget v0, p0, Lcom/android/common/storagemanager/e;->aao:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/common/storagemanager/e;->aao:I

    .line 19
    return v2

    .line 21
    :cond_14
    iput v2, p0, Lcom/android/common/storagemanager/e;->aao:I

    .line 22
    const/4 v0, 0x1

    return v0
.end method
