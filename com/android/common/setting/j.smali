.class public Lcom/android/common/setting/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TQ:I

.field public static final TR:[F

.field public static final TS:[F

.field public static final TT:[F

.field private static TU:F

.field private static TV:F

.field public static final TW:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v1, 0x0

    const/16 v2, 0x11

    .line 112
    invoke-static {}, Lcom/android/common/appService/B;->lS()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 114
    invoke-static {}, Lcom/android/common/appService/B;->lS()Ljava/util/ArrayList;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@31
    nop

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/C;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 112
    :goto_1d
    sput v0, Lcom/android/common/setting/j;->TW:I

    .line 116
    invoke-static {}, Lcom/android/common/appService/B;->lS()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 118
    invoke-static {}, Lcom/android/common/appService/B;->lS()Ljava/util/ArrayList;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0, v1}, vtable@31
    nop

    move-result-object v0

    check-cast v0, Lcom/android/common/appService/C;

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@12
    nop

    move-result-object v0

    .line 117
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    :goto_37
    sput v0, Lcom/android/common/setting/j;->TQ:I

    .line 179
    sput v3, Lcom/android/common/setting/j;->TU:F

    sput v3, Lcom/android/common/setting/j;->TV:F

    .line 181
    new-array v0, v2, [F

    fill-array-data v0, :array_6c

    sput-object v0, Lcom/android/common/setting/j;->TR:[F

    .line 185
    new-array v0, v2, [F

    fill-array-data v0, :array_92

    sput-object v0, Lcom/android/common/setting/j;->TT:[F

    .line 189
    invoke-static {}, Lcom/android/common/custom/D;->aeM()Lcom/android/common/custom/D;

    move-result-object v0

    #disallowed odex opcode
    #invoke-virtual-quick {v0}, vtable@11
    nop

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/custom/x;->adr()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 190
    new-array v0, v2, [F

    fill-array-data v0, :array_b8

    .line 189
    :goto_5e
    sput-object v0, Lcom/android/common/setting/j;->TS:[F

    .line 8
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    :cond_61
    move v0, v1

    .line 115
    goto :goto_1d

    .line 119
    :cond_63
    const/16 v0, 0x64

    goto :goto_37

    .line 191
    :cond_66
    new-array v0, v2, [F

    fill-array-data v0, :array_de

    goto :goto_5e

    .line 181
    :array_6c
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40333333    # 2.8f
        0x404ccccd    # 3.2f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x40900000    # 4.5f
        0x40b33333    # 5.6f
        0x40c9999a    # 6.3f
        0x40e33333    # 7.1f
        0x41000000    # 8.0f
        0x41300000    # 11.0f
        0x41500000    # 13.0f
        0x41800000    # 16.0f
    .end array-data

    .line 185
    :array_92
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40333333    # 2.8f
        0x404ccccd    # 3.2f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x4089999a    # 4.3f
        0x4099999a    # 4.8f
        0x40a66666    # 5.2f
        0x40b33333    # 5.6f
        0x40c00000    # 6.0f
        0x40f00000    # 7.5f
        0x41080000    # 8.5f
        0x41200000    # 10.0f
    .end array-data

    .line 190
    :array_b8
    .array-data 4
        0x42c80000    # 100.0f
        0x42bc0000    # 94.0f
        0x42b00000    # 88.0f
        0x42a40000    # 82.0f
        0x42980000    # 76.0f
        0x428c0000    # 70.0f
        0x42800000    # 64.0f
        0x42680000    # 58.0f
        0x42500000    # 52.0f
        0x42380000    # 46.0f
        0x42200000    # 40.0f
        0x42080000    # 34.0f
        0x41e00000    # 28.0f
        0x41b00000    # 22.0f
        0x41800000    # 16.0f
        0x40e00000    # 7.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 191
    :array_de
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
        0x3fb33333    # 1.4f
        0x40000000    # 2.0f
        0x4019999a    # 2.4f
        0x40333333    # 2.8f
        0x404ccccd    # 3.2f
        0x40600000    # 3.5f
        0x40800000    # 4.0f
        0x4089999a    # 4.3f
        0x4099999a    # 4.8f
        0x40a66666    # 5.2f
        0x40b33333    # 5.6f
        0x40c00000    # 6.0f
        0x40f00000    # 7.5f
        0x41080000    # 8.5f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static VH()F
    .registers 3

    .prologue
    .line 195
    sget v0, Lcom/android/common/setting/j;->TU:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    .line 196
    sget-object v0, Lcom/android/common/setting/j;->TS:[F

    sget-object v1, Lcom/android/common/setting/j;->TR:[F

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/common/setting/j;->VI([FF)I

    move-result v1

    aget v0, v0, v1

    sput v0, Lcom/android/common/setting/j;->TU:F

    .line 198
    :cond_16
    sget v0, Lcom/android/common/setting/j;->TU:F

    return v0
.end method

.method private static VI([FF)I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 209
    if-nez p0, :cond_5

    .line 210
    const/4 v0, -0x1

    return v0

    :cond_5
    move v0, v1

    .line 212
    :goto_6
    array-length v2, p0

    if-ge v0, v2, :cond_1b

    .line 213
    aget v2, p0, v0

    sub-float/2addr v2, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const v3, 0x3c23d70a    # 0.01f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_18

    .line 214
    return v0

    .line 212
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 217
    :cond_1b
    return v1
.end method

.method public static VJ()F
    .registers 3

    .prologue
    .line 202
    sget v0, Lcom/android/common/setting/j;->TV:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    .line 203
    sget-object v0, Lcom/android/common/setting/j;->TT:[F

    sget-object v1, Lcom/android/common/setting/j;->TR:[F

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/android/common/setting/j;->VI([FF)I

    move-result v1

    aget v0, v0, v1

    sput v0, Lcom/android/common/setting/j;->TV:F

    .line 205
    :cond_16
    sget v0, Lcom/android/common/setting/j;->TV:F

    return v0
.end method
