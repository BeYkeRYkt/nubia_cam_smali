.class Lu/aly/j;
.super Lcom/umeng/analytics/g;
.source "SourceFile"


# instance fields
.field final synthetic bui:Lu/aly/X;


# direct methods
.method constructor <init>(Lu/aly/X;)V
    .registers 2

    .prologue
    .line 153
    iput-object p1, p0, Lu/aly/j;->bui:Lu/aly/X;

    invoke-direct {p0}, Lcom/umeng/analytics/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 157
    iget-object v0, p0, Lu/aly/j;->bui:Lu/aly/X;

    invoke-virtual {v0}, Lu/aly/X;->a()V

    .line 158
    return-void
.end method
