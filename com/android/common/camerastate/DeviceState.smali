.class public enum Lcom/android/common/camerastate/DeviceState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/camerastate/b;


# static fields
.field public static final enum aeX:Lcom/android/common/camerastate/DeviceState;

.field public static final enum aeY:Lcom/android/common/camerastate/DeviceState;

.field public static final enum aeZ:Lcom/android/common/camerastate/DeviceState;

.field public static final enum afa:Lcom/android/common/camerastate/DeviceState;

.field public static final enum afb:Lcom/android/common/camerastate/DeviceState;

.field public static final enum afc:Lcom/android/common/camerastate/DeviceState;

.field public static final enum afd:Lcom/android/common/camerastate/DeviceState;

.field private static final synthetic afe:[Lcom/android/common/camerastate/DeviceState;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/android/common/camerastate/DeviceState;

    const-string/jumbo v1, "NOT_INITIALIZED"

    const/16 v2, 0xc9

    invoke-direct {v0, v1, v4, v2}, Lcom/android/common/camerastate/DeviceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    .line 7
    new-instance v0, Lcom/android/common/camerastate/DeviceState;

    const-string/jumbo v1, "PREVIEW_STOPPED"

    const/16 v2, 0xca

    invoke-direct {v0, v1, v5, v2}, Lcom/android/common/camerastate/DeviceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    .line 8
    new-instance v0, Lcom/android/common/camerastate/DeviceState;

    const-string/jumbo v1, "IDLE"

    const/16 v2, 0xcb

    invoke-direct {v0, v1, v6, v2}, Lcom/android/common/camerastate/DeviceState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    .line 9
    new-instance v0, Lcom/android/common/camerastate/DeviceState$1;

    const-string/jumbo v1, "SNAPSHOT_IN_PROGRESS"

    const/16 v2, 0xcc

    invoke-direct {v0, v1, v7, v2}, Lcom/android/common/camerastate/DeviceState$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    .line 24
    new-instance v0, Lcom/android/common/camerastate/DeviceState$2;

    const-string/jumbo v1, "VIDEO_RECORDING"

    const/16 v2, 0xcd

    invoke-direct {v0, v1, v8, v2}, Lcom/android/common/camerastate/DeviceState$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    .line 36
    new-instance v0, Lcom/android/common/camerastate/DeviceState$3;

    const-string/jumbo v1, "VIDEO_RECORDING_PAUSED"

    const/4 v2, 0x5

    const/16 v3, 0xce

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/camerastate/DeviceState$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->afc:Lcom/android/common/camerastate/DeviceState;

    .line 47
    new-instance v0, Lcom/android/common/camerastate/DeviceState$4;

    const-string/jumbo v1, "VIDEO_RECORDING_SNAPSHOT"

    const/4 v2, 0x6

    const/16 v3, 0xcf

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/camerastate/DeviceState$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->afd:Lcom/android/common/camerastate/DeviceState;

    .line 5
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/common/camerastate/DeviceState;

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afa:Lcom/android/common/camerastate/DeviceState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeY:Lcom/android/common/camerastate/DeviceState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeZ:Lcom/android/common/camerastate/DeviceState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afb:Lcom/android/common/camerastate/DeviceState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afc:Lcom/android/common/camerastate/DeviceState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->afd:Lcom/android/common/camerastate/DeviceState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/common/camerastate/DeviceState;->afe:[Lcom/android/common/camerastate/DeviceState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/camerastate/DeviceState;->mValue:I

    .line 62
    iput p3, p0, Lcom/android/common/camerastate/DeviceState;->mValue:I

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/android/common/camerastate/DeviceState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/camerastate/DeviceState;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/camerastate/DeviceState;
    .registers 2

    .prologue
    .line 5
    const-class v0, Lcom/android/common/camerastate/DeviceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/camerastate/DeviceState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/camerastate/DeviceState;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/android/common/camerastate/DeviceState;->afe:[Lcom/android/common/camerastate/DeviceState;

    return-object v0
.end method


# virtual methods
.method public amB(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;Ljava/util/ArrayList;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 75
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/camerastate/DeviceState;->amC(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 76
    return v1

    .line 78
    :cond_8
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/common/camerastate/DeviceState;->mValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_18
    return v0

    :cond_19
    const/4 v0, 0x1

    goto :goto_18
.end method

.method protected amC(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z
    .registers 5

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method public amD()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/common/camerastate/DeviceState;->mValue:I

    return v0
.end method
