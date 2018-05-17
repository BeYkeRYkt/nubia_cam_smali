.class public Lcn/nubia/arcsoft/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bMx([FI[F)V
    .registers 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 15
    const/16 v0, 0x5a

    if-ne p1, v0, :cond_13

    .line 16
    aget v0, p0, v2

    aput v0, p2, v1

    .line 17
    aget v0, p0, v1

    sub-float v0, v3, v0

    aput v0, p2, v2

    .line 14
    :goto_12
    return-void

    .line 19
    :cond_13
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_24

    .line 20
    aget v0, p0, v1

    sub-float v0, v3, v0

    aput v0, p2, v1

    .line 21
    aget v0, p0, v2

    sub-float v0, v3, v0

    aput v0, p2, v2

    goto :goto_12

    .line 23
    :cond_24
    const/16 v0, 0x10e

    if-ne p1, v0, :cond_33

    .line 24
    aget v0, p0, v2

    sub-float v0, v3, v0

    aput v0, p2, v1

    .line 25
    aget v0, p0, v1

    aput v0, p2, v2

    goto :goto_12

    .line 28
    :cond_33
    aget v0, p0, v1

    aput v0, p2, v1

    .line 29
    aget v0, p0, v2

    aput v0, p2, v2

    goto :goto_12
.end method

.method public static bMy()Z
    .registers 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 6
    const-string/jumbo v1, "persist.sys.devicename"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    if-eqz v1, :cond_15

    const-string/jumbo v2, "biaoding"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_15

    const/4 v0, 0x1

    :cond_15
    return v0
.end method
