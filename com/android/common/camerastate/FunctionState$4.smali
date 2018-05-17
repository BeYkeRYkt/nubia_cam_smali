.class final enum Lcom/android/common/camerastate/FunctionState$4;
.super Lcom/android/common/camerastate/FunctionState;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/common/camerastate/FunctionState;-><init>(Ljava/lang/String;IILcom/android/common/camerastate/FunctionState;)V

    return-void
.end method


# virtual methods
.method public amR(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z
    .registers 5

    .prologue
    .line 51
    sget-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne p1, v0, :cond_e

    .line 52
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne p2, v0, :cond_e

    .line 53
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-ne p3, v0, :cond_e

    .line 54
    const/4 v0, 0x1

    return v0

    .line 56
    :cond_e
    const/4 v0, 0x0

    return v0
.end method
