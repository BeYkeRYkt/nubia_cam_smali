.class Lcom/umeng/analytics/d$2;
.super Lcom/umeng/analytics/g;
.source "SourceFile"


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/umeng/analytics/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d;Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 125
    iput-object p1, p0, Lcom/umeng/analytics/d$2;->b:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/umeng/analytics/d$2;->b:Lcom/umeng/analytics/d;

    iget-object v1, p0, Lcom/umeng/analytics/d$2;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/umeng/analytics/d;->b(Lcom/umeng/analytics/d;Landroid/content/Context;)V

    .line 128
    return-void
.end method
