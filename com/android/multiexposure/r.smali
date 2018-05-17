.class public Lcom/android/multiexposure/r;
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
    .line 22
    const/16 v0, 0x9

    return v0
.end method

.method protected TI()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/custom/D;->aeN()Lcom/android/common/custom/x;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->acq()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected TR()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method
