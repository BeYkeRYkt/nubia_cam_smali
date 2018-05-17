.class public Lcom/amap/api/location/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:D

.field private b:D


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DD)V
    .registers 14

    const-wide v6, 0x4066800000000000L    # 180.0

    const-wide v2, 0x4056800000000000L    # 90.0

    const-wide v4, -0x3f99800000000000L    # -180.0

    const-wide v0, -0x3fa9800000000000L    # -90.0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpl-double v8, p3, v6

    if-lez v8, :cond_2c

    :goto_1b
    cmpg-double v8, v6, v4

    if-gez v8, :cond_2e

    :goto_1f
    cmpl-double v6, p1, v2

    if-lez v6, :cond_30

    :goto_23
    cmpg-double v6, v2, v0

    if-gez v6, :cond_32

    :goto_27
    iput-wide v4, p0, Lcom/amap/api/location/f;->a:D

    iput-wide v0, p0, Lcom/amap/api/location/f;->b:D

    return-void

    :cond_2c
    move-wide v6, p3

    goto :goto_1b

    :cond_2e
    move-wide v4, v6

    goto :goto_1f

    :cond_30
    move-wide v2, p1

    goto :goto_23

    :cond_32
    move-wide v0, v2

    goto :goto_27
.end method


# virtual methods
.method public getLatitude()D
    .registers 3

    iget-wide v0, p0, Lcom/amap/api/location/f;->b:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    iget-wide v0, p0, Lcom/amap/api/location/f;->a:D

    return-wide v0
.end method
