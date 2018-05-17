.class Lcom/loc/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/al;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/loc/al;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/loc/D;->bwv(Landroid/content/Context;I)Lcom/loc/aR;
    :try_end_7
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_7} :catch_31
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_7} :catch_3b
    .catchall {:try_start_1 .. :try_end_7} :catchall_54

    move-result-object v2

    :try_start_8
    iget-object v1, p0, Lcom/loc/al;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/loc/D;->bwv(Landroid/content/Context;I)Lcom/loc/aR;
    :try_end_e
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_8 .. :try_end_e} :catch_b9
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_e} :catch_a4
    .catchall {:try_start_8 .. :try_end_e} :catchall_8d

    move-result-object v1

    :try_start_f
    iget-object v3, p0, Lcom/loc/al;->a:Landroid/content/Context;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/loc/D;->bwv(Landroid/content/Context;I)Lcom/loc/aR;
    :try_end_15
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_f .. :try_end_15} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_15} :catch_ab
    .catchall {:try_start_f .. :try_end_15} :catchall_94

    move-result-object v0

    :try_start_16
    iget-object v3, p0, Lcom/loc/al;->a:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/loc/aR;->c(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/loc/al;->a:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/loc/aR;->c(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/loc/al;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/loc/aR;->c(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/loc/al;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/loc/aQ;->a(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_16 .. :try_end_2a} :catch_bd
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_2a} :catch_b2
    .catchall {:try_start_16 .. :try_end_2a} :catchall_9b

    if-nez v2, :cond_61

    :goto_2c
    if-nez v1, :cond_65

    :goto_2e
    if-nez v0, :cond_69

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v1

    move-object v1, v0

    move-object v2, v0

    :goto_34
    if-nez v2, :cond_6d

    :goto_36
    if-nez v1, :cond_71

    :goto_38
    if-nez v0, :cond_75

    :goto_3a
    return-void

    :catch_3b
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_41
    :try_start_41
    const-string/jumbo v4, "Log"

    const-string/jumbo v5, "processLog"

    invoke-static {v0, v4, v5}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_41 .. :try_end_4a} :catchall_a2

    if-nez v3, :cond_79

    :goto_4c
    if-nez v2, :cond_7d

    :goto_4e
    if-eqz v1, :cond_30

    invoke-virtual {v1}, Lcom/loc/aR;->c()V

    goto :goto_30

    :catchall_54
    move-exception v1

    move-object v2, v0

    move-object v3, v0

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_5a
    if-nez v3, :cond_81

    :goto_5c
    if-nez v2, :cond_85

    :goto_5e
    if-nez v1, :cond_89

    :goto_60
    throw v0

    :cond_61
    invoke-virtual {v2}, Lcom/loc/aR;->c()V

    goto :goto_2c

    :cond_65
    invoke-virtual {v1}, Lcom/loc/aR;->c()V

    goto :goto_2e

    :cond_69
    invoke-virtual {v0}, Lcom/loc/aR;->c()V

    goto :goto_30

    :cond_6d
    invoke-virtual {v2}, Lcom/loc/aR;->c()V

    goto :goto_36

    :cond_71
    invoke-virtual {v1}, Lcom/loc/aR;->c()V

    goto :goto_38

    :cond_75
    invoke-virtual {v0}, Lcom/loc/aR;->c()V

    goto :goto_3a

    :cond_79
    invoke-virtual {v3}, Lcom/loc/aR;->c()V

    goto :goto_4c

    :cond_7d
    invoke-virtual {v2}, Lcom/loc/aR;->c()V

    goto :goto_4e

    :cond_81
    invoke-virtual {v3}, Lcom/loc/aR;->c()V

    goto :goto_5c

    :cond_85
    invoke-virtual {v2}, Lcom/loc/aR;->c()V

    goto :goto_5e

    :cond_89
    invoke-virtual {v1}, Lcom/loc/aR;->c()V

    goto :goto_60

    :catchall_8d
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_5a

    :catchall_94
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5a

    :catchall_9b
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_5a

    :catchall_a2
    move-exception v0

    goto :goto_5a

    :catch_a4
    move-exception v1

    move-object v3, v2

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_41

    :catch_ab
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_41

    :catch_b2
    move-exception v3

    move-object v6, v3

    move-object v3, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_41

    :catch_b9
    move-exception v1

    move-object v1, v0

    goto/16 :goto_34

    :catch_bd
    move-exception v3

    goto/16 :goto_34
.end method
