.class public Lcom/android/videomaker/n;
.super Lcom/android/common/setting/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/android/common/setting/c;-><init>(Lcom/android/common/appService/W;)V

    .line 11
    return-void
.end method


# virtual methods
.method protected TB()I
    .registers 2

    .prologue
    .line 38
    const/16 v0, 0x11

    return v0
.end method

.method protected TL()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    const-string/jumbo v0, "off"

    return-object v0
.end method

.method protected To()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/android/videomaker/n;->SY()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Ud()Lcom/android/common/custom/v;
    .registers 3

    .prologue
    .line 30
    new-instance v0, Lcom/android/common/custom/v;

    invoke-direct {v0}, Lcom/android/common/custom/v;-><init>()V

    .line 31
    const/16 v1, 0x280

    iput v1, v0, Lcom/android/common/custom/v;->width:I

    .line 32
    const/16 v1, 0x1e0

    iput v1, v0, Lcom/android/common/custom/v;->height:I

    .line 33
    return-object v0
.end method
