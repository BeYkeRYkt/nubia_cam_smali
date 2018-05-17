.class Lcom/android/common/setting/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences$Editor;


# instance fields
.field private Tv:Landroid/content/SharedPreferences$Editor;

.field private Tw:Landroid/content/SharedPreferences$Editor;

.field final synthetic Tx:Lcom/android/common/setting/e;


# direct methods
.method constructor <init>(Lcom/android/common/setting/e;)V
    .registers 3

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/common/setting/f;->Tx:Lcom/android/common/setting/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    invoke-static {p1}, Lcom/android/common/setting/e;->US(Lcom/android/common/setting/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    .line 206
    invoke-static {p1}, Lcom/android/common/setting/e;->UT(Lcom/android/common/setting/e;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    .line 204
    return-void
.end method


# virtual methods
.method public apply()V
    .registers 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 219
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 217
    return-void
.end method

.method public clear()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 226
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 227
    return-object p0
.end method

.method public commit()Z
    .registers 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v1

    .line 212
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    .line 213
    if-eqz v1, :cond_f

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/common/setting/f;->Tx:Lcom/android/common/setting/e;

    invoke-static {v0, p1}, Lcom/android/common/setting/e;->UU(Lcom/android/common/setting/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 280
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 284
    :goto_d
    return-object p0

    .line 282
    :cond_e
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/common/setting/f;->Tx:Lcom/android/common/setting/e;

    invoke-static {v0, p1}, Lcom/android/common/setting/e;->UU(Lcom/android/common/setting/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 270
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 274
    :goto_d
    return-object p0

    .line 272
    :cond_e
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/common/setting/f;->Tx:Lcom/android/common/setting/e;

    invoke-static {v0, p1}, Lcom/android/common/setting/e;->UU(Lcom/android/common/setting/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 250
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 254
    :goto_d
    return-object p0

    .line 252
    :cond_e
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;
    .registers 6

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/common/setting/f;->Tx:Lcom/android/common/setting/e;

    invoke-static {v0, p1}, Lcom/android/common/setting/e;->UU(Lcom/android/common/setting/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 260
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 264
    :goto_d
    return-object p0

    .line 262
    :cond_e
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/common/setting/f;->Tx:Lcom/android/common/setting/e;

    invoke-static {v0, p1}, Lcom/android/common/setting/e;->UU(Lcom/android/common/setting/e;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 240
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 244
    :goto_d
    return-object p0

    .line 242
    :cond_e
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_d
.end method

.method public putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;
    .registers 4

    .prologue
    .line 290
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    .registers 3

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/common/setting/f;->Tv:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 233
    iget-object v0, p0, Lcom/android/common/setting/f;->Tw:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 234
    return-object p0
.end method
