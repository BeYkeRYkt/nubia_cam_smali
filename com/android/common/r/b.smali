.class public Lcom/android/common/r/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/r/a;


# instance fields
.field private afM:Landroid/content/Context;

.field private afN:Landroid/location/Location;

.field private afO:Lcom/amap/api/location/b;

.field private afP:Lcom/amap/api/location/a;

.field private afQ:Lcom/amap/api/location/d;

.field private afR:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object v1, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    .line 37
    iput-object v1, p0, Lcom/android/common/r/b;->afQ:Lcom/amap/api/location/d;

    .line 38
    new-instance v0, Lcom/android/common/r/c;

    invoke-direct {v0, p0, v1}, Lcom/android/common/r/c;-><init>(Lcom/android/common/r/b;Lcom/android/common/r/c;)V

    iput-object v0, p0, Lcom/android/common/r/b;->afP:Lcom/amap/api/location/a;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/r/b;->afR:Z

    .line 40
    iput-object v1, p0, Lcom/android/common/r/b;->afN:Landroid/location/Location;

    .line 43
    const-string/jumbo v0, "NubiaAMapLocationManager"

    const-string/jumbo v1, "Using Gaode lbs"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Lcom/android/common/r/b;->afM:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/android/common/r/b;->ang()V

    .line 42
    return-void
.end method

.method private ang()V
    .registers 5

    .prologue
    .line 78
    new-instance v0, Lcom/amap/api/location/b;

    iget-object v1, p0, Lcom/android/common/r/b;->afM:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    .line 79
    new-instance v0, Lcom/amap/api/location/d;

    invoke-direct {v0}, Lcom/amap/api/location/d;-><init>()V

    iput-object v0, p0, Lcom/android/common/r/b;->afQ:Lcom/amap/api/location/d;

    .line 80
    iget-object v0, p0, Lcom/android/common/r/b;->afQ:Lcom/amap/api/location/d;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->bcX:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/d;->bvg(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/d;

    .line 81
    iget-object v0, p0, Lcom/android/common/r/b;->afQ:Lcom/amap/api/location/d;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/location/d;->bva(J)Lcom/amap/api/location/d;

    .line 82
    iget-object v0, p0, Lcom/android/common/r/b;->afQ:Lcom/amap/api/location/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/location/d;->bvd(Z)Lcom/amap/api/location/d;

    .line 83
    iget-object v0, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    iget-object v1, p0, Lcom/android/common/r/b;->afP:Lcom/amap/api/location/a;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/b;->buR(Lcom/amap/api/location/a;)V

    .line 77
    return-void
.end method

.method private anh()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    invoke-virtual {v0}, Lcom/amap/api/location/b;->buS()V

    .line 85
    return-void
.end method

.method private ani()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    invoke-virtual {v0}, Lcom/amap/api/location/b;->buT()V

    .line 89
    return-void
.end method

.method static synthetic anj(Lcom/android/common/r/b;Landroid/location/Location;)Landroid/location/Location;
    .registers 2

    iput-object p1, p0, Lcom/android/common/r/b;->afN:Landroid/location/Location;

    return-object p1
.end method


# virtual methods
.method public ane()Landroid/location/Location;
    .registers 2

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/common/r/b;->afR:Z

    if-nez v0, :cond_6

    .line 73
    const/4 v0, 0x0

    return-object v0

    .line 74
    :cond_6
    iget-object v0, p0, Lcom/android/common/r/b;->afN:Landroid/location/Location;

    return-object v0
.end method

.method public anf(Z)V
    .registers 5

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/common/r/b;->afR:Z

    if-eq v0, p1, :cond_2d

    iget-object v0, p0, Lcom/android/common/r/b;->afM:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/h;->apM(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 51
    const-string/jumbo v0, "NubiaAMapLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recordLcation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iput-boolean p1, p0, Lcom/android/common/r/b;->afR:Z

    .line 53
    if-eqz p1, :cond_2e

    .line 54
    invoke-direct {p0}, Lcom/android/common/r/b;->anh()V

    .line 49
    :cond_2d
    :goto_2d
    return-void

    .line 56
    :cond_2e
    invoke-direct {p0}, Lcom/android/common/r/b;->ani()V

    goto :goto_2d
.end method

.method public release()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    if-eqz v0, :cond_c

    .line 64
    iget-object v0, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    invoke-virtual {v0}, Lcom/amap/api/location/b;->onDestroy()V

    .line 65
    iput-object v1, p0, Lcom/android/common/r/b;->afO:Lcom/amap/api/location/b;

    .line 67
    :cond_c
    iput-object v1, p0, Lcom/android/common/r/b;->afM:Landroid/content/Context;

    .line 62
    return-void
.end method
