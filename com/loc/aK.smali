.class Lcom/loc/aK;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/loc/aK;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/aK;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/aK;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    new-instance v1, Lcom/loc/n;

    iget-object v0, p0, Lcom/loc/aK;->a:Landroid/content/Context;

    invoke-static {}, Lcom/loc/bX;->c()Lcom/loc/bX;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/loc/n;-><init>(Landroid/content/Context;Lcom/loc/aC;)V

    iget-object v0, p0, Lcom/loc/aK;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bC;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v2, Lcom/loc/bC;

    invoke-virtual {v1, v0, v2}, Lcom/loc/n;->bvU(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1a

    :cond_19
    :goto_19
    return-void

    :cond_1a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_19

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_24
    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/loc/bC;

    invoke-virtual {v0}, Lcom/loc/bC;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/loc/aK;->c:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    invoke-virtual {v0}, Lcom/loc/bC;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/loc/aK;->a:Landroid/content/Context;

    invoke-static {v3, v1, v0}, Lcom/loc/cl;->bFG(Landroid/content/Context;Lcom/loc/n;Ljava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_45} :catch_46

    goto :goto_24

    :catch_46
    move-exception v0

    const-string/jumbo v1, "DexFileManager"

    const-string/jumbo v2, "clearUnSuitableVersion"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19
.end method
