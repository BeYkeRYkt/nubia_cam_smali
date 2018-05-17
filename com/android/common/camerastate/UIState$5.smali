.class final enum Lcom/android/common/camerastate/UIState$5;
.super Lcom/android/common/camerastate/UIState;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/common/camerastate/UIState;-><init>(Ljava/lang/String;IILcom/android/common/camerastate/UIState;)V

    return-void
.end method


# virtual methods
.method public amQ(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z
    .registers 5

    .prologue
    .line 59
    sget-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-eq p1, v0, :cond_8

    sget-object v0, Lcom/android/common/camerastate/UIState$5;->afl:Lcom/android/common/camerastate/UIState;

    if-ne p1, v0, :cond_12

    .line 60
    :cond_8
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne p2, v0, :cond_12

    .line 61
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-ne p3, v0, :cond_12

    .line 62
    const/4 v0, 0x1

    return v0

    .line 64
    :cond_12
    const/4 v0, 0x0

    return v0
.end method
