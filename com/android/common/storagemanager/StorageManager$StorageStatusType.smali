.class public final enum Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaF:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaG:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaH:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaI:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaJ:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaK:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaL:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaM:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field public static final enum aaN:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

.field private static final synthetic aaO:[Lcom/android/common/storagemanager/StorageManager$StorageStatusType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "ADD_REQUEST_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "ADD_REQUEST_FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaH:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "CAN_ADD_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 51
    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "OUT_OF_MEMORY"

    invoke-direct {v0, v1, v6}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaG:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "MEMOTY_SUFFICIENT"

    invoke-direct {v0, v1, v7}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaJ:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 52
    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "STORAGE_INSUFFICIENT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaF:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "STORAGE_SUFFICIENT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaM:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 53
    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "GET_STORAGE_CAPACITY_FAIL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaI:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "QUEUE_FULL"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaK:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 54
    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "QUEUE_NOT_FULL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaL:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    new-instance v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const-string/jumbo v1, "THREAD_POOL_STOPED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaN:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    .line 49
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaE:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaH:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaD:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaG:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaJ:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaF:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaM:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaI:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaK:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaL:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaN:Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaO:[Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    .registers 2

    .prologue
    .line 49
    const-class v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    return-object v0
.end method

.method public static values()[Lcom/android/common/storagemanager/StorageManager$StorageStatusType;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/common/storagemanager/StorageManager$StorageStatusType;->aaO:[Lcom/android/common/storagemanager/StorageManager$StorageStatusType;

    return-object v0
.end method
