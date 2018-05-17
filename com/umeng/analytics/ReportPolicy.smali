.class public Lcom/umeng/analytics/ReportPolicy;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final BATCH_AT_LAUNCH:I = 0x1

.field public static final BATCH_BY_INTERVAL:I = 0x6

.field public static final DAILY:I = 0x4

.field public static final REALTIME:I = 0x0

.field public static final SMART_POLICY:I = 0x8

.field public static final WIFIONLY:I = 0x5

.field static final a:I = 0x2

.field static final b:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 249
    return-void
.end method

.method public static a(I)Z
    .registers 2

    .prologue
    .line 50
    packed-switch p0, :pswitch_data_8

    :pswitch_3
    const/4 v0, 0x0

    .line 65
    :goto_4
    return v0

    :pswitch_5
    const/4 v0, 0x1

    .line 59
    goto :goto_4

    .line 50
    nop

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
