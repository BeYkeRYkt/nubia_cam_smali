.class public Lu/aly/dw;
.super Lu/aly/cO;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const-string/jumbo v0, "android_id"

    .line 14
    invoke-direct {p0, v0}, Lu/aly/cO;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lu/aly/dw;->b:Landroid/content/Context;

    .line 16
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 22
    :try_start_1
    iget-object v1, p0, Lu/aly/dw;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_f

    move-result-object v0

    .line 30
    :goto_e
    return-object v0

    .line 28
    :catch_f
    move-exception v1

    goto :goto_e
.end method
