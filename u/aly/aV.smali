.class Lu/aly/aV;
.super Lcom/umeng/analytics/g;
.source "SourceFile"


# instance fields
.field final synthetic bxi:Lu/aly/P;

.field final synthetic bxj:Lu/aly/db;


# direct methods
.method constructor <init>(Lu/aly/db;Lu/aly/P;)V
    .registers 3

    .prologue
    .line 32
    iput-object p1, p0, Lu/aly/aV;->bxj:Lu/aly/db;

    iput-object p2, p0, Lu/aly/aV;->bxi:Lu/aly/P;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 3

    .prologue
    .line 34
    iget-object v0, p0, Lu/aly/aV;->bxj:Lu/aly/db;

    invoke-static {v0}, Lu/aly/db;->bZs(Lu/aly/db;)Lu/aly/v;

    move-result-object v0

    iget-object v1, p0, Lu/aly/aV;->bxi:Lu/aly/P;

    invoke-interface {v0, v1}, Lu/aly/v;->bRH(Lu/aly/P;)V

    .line 35
    return-void
.end method
