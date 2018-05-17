.class final Lcom/android/dng/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dng/e;


# instance fields
.field final synthetic aBo:Lcom/android/dng/j;


# direct methods
.method constructor <init>(Lcom/android/dng/j;)V
    .registers 2

    .prologue
    .line 199
    iput-object p1, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aPu(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 203
    const-string/jumbo v0, "DngFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v0, "pref_camera_interval_pro"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 205
    iget-object v0, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPY(Lcom/android/dng/j;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 202
    :cond_34
    :goto_34
    return-void

    .line 207
    :cond_35
    const-string/jumbo v0, "DngFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onItemClick : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/b;->bvx(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPY(Lcom/android/dng/j;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_dng_camera_type"

    iget-object v2, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    const v3, 0x7f0a00d8

    invoke-virtual {v2, v3}, Lcom/android/dng/j;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v1, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    const v2, 0x7f0a00d9

    invoke-virtual {v1, v2}, Lcom/android/dng/j;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9d

    .line 212
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MY()I

    move-result v0

    .line 216
    :goto_7c
    iget-object v1, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    invoke-static {v1}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/appService/W;->pv()I

    move-result v1

    if-eq v0, v1, :cond_34

    .line 217
    iget-object v1, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    invoke-static {v1}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v1

    new-instance v2, Lcom/android/common/cameradevice/g;

    const/4 v3, -0x1

    invoke-direct {v2, v0, v3}, Lcom/android/common/cameradevice/g;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/common/appService/W;->qy(Lcom/android/common/cameradevice/g;)V

    .line 218
    iget-object v0, p0, Lcom/android/dng/y;->aBo:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aQd(Lcom/android/dng/j;)V

    goto :goto_34

    .line 214
    :cond_9d
    invoke-static {}, Lcom/android/common/cameradevice/m;->MR()Lcom/android/common/cameradevice/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/cameradevice/m;->MV()I

    move-result v0

    goto :goto_7c
.end method
