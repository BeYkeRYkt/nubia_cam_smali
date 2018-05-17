.class final enum Lcom/android/common/camerastate/DeviceState$1;
.super Lcom/android/common/camerastate/DeviceState;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 9
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/common/camerastate/DeviceState;-><init>(Ljava/lang/String;IILcom/android/common/camerastate/DeviceState;)V

    return-void
.end method


# virtual methods
.method public amC(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z
    .registers 5

    .prologue
    .line 13
    sget-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne p1, v0, :cond_1a

    .line 14
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne p2, v0, :cond_1a

    .line 15
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-eq p3, v0, :cond_10

    .line 16
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    if-ne p3, v0, :cond_12

    .line 19
    :cond_10
    const/4 v0, 0x1

    return v0

    .line 17
    :cond_12
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    if-eq p3, v0, :cond_10

    .line 18
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    if-eq p3, v0, :cond_10

    .line 21
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method
