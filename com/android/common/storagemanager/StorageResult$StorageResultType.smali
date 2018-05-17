.class public final enum Lcom/android/common/storagemanager/StorageResult$StorageResultType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public static final enum aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public static final enum aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public static final enum aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public static final enum aag:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public static final enum aah:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public static final enum aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field public static final enum aaj:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

.field private static final synthetic aak:[Lcom/android/common/storagemanager/StorageResult$StorageResultType;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "COMPRESS_FAIL"

    invoke-direct {v0, v1, v4}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aag:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "WRITE_EXIF_FAIL"

    invoke-direct {v0, v1, v5}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aah:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "WRITE_FILE_FAIL"

    invoke-direct {v0, v1, v6}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 11
    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "WRITE_DATABASE_FAIL"

    invoke-direct {v0, v1, v7}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "CREATE_BITMAP_FAIL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaj:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "PATH_NOT_EXIST"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 12
    new-instance v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const-string/jumbo v1, "DATA_IS_NULL"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/common/storagemanager/StorageResult$StorageResultType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    .line 9
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aai:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aag:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aah:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aac:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aad:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaj:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aaf:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aae:Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aak:[Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/common/storagemanager/StorageResult$StorageResultType;
    .registers 2

    .prologue
    .line 9
    const-class v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    return-object v0
.end method

.method public static values()[Lcom/android/common/storagemanager/StorageResult$StorageResultType;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/android/common/storagemanager/StorageResult$StorageResultType;->aak:[Lcom/android/common/storagemanager/StorageResult$StorageResultType;

    return-object v0
.end method
