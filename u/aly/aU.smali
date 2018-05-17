.class public Lu/aly/aU;
.super Lu/aly/cO;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const-string/jumbo v0, "idmd5"

    .line 12
    invoke-direct {p0, v0}, Lu/aly/cO;-><init>(Ljava/lang/String;)V

    .line 13
    iput-object p1, p0, Lu/aly/aU;->b:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lu/aly/aU;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/e;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
