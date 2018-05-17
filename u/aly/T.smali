.class public Lu/aly/T;
.super Lu/aly/cO;
.source "SourceFile"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    const-string/jumbo v0, "imei"

    .line 16
    invoke-direct {p0, v0}, Lu/aly/cO;-><init>(Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lu/aly/T;->b:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 22
    iget-object v0, p0, Lu/aly/T;->b:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 24
    if-eqz v0, :cond_e

    .line 31
    :cond_e
    :try_start_e
    iget-object v2, p0, Lu/aly/T;->b:Landroid/content/Context;

    const-string/jumbo v3, "android.permission.READ_PHONE_STATE"

    invoke-static {v2, v3}, Lu/aly/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1b

    move-object v0, v1

    .line 39
    :goto_1a
    return-object v0

    .line 32
    :cond_1b
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_1e} :catch_20

    move-result-object v0

    goto :goto_1a

    .line 37
    :catch_20
    move-exception v0

    move-object v0, v1

    goto :goto_1a
.end method
