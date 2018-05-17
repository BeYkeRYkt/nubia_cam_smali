.class public Lcom/loc/bA;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static bhH:Ljava/lang/reflect/Method;


# direct methods
.method public static bBW(Landroid/content/SharedPreferences$Editor;)V
    .registers 4

    if-eqz p0, :cond_c

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_d

    invoke-static {p0}, Lcom/loc/bA;->bBX(Landroid/content/SharedPreferences$Editor;)V

    :goto_b
    return-void

    :cond_c
    return-void

    :cond_d
    :try_start_d
    sget-object v0, Lcom/loc/bA;->bhH:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_28

    :goto_11
    sget-object v0, Lcom/loc/bA;->bhH:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_19} :catch_1a

    goto :goto_b

    :catch_1a
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "applySharedPreference"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/loc/bA;->bBX(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_b

    :cond_28
    :try_start_28
    const-class v0, Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v1, "apply"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/loc/bA;->bhH:Ljava/lang/reflect/Method;
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_36} :catch_1a

    goto :goto_11
.end method

.method private static bBX(Landroid/content/SharedPreferences$Editor;)V
    .registers 5

    :try_start_0
    new-instance v0, Lcom/loc/aF;

    invoke-direct {v0, p0}, Lcom/loc/aF;-><init>(Landroid/content/SharedPreferences$Editor;)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/loc/aF;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_17} :catch_18

    :goto_17
    return-void

    :catch_18
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "commit1"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17
.end method

.method public static bBY(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bA;->bBW(Landroid/content/SharedPreferences$Editor;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "setPrefsLong"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static bBZ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result-wide p3

    :goto_9
    return-wide p3

    :catch_a
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "getPrefsLong"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static bCa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bA;->bBW(Landroid/content/SharedPreferences$Editor;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "setPrefsInt"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static bCb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result p3

    :goto_9
    return p3

    :catch_a
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "getPrefsInt"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public static bCc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-static {v0}, Lcom/loc/bA;->bBW(Landroid/content/SharedPreferences$Editor;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "updatePrefsBoolean"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f
.end method

.method public static bCd(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_8} :catch_a

    move-result p3

    :goto_9
    return p3

    :catch_a
    move-exception v0

    const-string/jumbo v1, "SPUtil"

    const-string/jumbo v2, "getPrefsBoolean"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method
