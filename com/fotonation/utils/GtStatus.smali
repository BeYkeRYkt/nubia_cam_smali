.class public Lcom/fotonation/utils/GtStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BAD_IMAGE_SIZE:I = -0xa

.field public static final BAD_STRUCT_SIZE:I = -0x9

.field public static final CANCELLED:I = -0x2

.field public static final FAIL:I = -0x1

.field public static final FMT_NOT_SUPPORTED:I = -0x7

.field public static final INVALID_ARG:I = -0x4

.field public static final NOT_IMPLEMENTED:I = -0x8

.field public static final NOT_SUPPORTED:I = -0x6

.field public static final NO_SYSTEM_RESOURCES:I = -0x3

.field public static final OK:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetDesc(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    .line 33
    packed-switch p0, :pswitch_data_2a

    .line 65
    :goto_4
    :pswitch_4
    return-object v0

    .line 36
    :pswitch_5
    const-string/jumbo v0, "No error"

    goto :goto_4

    .line 39
    :pswitch_9
    const-string/jumbo v0, "Unspecified error"

    goto :goto_4

    .line 42
    :pswitch_d
    const-string/jumbo v0, "Operation was cancelled"

    goto :goto_4

    .line 45
    :pswitch_11
    const-string/jumbo v0, "Not enough memory"

    goto :goto_4

    .line 48
    :pswitch_15
    const-string/jumbo v0, "Invalid argument"

    goto :goto_4

    .line 51
    :pswitch_19
    const-string/jumbo v0, "Feature not supported"

    goto :goto_4

    .line 54
    :pswitch_1d
    const-string/jumbo v0, "Feature not implemented"

    goto :goto_4

    .line 57
    :pswitch_21
    const-string/jumbo v0, "Invalid structure size"

    goto :goto_4

    .line 60
    :pswitch_25
    const-string/jumbo v0, "The size of the input image is not valid"

    goto :goto_4

    .line 33
    nop

    :pswitch_data_2a
    .packed-switch -0xa
        :pswitch_25
        :pswitch_21
        :pswitch_1d
        :pswitch_4
        :pswitch_19
        :pswitch_4
        :pswitch_15
        :pswitch_11
        :pswitch_d
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public static isErrorCode(I)Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 22
    if-gez p0, :cond_4

    const/4 v0, 0x1

    :cond_4
    return v0
.end method
