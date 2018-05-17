.class Lcom/loc/aN;
.super Lcom/loc/aA;
.source "SourceFile"


# instance fields
.field private bgj:Ljava/util/Map;

.field private f:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5

    invoke-direct {p0, p1, p2}, Lcom/loc/aA;-><init>(Landroid/content/Context;Lcom/loc/ag;)V

    iput-object p3, p0, Lcom/loc/aN;->f:Ljava/lang/String;

    iput-object p4, p0, Lcom/loc/aN;->bgj:Ljava/util/Map;

    return-void
.end method

.method private i()Ljava/util/Map;
    .registers 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/aN;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/cn;->bGa(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8a

    :goto_d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "authkey"

    iget-object v4, p0, Lcom/loc/aN;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "plattype"

    const-string/jumbo v4, "android"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "product"

    iget-object v4, p0, Lcom/loc/aN;->bfS:Lcom/loc/ag;

    invoke-virtual {v4}, Lcom/loc/ag;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "version"

    iget-object v4, p0, Lcom/loc/aN;->bfS:Lcom/loc/ag;

    invoke-virtual {v4}, Lcom/loc/ag;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "output"

    const-string/jumbo v4, "json"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "androidversion"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "deviceId"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/loc/aN;->bgj:Ljava/util/Map;

    if-nez v0, :cond_9d

    :cond_6a
    :goto_6a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v0, v3, :cond_ab

    :goto_70
    move-object v0, v1

    :goto_71
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d8

    :goto_77
    const-string/jumbo v1, "abitype"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "ext"

    iget-object v1, p0, Lcom/loc/aN;->bfS:Lcom/loc/ag;

    invoke-virtual {v1}, Lcom/loc/ag;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_8a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bU;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_d

    :cond_9d
    iget-object v0, p0, Lcom/loc/aN;->bgj:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    iget-object v0, p0, Lcom/loc/aN;->bgj:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_6a

    :cond_ab
    :try_start_ab
    iget-object v0, p0, Lcom/loc/aN;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const-class v3, Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string/jumbo v4, "primaryCpuAbi"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_cc
    .catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_cc} :catch_cd

    goto :goto_71

    :catch_cd
    move-exception v0

    const-string/jumbo v3, "ConfigManager"

    const-string/jumbo v4, "getcpu"

    invoke-static {v0, v3, v4}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_70

    :cond_d8
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    goto :goto_77
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "https://restapi.amap.com/v3/iasdkauth"

    return-object v0
.end method

.method public bzk()[B
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public bzl()[B
    .registers 2

    invoke-direct {p0}, Lcom/loc/aN;->i()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->bBt(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->a(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected e()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "3.0"

    return-object v0
.end method
