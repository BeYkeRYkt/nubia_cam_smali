.class public enum Lcom/android/common/camerastate/FunctionState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/camerastate/b;


# static fields
.field public static final enum afr:Lcom/android/common/camerastate/FunctionState;

.field public static final enum afs:Lcom/android/common/camerastate/FunctionState;

.field public static final enum aft:Lcom/android/common/camerastate/FunctionState;

.field public static final enum afu:Lcom/android/common/camerastate/FunctionState;

.field public static final enum afv:Lcom/android/common/camerastate/FunctionState;

.field public static final enum afw:Lcom/android/common/camerastate/FunctionState;

.field public static final enum afx:Lcom/android/common/camerastate/FunctionState;

.field public static final enum afy:Lcom/android/common/camerastate/FunctionState;

.field private static final synthetic afz:[Lcom/android/common/camerastate/FunctionState;


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

    .line 8
    new-instance v0, Lcom/android/common/camerastate/FunctionState;

    const-string/jumbo v1, "NORMAL"

    const/16 v2, 0x12d

    invoke-direct {v0, v1, v4, v2}, Lcom/android/common/camerastate/FunctionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    .line 9
    new-instance v0, Lcom/android/common/camerastate/FunctionState$1;

    const-string/jumbo v1, "QUALITY_MULTISHOOTING"

    const/16 v2, 0x12e

    invoke-direct {v0, v1, v5, v2}, Lcom/android/common/camerastate/FunctionState$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    .line 21
    new-instance v0, Lcom/android/common/camerastate/FunctionState$2;

    const-string/jumbo v1, "SPEED_MULTISHOOTING"

    const/16 v2, 0x12f

    invoke-direct {v0, v1, v6, v2}, Lcom/android/common/camerastate/FunctionState$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    .line 33
    new-instance v0, Lcom/android/common/camerastate/FunctionState$3;

    const-string/jumbo v1, "INTERVAL"

    const/16 v2, 0x130

    invoke-direct {v0, v1, v7, v2}, Lcom/android/common/camerastate/FunctionState$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    .line 46
    new-instance v0, Lcom/android/common/camerastate/FunctionState$4;

    const-string/jumbo v1, "DELAY_SHOOT"

    const/16 v2, 0x131

    invoke-direct {v0, v1, v8, v2}, Lcom/android/common/camerastate/FunctionState$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    .line 59
    new-instance v0, Lcom/android/common/camerastate/FunctionState$5;

    const-string/jumbo v1, "SWITCHING_CAMERA"

    const/4 v2, 0x5

    const/16 v3, 0x132

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/camerastate/FunctionState$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    .line 73
    new-instance v0, Lcom/android/common/camerastate/FunctionState;

    const-string/jumbo v1, "RESTART_CAMERA"

    const/4 v2, 0x6

    const/16 v3, 0x133

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/camerastate/FunctionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    .line 74
    new-instance v0, Lcom/android/common/camerastate/FunctionState;

    const-string/jumbo v1, "ZOOM"

    const/4 v2, 0x7

    const/16 v3, 0x134

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/camerastate/FunctionState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afx:Lcom/android/common/camerastate/FunctionState;

    .line 7
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/common/camerastate/FunctionState;

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afu:Lcom/android/common/camerastate/FunctionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->aft:Lcom/android/common/camerastate/FunctionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afs:Lcom/android/common/camerastate/FunctionState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afv:Lcom/android/common/camerastate/FunctionState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afy:Lcom/android/common/camerastate/FunctionState;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afx:Lcom/android/common/camerastate/FunctionState;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/common/camerastate/FunctionState;->afz:[Lcom/android/common/camerastate/FunctionState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 79
    iput p3, p0, Lcom/android/common/camerastate/FunctionState;->mValue:I

    .line 78
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/android/common/camerastate/FunctionState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/camerastate/FunctionState;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/camerastate/FunctionState;
    .registers 2

    .prologue
    .line 7
    const-class v0, Lcom/android/common/camerastate/FunctionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/camerastate/FunctionState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/camerastate/FunctionState;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/android/common/camerastate/FunctionState;->afz:[Lcom/android/common/camerastate/FunctionState;

    return-object v0
.end method


# virtual methods
.method public amB(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;Ljava/util/ArrayList;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/camerastate/FunctionState;->amR(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 93
    return v1

    .line 95
    :cond_8
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/common/camerastate/FunctionState;->mValue:I

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

.method public amD()I
    .registers 2

    .prologue
    .line 84
    iget v0, p0, Lcom/android/common/camerastate/FunctionState;->mValue:I

    return v0
.end method

.method protected amR(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z
    .registers 5

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method
