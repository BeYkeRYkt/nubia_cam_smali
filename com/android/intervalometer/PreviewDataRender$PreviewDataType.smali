.class final enum Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic aQo:[Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

.field public static final enum aQp:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

.field public static final enum aQq:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 239
    new-instance v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    const-string/jumbo v1, "ARGB_BUFFER"

    invoke-direct {v0, v1, v2}, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQp:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    new-instance v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    const-string/jumbo v1, "YUV_BUFFER"

    invoke-direct {v0, v1, v3}, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQq:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    .line 238
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    sget-object v1, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQp:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQq:Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQo:[Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 238
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;
    .registers 2

    .prologue
    .line 238
    const-class v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    return-object v0
.end method

.method public static values()[Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;
    .registers 1

    .prologue
    .line 238
    sget-object v0, Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;->aQo:[Lcom/android/intervalometer/PreviewDataRender$PreviewDataType;

    return-object v0
.end method
