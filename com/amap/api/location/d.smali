.class public Lcom/amap/api/location/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field protected static bcU:Ljava/lang/String;


# instance fields
.field private a:J

.field private b:J

.field private bcQ:Z

.field private bcR:Z

.field private bcS:Z

.field private bcT:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

.field private d:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, ""

    sput-object v0, Lcom/amap/api/location/d;->bcU:Ljava/lang/String;

    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/amap/api/location/d;->a:J

    sget v0, Lcom/loc/bx;->bhx:I

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/amap/api/location/d;->b:J

    iput-boolean v2, p0, Lcom/amap/api/location/d;->bcQ:Z

    iput-boolean v2, p0, Lcom/amap/api/location/d;->d:Z

    iput-boolean v3, p0, Lcom/amap/api/location/d;->bcR:Z

    iput-boolean v3, p0, Lcom/amap/api/location/d;->bcS:Z

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcX:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/d;->bcT:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-boolean v2, p0, Lcom/amap/api/location/d;->h:Z

    iput-boolean v2, p0, Lcom/amap/api/location/d;->i:Z

    iput-boolean v3, p0, Lcom/amap/api/location/d;->j:Z

    iput-boolean v3, p0, Lcom/amap/api/location/d;->k:Z

    return-void
.end method

.method public static buX()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/amap/api/location/d;->bcU:Ljava/lang/String;

    return-object v0
.end method

.method private bvm(Lcom/amap/api/location/d;)Lcom/amap/api/location/d;
    .registers 4

    iget-wide v0, p1, Lcom/amap/api/location/d;->a:J

    iput-wide v0, p0, Lcom/amap/api/location/d;->a:J

    iget-boolean v0, p1, Lcom/amap/api/location/d;->bcQ:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->bcQ:Z

    iget-object v0, p1, Lcom/amap/api/location/d;->bcT:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iput-object v0, p0, Lcom/amap/api/location/d;->bcT:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    iget-boolean v0, p1, Lcom/amap/api/location/d;->d:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->d:Z

    iget-boolean v0, p1, Lcom/amap/api/location/d;->h:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->h:Z

    iget-boolean v0, p1, Lcom/amap/api/location/d;->i:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->i:Z

    iget-boolean v0, p1, Lcom/amap/api/location/d;->bcR:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->bcR:Z

    iget-boolean v0, p1, Lcom/amap/api/location/d;->bcS:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->bcS:Z

    iget-wide v0, p1, Lcom/amap/api/location/d;->b:J

    iput-wide v0, p0, Lcom/amap/api/location/d;->b:J

    iget-boolean v0, p1, Lcom/amap/api/location/d;->j:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->j:Z

    iget-boolean v0, p1, Lcom/amap/api/location/d;->k:Z

    iput-boolean v0, p0, Lcom/amap/api/location/d;->k:Z

    return-object p0
.end method


# virtual methods
.method public buY()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->d:Z

    return v0
.end method

.method public buZ()J
    .registers 3

    iget-wide v0, p0, Lcom/amap/api/location/d;->a:J

    return-wide v0
.end method

.method public bva(J)Lcom/amap/api/location/d;
    .registers 6

    const-wide/16 v0, 0x3e8

    cmp-long v2, p1, v0

    if-ltz v2, :cond_d

    const/4 v2, 0x1

    :goto_7
    if-nez v2, :cond_a

    move-wide p1, v0

    :cond_a
    iput-wide p1, p0, Lcom/amap/api/location/d;->a:J

    return-object p0

    :cond_d
    const/4 v2, 0x0

    goto :goto_7
.end method

.method public bvb()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->bcQ:Z

    return v0
.end method

.method public bvc()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->bcR:Z

    return v0
.end method

.method public bvd(Z)Lcom/amap/api/location/d;
    .registers 2

    iput-boolean p1, p0, Lcom/amap/api/location/d;->bcR:Z

    return-object p0
.end method

.method public bve()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->bcS:Z

    return v0
.end method

.method public bvf()Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;
    .registers 2

    iget-object v0, p0, Lcom/amap/api/location/d;->bcT:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object v0
.end method

.method public bvg(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/d;
    .registers 2

    iput-object p1, p0, Lcom/amap/api/location/d;->bcT:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    return-object p0
.end method

.method public bvh()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->h:Z

    return v0
.end method

.method public bvi()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->i:Z

    return v0
.end method

.method public bvj()J
    .registers 3

    iget-wide v0, p0, Lcom/amap/api/location/d;->b:J

    return-wide v0
.end method

.method public bvk()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->j:Z

    return v0
.end method

.method public bvl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/amap/api/location/d;->k:Z

    return v0
.end method

.method public clone()Lcom/amap/api/location/d;
    .registers 2

    new-instance v0, Lcom/amap/api/location/d;

    invoke-direct {v0}, Lcom/amap/api/location/d;-><init>()V

    invoke-direct {v0, p0}, Lcom/amap/api/location/d;->bvm(Lcom/amap/api/location/d;)Lcom/amap/api/location/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lcom/amap/api/location/d;->clone()Lcom/amap/api/location/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "interval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/d;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isOnceLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->bcQ:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "locationMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/amap/api/location/d;->bcT:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isMockEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->d:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isKillProcess:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->h:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isGpsFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->i:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isNeedAddress:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->bcR:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isWifiActiveScan:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->bcS:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "httpTimeOut:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/amap/api/location/d;->b:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isOffset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->j:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "isLocationCacheEnable:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/amap/api/location/d;->k:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
