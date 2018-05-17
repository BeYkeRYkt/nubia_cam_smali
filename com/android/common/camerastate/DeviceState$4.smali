.class final enum Lcom/android/common/camerastate/DeviceState$4;
.super Lcom/android/common/camerastate/DeviceState;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/common/camerastate/DeviceState;-><init>(Ljava/lang/String;IILcom/android/common/camerastate/DeviceState;)V

    return-void
.end method


# virtual methods
.method protected amC(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z
    .registers 5

    .prologue
    .line 52
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    if-ne p2, v0, :cond_6

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_6
    const/4 v0, 0x0

    return v0
.end method
