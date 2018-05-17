.class public Lcn/nubia/bigAperture/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bmt:F

.field public bmu:F

.field public bmv:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/16 v0, 0x64

    iput v0, p0, Lcn/nubia/bigAperture/c;->bmv:I

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/bigAperture/c;->bmt:F

    .line 261
    const v0, 0x400ccccd    # 2.2f

    iput v0, p0, Lcn/nubia/bigAperture/c;->bmu:F

    .line 253
    return-void
.end method
