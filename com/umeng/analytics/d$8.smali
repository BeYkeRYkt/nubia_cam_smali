.class Lcom/umeng/analytics/d$8;
.super Lcom/umeng/analytics/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 338
    iget-object v0, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 339
    if-nez v0, :cond_e

    .line 348
    :cond_d
    :goto_d
    return-void

    .line 339
    :cond_e
    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 341
    iget-object v0, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/dg;->e(Landroid/content/Context;)Z

    move-result v0

    .line 342
    iget-object v1, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lu/aly/db;->a(Landroid/content/Context;)Lu/aly/db;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/db;->c()V

    .line 343
    if-nez v0, :cond_48

    .line 346
    :goto_3e
    iget-object v0, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/e;->b(Landroid/content/Context;)V

    goto :goto_d

    .line 344
    :cond_48
    iget-object v0, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d;->a()Lu/aly/dg;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$8;->a:Lcom/umeng/analytics/d;

    invoke-static {v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/dg;->f(Landroid/content/Context;)V

    goto :goto_3e
.end method
