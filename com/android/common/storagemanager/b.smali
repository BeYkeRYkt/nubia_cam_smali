.class public Lcom/android/common/storagemanager/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZW:Z

.field protected ZX:Ljava/util/ArrayList;

.field protected ZY:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/storagemanager/b;->ZW:Z

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    .line 8
    return-void
.end method


# virtual methods
.method public agk(Landroid/net/Uri;)Z
    .registers 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 33
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 35
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public agl(Landroid/net/Uri;)Z
    .registers 3

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 26
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 28
    :cond_f
    const/4 v0, 0x0

    return v0
.end method

.method public agm(Landroid/net/Uri;)Z
    .registers 5

    .prologue
    .line 39
    const/4 v0, 0x0

    .line 40
    iget-boolean v1, p0, Lcom/android/common/storagemanager/b;->ZW:Z

    if-eqz v1, :cond_19

    .line 41
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 42
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 43
    invoke-virtual {p0, p1}, Lcom/android/common/storagemanager/b;->agk(Landroid/net/Uri;)Z

    move-result v0

    .line 48
    :cond_19
    :goto_19
    return v0

    .line 44
    :cond_1a
    sget-object v2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 45
    invoke-virtual {p0, p1}, Lcom/android/common/storagemanager/b;->agl(Landroid/net/Uri;)Z

    move-result v0

    goto :goto_19
.end method

.method public agn(Landroid/net/Uri;)Z
    .registers 3

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 53
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 55
    :cond_f
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 56
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 58
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method public ago()I
    .registers 3

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public agp()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    return-object v0
.end method

.method public agq()Ljava/util/ArrayList;
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    return-object v0
.end method

.method public agr()V
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 15
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 16
    :cond_9
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    if-eqz v0, :cond_12

    .line 17
    iget-object v0, p0, Lcom/android/common/storagemanager/b;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 13
    :cond_12
    return-void
.end method

.method public ags(Z)V
    .registers 2

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/android/common/storagemanager/b;->ZW:Z

    .line 20
    return-void
.end method
