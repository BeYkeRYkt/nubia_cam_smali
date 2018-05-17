.class public Lcom/loc/bH;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bCp(Landroid/content/Context;Lcom/loc/ch;Lcom/loc/ag;)V
    .registers 4

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/loc/ch;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    return-void

    :cond_d
    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/loc/ch;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-virtual {p1}, Lcom/loc/ch;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/loc/bh;

    invoke-direct {v0, p0, p1, p2}, Lcom/loc/bh;-><init>(Landroid/content/Context;Lcom/loc/ch;Lcom/loc/ag;)V

    invoke-virtual {v0}, Lcom/loc/bh;->a()V

    return-void
.end method

.method public static bCq(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    const/4 v1, 0x0

    :try_start_1
    invoke-static {}, Lcom/loc/bE;->a()Lcom/loc/bE;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/loc/bE;->bCm(Landroid/content/Context;Lcom/loc/ag;)Lcom/loc/W;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_1a

    move-result-object v0

    :goto_9
    if-nez v0, :cond_26

    :cond_b
    :goto_b
    if-eqz p3, :cond_91

    :try_start_d
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v0, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_18} :catch_92
    .catch Ljava/lang/InstantiationException; {:try_start_d .. :try_end_18} :catch_a5
    .catch Ljava/lang/IllegalAccessException; {:try_start_d .. :try_end_18} :catch_b0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_18} :catch_bb
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_d .. :try_end_18} :catch_c6
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_18} :catch_d1

    move-result-object v0

    return-object v0

    :catch_1a
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_9

    :cond_26
    :try_start_26
    invoke-virtual {v0}, Lcom/loc/W;->a()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-boolean v2, v0, Lcom/loc/W;->d:Z

    if-eqz v2, :cond_b

    invoke-virtual {v0, p2}, Lcom/loc/W;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0, p4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v0, p5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_41
    .catch Ljava/lang/ClassNotFoundException; {:try_start_26 .. :try_end_41} :catch_43
    .catch Ljava/lang/NoSuchMethodException; {:try_start_26 .. :try_end_41} :catch_4e
    .catch Ljava/lang/InstantiationException; {:try_start_26 .. :try_end_41} :catch_59
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_41} :catch_64
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_41} :catch_6f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_41} :catch_7a
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_41} :catch_85

    move-result-object v0

    return-object v0

    :catch_43
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_4e
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_59
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_64
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_6f
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_7a
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    :catch_85
    move-exception v0

    const-string/jumbo v2, "InstanceFactory"

    const-string/jumbo v3, "getInstance()"

    invoke-static {v0, v2, v3}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_91
    return-object v1

    :catch_92
    move-exception v0

    const-string/jumbo v1, "InstanceFactory"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "\u83b7\u53d6\u5bf9\u8c61\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_a5
    move-exception v0

    const-string/jumbo v1, "InstanceFactory"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :catch_b0
    move-exception v0

    const-string/jumbo v1, "InstanceFactory"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :catch_bb
    move-exception v0

    const-string/jumbo v1, "InstanceFactory"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :catch_c6
    move-exception v0

    const-string/jumbo v1, "InstanceFactory"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :catch_d1
    move-exception v0

    const-string/jumbo v1, "InstanceFactory"

    const-string/jumbo v2, "getInstance()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c
.end method
