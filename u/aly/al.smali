.class public Lu/aly/al;
.super Lu/aly/cO;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const-string/jumbo v0, "mac"

    .line 13
    invoke-direct {p0, v0}, Lu/aly/cO;-><init>(Ljava/lang/String;)V

    .line 14
    iput-object p1, p0, Lu/aly/al;->b:Landroid/content/Context;

    .line 15
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 21
    :try_start_1
    iget-object v1, p0, Lu/aly/al;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/e;->bQB(Landroid/content/Context;)Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_8

    move-result-object v0

    .line 28
    :goto_7
    return-object v0

    .line 26
    :catch_8
    move-exception v1

    goto :goto_7
.end method
