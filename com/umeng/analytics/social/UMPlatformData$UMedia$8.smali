.class enum Lcom/umeng/analytics/social/UMPlatformData$UMedia$8;
.super Lcom/umeng/analytics/social/UMPlatformData$UMedia;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/umeng/analytics/social/UMPlatformData$UMedia;-><init>(Ljava/lang/String;ILcom/umeng/analytics/social/UMPlatformData$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    const-string/jumbo v0, "douban"

    .line 60
    return-object v0
.end method
