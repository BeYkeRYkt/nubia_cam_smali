.class Lcom/umeng/analytics/d$7;
.super Lcom/umeng/analytics/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/umeng/analytics/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 312
    iput-object p1, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/d$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 317
    if-nez v0, :cond_3a

    .line 318
    :cond_d
    iget-object v0, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/dg;->e(Landroid/content/Context;)Z

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/aly/db;->a(Landroid/content/Context;)Lu/aly/db;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/db;->c()V

    .line 320
    if-nez v0, :cond_50

    .line 323
    :goto_2c
    iget-object v0, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$7;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/d$7;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :goto_39
    return-void

    .line 317
    :cond_3a
    iget-object v1, p0, Lcom/umeng/analytics/d$7;->a:Ljava/lang/String;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/umeng/analytics/d$7;->b:Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_39

    .line 321
    :cond_50
    iget-object v0, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$7;->c:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/dg;->f(Landroid/content/Context;)V

    goto :goto_2c
.end method
