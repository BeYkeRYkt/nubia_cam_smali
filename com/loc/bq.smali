.class Lcom/loc/bq;
.super Ljava/util/TimerTask;
.source "SourceFile"


# instance fields
.field final synthetic bhp:Lcom/loc/cd;


# direct methods
.method constructor <init>(Lcom/loc/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    const/4 v3, 0x1

    const/4 v4, 0x0

    sget-object v0, Lcom/loc/by;->a:[I

    aget v0, v0, v3

    const/16 v1, 0x7d0

    if-gt v0, v1, :cond_42

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/Thread;->setPriority(I)V

    iget-object v0, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFw(Lcom/loc/cd;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "fetchoffdatamobile"

    invoke-static {v0, v1}, Lcom/loc/X;->bxj(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    :goto_20
    move v7, v4

    :goto_21
    invoke-static {}, Lcom/loc/p;->a()Lcom/loc/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/loc/p;->b()Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_69

    :cond_2b
    iget-object v0, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFA(Lcom/loc/cd;)V

    :try_start_30
    invoke-static {}, Lcom/loc/bI;->a()Lcom/loc/bI;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v1}, Lcom/loc/cd;->bFz(Lcom/loc/cd;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/loc/bI;->bCv(Landroid/content/Context;I)Ljava/util/ArrayList;
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_3e} :catch_d0

    move-result-object v0

    if-nez v0, :cond_ae

    :cond_41
    :goto_41
    return-void

    :cond_42
    iget-object v0, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFv(Lcom/loc/cd;)V

    return-void

    :cond_48
    :try_start_48
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v1}, Lcom/loc/cd;->bFw(Lcom/loc/cd;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "fetchoffdatamobile"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_5b} :catch_5e

    move-result v0

    move v7, v0

    goto :goto_21

    :catch_5e
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "timerTaskO part"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_69
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_2b

    iget-object v0, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFx(Lcom/loc/cd;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a0

    :goto_77
    move v8, v4

    :goto_78
    if-ge v8, v10, :cond_2b

    const/16 v0, 0x14

    if-ge v8, v0, :cond_2b

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/loc/au;

    iget-object v0, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v0}, Lcom/loc/cd;->bFz(Lcom/loc/cd;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v1}, Lcom/loc/cd;->bFx(Lcom/loc/cd;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/loc/au;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v7, :cond_ac

    move v5, v4

    :goto_98
    move v6, v3

    invoke-static/range {v0 .. v6}, Lcom/loc/by;->bBJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIZZ)Z

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_78

    :cond_a0
    iget-object v0, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    iget-object v1, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-virtual {v1, v3}, Lcom/loc/cd;->a(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/loc/cd;->bFy(Lcom/loc/cd;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_77

    :cond_ac
    move v5, v3

    goto :goto_98

    :cond_ae
    :try_start_ae
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_41

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/loc/bq;->bhp:Lcom/loc/cd;

    invoke-static {v2}, Lcom/loc/cd;->bFx(Lcom/loc/cd;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v0, v3, v4}, Lcom/loc/by;->bBP(Ljava/lang/String;Ljava/lang/String;II)Z
    :try_end_cf
    .catch Ljava/lang/Throwable; {:try_start_ae .. :try_end_cf} :catch_d0

    goto :goto_b8

    :catch_d0
    move-exception v0

    const-string/jumbo v1, "APS"

    const-string/jumbo v2, "timerTaskO"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_41
.end method
