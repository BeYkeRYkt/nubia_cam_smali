.class public Lcom/android/common/appService/Y;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final mZ:[F

.field private static final na:[F


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/16 v1, 0x14

    .line 15
    new-array v0, v1, [F

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/common/appService/Y;->na:[F

    .line 22
    new-array v0, v1, [F

    fill-array-data v0, :array_3e

    sput-object v0, Lcom/android/common/appService/Y;->mZ:[F

    .line 9
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 15
    nop

    :array_12
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x3d380000    # -100.0f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x3d380000    # -100.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        -0x3d380000    # -100.0f
        0x0
        0x0
        0x0
        0x3f4ccccd    # 0.8f
        0x0
    .end array-data

    .line 22
    :array_3e
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tG(Landroid/view/View;)V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 11
    new-instance v0, Lcom/android/common/appService/Z;

    invoke-direct {v0, v1}, Lcom/android/common/appService/Z;-><init>(Lcom/android/common/appService/Z;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 12
    new-instance v0, Lcom/android/common/appService/aa;

    invoke-direct {v0, v1}, Lcom/android/common/appService/aa;-><init>(Lcom/android/common/appService/aa;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 10
    return-void
.end method

.method static synthetic tH()[F
    .registers 1

    sget-object v0, Lcom/android/common/appService/Y;->mZ:[F

    return-object v0
.end method

.method static synthetic tI()[F
    .registers 1

    sget-object v0, Lcom/android/common/appService/Y;->na:[F

    return-object v0
.end method
