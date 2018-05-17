.class final Lcom/android/common/o/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic aeU:Lcom/android/common/o/p;


# direct methods
.method constructor <init>(Lcom/android/common/o/p;)V
    .registers 2

    .prologue
    .line 380
    iput-object p1, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    .prologue
    const/4 v3, 0x0

    .line 385
    invoke-static {}, Lcom/android/common/o/p;->ami()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mExpandListView onItemClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v2}, Lcom/android/common/o/p;->amn(Lcom/android/common/o/p;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pp()Lcom/android/common/setting/PreferenceGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v1}, Lcom/android/common/o/p;->amn(Lcom/android/common/o/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/PreferenceGroup;->YV(Ljava/lang/String;)Lcom/android/common/setting/ListPreference;

    move-result-object v0

    .line 387
    invoke-virtual {v0}, Lcom/android/common/setting/ListPreference;->Vq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/setting/ListPreference;->Vr(Ljava/lang/String;)I

    move-result v1

    if-ne p3, v1, :cond_4f

    .line 388
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amz(Lcom/android/common/o/p;)V

    .line 389
    return-void

    .line 391
    :cond_4f
    invoke-virtual {v0, p3}, Lcom/android/common/setting/ListPreference;->Vt(I)V

    .line 392
    const-string/jumbo v0, "pref_camera_storage_path"

    iget-object v1, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v1}, Lcom/android/common/o/p;->amn(Lcom/android/common/o/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 393
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asW()V

    .line 395
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pH()Lcom/android/common/storagemanager/f;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/common/storagemanager/f;->agy(Lcom/android/common/storagemanager/h;)V

    .line 397
    :cond_77
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amo(Lcom/android/common/o/p;)Lcom/android/common/o/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/o/q;->notifyDataSetChanged()V

    .line 398
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amt(Lcom/android/common/o/p;)Lcom/android/common/appService/M;

    move-result-object v0

    if-eqz v0, :cond_91

    .line 399
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amt(Lcom/android/common/o/p;)Lcom/android/common/appService/M;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/M;->notifyDataSetChanged()V

    .line 401
    :cond_91
    const-string/jumbo v0, "pref_video_quality_key"

    iget-object v1, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v1}, Lcom/android/common/o/p;->amn(Lcom/android/common/o/p;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ab

    .line 403
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/H;->nM()V

    .line 405
    :cond_ab
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    invoke-static {v0}, Lcom/android/common/o/p;->amz(Lcom/android/common/o/p;)V

    .line 406
    iget-object v0, p0, Lcom/android/common/o/S;->aeU:Lcom/android/common/o/p;

    iget-object v0, v0, Lcom/android/common/o/p;->adt:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->py()Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 384
    return-void
.end method
