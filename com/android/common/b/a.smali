.class public abstract Lcom/android/common/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/g;


# instance fields
.field protected ao:Landroid/util/SparseArray;

.field protected ap:Z

.field protected aq:Lcom/android/common/storagemanager/c;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;Landroid/util/SparseArray;)V
    .registers 4

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/b/a;->ap:Z

    .line 15
    new-instance v0, Lcom/android/common/storagemanager/c;

    invoke-direct {v0}, Lcom/android/common/storagemanager/c;-><init>()V

    iput-object v0, p0, Lcom/android/common/b/a;->aq:Lcom/android/common/storagemanager/c;

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/b/a;->ao:Landroid/util/SparseArray;

    .line 19
    iput-object p2, p0, Lcom/android/common/b/a;->ao:Landroid/util/SparseArray;

    .line 20
    invoke-virtual {p0, p1}, Lcom/android/common/b/a;->bf(Lcom/android/common/appService/W;)V

    .line 18
    return-void
.end method


# virtual methods
.method public be(Z)V
    .registers 2

    .prologue
    .line 25
    iput-boolean p1, p0, Lcom/android/common/b/a;->ap:Z

    .line 24
    return-void
.end method

.method public bf(Lcom/android/common/appService/W;)V
    .registers 5

    .prologue
    .line 29
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->aeh()Z

    move-result v0

    if-nez v0, :cond_f

    .line 30
    return-void

    .line 32
    :cond_f
    if-eqz p1, :cond_2e

    .line 33
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 34
    invoke-virtual {p1}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    .line 35
    const-string/jumbo v1, "pref_picture_artist_info"

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 28
    :cond_2e
    :goto_2e
    return-void

    .line 37
    :cond_2f
    iget-object v1, p0, Lcom/android/common/b/a;->ao:Landroid/util/SparseArray;

    if-nez v1, :cond_3a

    .line 38
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/common/b/a;->ao:Landroid/util/SparseArray;

    .line 40
    :cond_3a
    iget-object v1, p0, Lcom/android/common/b/a;->ao:Landroid/util/SparseArray;

    sget v2, Lcom/android/common/exif/o;->PB:I

    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2e
.end method
