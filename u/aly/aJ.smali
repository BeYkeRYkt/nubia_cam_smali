.class Lu/aly/aJ;
.super Lcom/umeng/analytics/g;
.source "SourceFile"


# instance fields
.field final synthetic bwS:Lu/aly/db;


# direct methods
.method constructor <init>(Lu/aly/db;)V
    .registers 2

    .prologue
    .line 52
    iput-object p1, p0, Lu/aly/aJ;->bwS:Lu/aly/db;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lu/aly/aJ;->bwS:Lu/aly/db;

    invoke-static {v0}, Lu/aly/db;->bZs(Lu/aly/db;)Lu/aly/v;

    move-result-object v0

    invoke-interface {v0}, Lu/aly/v;->b()V

    .line 55
    return-void
.end method
