.class Lcom/loc/ac;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic beG:Lcom/loc/cc;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/loc/cc;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/loc/ac;->beG:Lcom/loc/cc;

    iput-object p2, p0, Lcom/loc/ac;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/ac;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/loc/ac;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/loc/ac;->beG:Lcom/loc/cc;

    iget-object v1, p0, Lcom/loc/ac;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/loc/ac;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/loc/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/cc;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    :goto_b
    return-void

    :catch_c
    move-exception v0

    const-string/jumbo v1, "DynamicClassLoader"

    const-string/jumbo v2, "run()"

    invoke-static {v0, v1, v2}, Lcom/loc/s;->bwk(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method
