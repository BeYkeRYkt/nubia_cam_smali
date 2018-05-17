.class final Lcom/android/common/n/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic aby:Lcom/android/common/n/a;

.field final synthetic abz:Ljava/util/Map;


# direct methods
.method constructor <init>(Lcom/android/common/n/a;Ljava/util/Map;)V
    .registers 3

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    iput-object p2, p0, Lcom/android/common/n/c;->abz:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    invoke-static {v0}, Lcom/android/common/n/a;->aih(Lcom/android/common/n/a;)V

    .line 194
    iget-object v0, p0, Lcom/android/common/n/c;->abz:Ljava/util/Map;

    const-string/jumbo v1, "error"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 195
    iget-object v1, p0, Lcom/android/common/n/c;->abz:Ljava/util/Map;

    const-string/jumbo v2, "apkInfo"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/c/a;

    .line 196
    const-string/jumbo v2, "Upgrade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "errCOde = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", apkInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    if-eqz v0, :cond_4a

    iget-object v2, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    invoke-static {v2}, Lcom/android/common/n/a;->aic(Lcom/android/common/n/a;)Z

    move-result v2

    if-eqz v2, :cond_c0

    .line 202
    :cond_4a
    iget-object v0, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    invoke-static {v0}, Lcom/android/common/n/a;->aib(Lcom/android/common/n/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/h;->apB(Landroid/content/Context;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 203
    if-eqz v1, :cond_bf

    if-eqz v0, :cond_bf

    .line 204
    const-string/jumbo v2, "Upgrade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mApkName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcn/nubia/c/a;->bML()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    const-string/jumbo v4, ", mAppName"

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 205
    invoke-virtual {v1}, Lcn/nubia/c/a;->bMK()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    const-string/jumbo v4, ", mVerCode"

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 206
    invoke-virtual {v1}, Lcn/nubia/c/a;->bMO()I

    move-result v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    const-string/jumbo v4, ", mVerName"

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    invoke-virtual {v1}, Lcn/nubia/c/a;->bMM()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 207
    const-string/jumbo v4, ", mUrl = "

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 208
    invoke-virtual {v1}, Lcn/nubia/c/a;->bMN()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v2, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    invoke-static {v2}, Lcom/android/common/n/a;->aic(Lcom/android/common/n/a;)Z

    move-result v2

    if-eqz v2, :cond_c6

    .line 210
    iget-object v2, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    invoke-static {v2, v1, v0}, Lcom/android/common/n/a;->aif(Lcom/android/common/n/a;Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V

    .line 192
    :cond_bf
    :goto_bf
    return-void

    .line 198
    :cond_c0
    iget-object v1, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    invoke-static {v1, v0}, Lcom/android/common/n/a;->aii(Lcom/android/common/n/a;Ljava/lang/String;)V

    .line 200
    return-void

    .line 212
    :cond_c6
    iget-object v2, p0, Lcom/android/common/n/c;->aby:Lcom/android/common/n/a;

    invoke-static {v2, v1, v0}, Lcom/android/common/n/a;->aig(Lcom/android/common/n/a;Lcn/nubia/c/a;Landroid/content/pm/PackageInfo;)V

    goto :goto_bf
.end method
