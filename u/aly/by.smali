.class public Lu/aly/by;
.super Lu/aly/cO;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const-string/jumbo v0, "serial"

    .line 9
    invoke-direct {p0, v0}, Lu/aly/cO;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .registers 3

    .prologue
    .line 15
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    .line 18
    return-object v0

    .line 16
    :cond_8
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    return-object v0
.end method
