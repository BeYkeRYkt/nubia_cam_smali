.class public enum Lcom/android/common/camerastate/UIState;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/camerastate/b;


# static fields
.field public static final enum afk:Lcom/android/common/camerastate/UIState;

.field public static final enum afl:Lcom/android/common/camerastate/UIState;

.field public static final enum afm:Lcom/android/common/camerastate/UIState;

.field public static final enum afn:Lcom/android/common/camerastate/UIState;

.field public static final enum afo:Lcom/android/common/camerastate/UIState;

.field public static final enum afp:Lcom/android/common/camerastate/UIState;

.field private static final synthetic afq:[Lcom/android/common/camerastate/UIState;


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
    new-instance v0, Lcom/android/common/camerastate/UIState;

    const-string/jumbo v1, "NORMAL"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/android/common/camerastate/UIState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    .line 7
    new-instance v0, Lcom/android/common/camerastate/UIState$1;

    const-string/jumbo v1, "HIGH_SETTING_POPUP"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lcom/android/common/camerastate/UIState$1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    .line 19
    new-instance v0, Lcom/android/common/camerastate/UIState$2;

    const-string/jumbo v1, "SETTING"

    const/16 v2, 0x66

    invoke-direct {v0, v1, v6, v2}, Lcom/android/common/camerastate/UIState$2;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    .line 31
    new-instance v0, Lcom/android/common/camerastate/UIState$3;

    const-string/jumbo v1, "TOPBAR_SETTING_POPUP"

    const/16 v2, 0x67

    invoke-direct {v0, v1, v7, v2}, Lcom/android/common/camerastate/UIState$3;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    .line 43
    new-instance v0, Lcom/android/common/camerastate/UIState$4;

    const-string/jumbo v1, "GRID_EFFECT"

    const/16 v2, 0x68

    invoke-direct {v0, v1, v8, v2}, Lcom/android/common/camerastate/UIState$4;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    .line 55
    new-instance v0, Lcom/android/common/camerastate/UIState$5;

    const-string/jumbo v1, "CAMERA_FAMILY"

    const/4 v2, 0x5

    const/16 v3, 0x69

    invoke-direct {v0, v1, v2, v3}, Lcom/android/common/camerastate/UIState$5;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    .line 5
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/common/camerastate/UIState;

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/camerastate/UIState;->afp:Lcom/android/common/camerastate/UIState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/camerastate/UIState;->afn:Lcom/android/common/camerastate/UIState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/common/camerastate/UIState;->afo:Lcom/android/common/camerastate/UIState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/common/camerastate/UIState;->afm:Lcom/android/common/camerastate/UIState;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/common/camerastate/UIState;->afl:Lcom/android/common/camerastate/UIState;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/common/camerastate/UIState;->afq:[Lcom/android/common/camerastate/UIState;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/common/camerastate/UIState;->mValue:I

    .line 70
    iput p3, p0, Lcom/android/common/camerastate/UIState;->mValue:I

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/android/common/camerastate/UIState;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/android/common/camerastate/UIState;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/camerastate/UIState;
    .registers 2

    .prologue
    .line 5
    const-class v0, Lcom/android/common/camerastate/UIState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/camerastate/UIState;

    return-object v0
.end method

.method public static values()[Lcom/android/common/camerastate/UIState;
    .registers 1

    .prologue
    .line 5
    sget-object v0, Lcom/android/common/camerastate/UIState;->afq:[Lcom/android/common/camerastate/UIState;

    return-object v0
.end method


# virtual methods
.method public amB(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;Ljava/util/ArrayList;)Z
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 83
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/common/camerastate/UIState;->amQ(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 84
    return v1

    .line 86
    :cond_8
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_19

    iget v0, p0, Lcom/android/common/camerastate/UIState;->mValue:I

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
    .line 75
    iget v0, p0, Lcom/android/common/camerastate/UIState;->mValue:I

    return v0
.end method

.method protected amQ(Lcom/android/common/camerastate/UIState;Lcom/android/common/camerastate/DeviceState;Lcom/android/common/camerastate/FunctionState;)Z
    .registers 5

    .prologue
    .line 92
    const/4 v0, 0x1

    return v0
.end method
