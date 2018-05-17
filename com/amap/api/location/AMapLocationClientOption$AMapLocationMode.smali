.class public final enum Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum bcV:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field public static final enum bcW:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field public static final enum bcX:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private static final synthetic bcY:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    const-string/jumbo v1, "Battery_Saving"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcV:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    const-string/jumbo v1, "Device_Sensors"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcW:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    const-string/jumbo v1, "Hight_Accuracy"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcX:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcV:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcW:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcX:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcY:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .registers 2

    const-class v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .registers 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcY:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object v0
.end method
