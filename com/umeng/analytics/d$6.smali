.class Lcom/umeng/analytics/d$6;
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
    .line 270
    iput-object p1, p0, Lcom/umeng/analytics/d$6;->c:Lcom/umeng/analytics/d;

    iput-object p2, p0, Lcom/umeng/analytics/d$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/umeng/analytics/d$6;->b:Ljava/lang/String;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    .prologue
    .line 272
    iget-object v0, p0, Lcom/umeng/analytics/d$6;->c:Lcom/umeng/analytics/d;

    invoke-static {v0}, Lcom/umeng/analytics/d;->a(Lcom/umeng/analytics/d;)Lu/aly/cT;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/d$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/umeng/analytics/d$6;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lu/aly/cT;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    return-void
.end method
