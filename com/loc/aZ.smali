.class Lcom/loc/aZ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:I

.field final synthetic bgA:Ljava/lang/Throwable;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/loc/aZ;->a:Landroid/content/Context;

    iput p2, p0, Lcom/loc/aZ;->b:I

    iput-object p3, p0, Lcom/loc/aZ;->bgA:Ljava/lang/Throwable;

    iput-object p4, p0, Lcom/loc/aZ;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/aZ;->e:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/loc/aZ;->a:Landroid/content/Context;

    iget v1, p0, Lcom/loc/aZ;->b:I

    invoke-static {v0, v1}, Lcom/loc/D;->bwv(Landroid/content/Context;I)Lcom/loc/aR;

    move-result-object v0

    if-eqz v0, :cond_16

    iget-object v1, p0, Lcom/loc/aZ;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/aZ;->bgA:Ljava/lang/Throwable;

    iget-object v3, p0, Lcom/loc/aZ;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/aZ;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/loc/aR;->bAb(Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_15} :catch_17

    :goto_15
    return-void

    :cond_16
    return-void

    :catch_17
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_15
.end method
