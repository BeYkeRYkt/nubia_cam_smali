.class Lcom/loc/aO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic bgk:Lcom/loc/ag;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/loc/ag;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/loc/aO;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/aO;->bgk:Lcom/loc/ag;

    iput-object p3, p0, Lcom/loc/aO;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/loc/aO;->a:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/D;->bwv(Landroid/content/Context;I)Lcom/loc/aR;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/aO;->bgk:Lcom/loc/ag;

    iget-object v2, p0, Lcom/loc/aO;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/Throwable;

    const-string/jumbo v4, "gpsstatistics"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/aO;->c:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/loc/aR;->bAa(Lcom/loc/ag;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_1b

    :goto_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1a
.end method
