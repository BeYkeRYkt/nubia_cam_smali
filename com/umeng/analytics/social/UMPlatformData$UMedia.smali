.class public enum Lcom/umeng/analytics/social/UMPlatformData$UMedia;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum DOUBAN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum RENREN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum SINA_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum TENCENT_QQ:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum TENCENT_QZONE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum TENCENT_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum WEIXIN_CIRCLE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field public static final enum WEIXIN_FRIENDS:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

.field private static final synthetic a:[Lcom/umeng/analytics/social/UMPlatformData$UMedia;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$1;

    const-string/jumbo v1, "SINA_WEIBO"

    invoke-direct {v0, v1, v3}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->SINA_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 21
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$2;

    const-string/jumbo v1, "TENCENT_WEIBO"

    invoke-direct {v0, v1, v4}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 27
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$3;

    const-string/jumbo v1, "TENCENT_QZONE"

    invoke-direct {v0, v1, v5}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QZONE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 33
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$4;

    const-string/jumbo v1, "TENCENT_QQ"

    invoke-direct {v0, v1, v6}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QQ:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 39
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$5;

    const-string/jumbo v1, "WEIXIN_FRIENDS"

    invoke-direct {v0, v1, v7}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_FRIENDS:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 45
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$6;

    const-string/jumbo v1, "WEIXIN_CIRCLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_CIRCLE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 51
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$7;

    const-string/jumbo v1, "RENREN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->RENREN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 57
    new-instance v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia$8;

    const-string/jumbo v1, "DOUBAN"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/umeng/analytics/social/UMPlatformData$UMedia$8;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->DOUBAN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    const/16 v0, 0x8

    .line 14
    new-array v0, v0, [Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->SINA_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v3

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_WEIBO:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v4

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QZONE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v5

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->TENCENT_QQ:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v6

    sget-object v1, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_FRIENDS:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->WEIXIN_CIRCLE:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->RENREN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->DOUBAN:Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    aput-object v2, v0, v1

    sput-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->a:[Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/umeng/analytics/social/UMPlatformData$1;)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/umeng/analytics/social/UMPlatformData$UMedia;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/umeng/analytics/social/UMPlatformData$UMedia;
    .registers 2

    .prologue
    const-class v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    .line 14
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    return-object v0
.end method

.method public static values()[Lcom/umeng/analytics/social/UMPlatformData$UMedia;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/umeng/analytics/social/UMPlatformData$UMedia;->a:[Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/umeng/analytics/social/UMPlatformData$UMedia;

    return-object v0
.end method
