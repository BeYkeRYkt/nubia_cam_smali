.class public Lcom/android/clone/CloneJni;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 9
    const-string/jumbo v0, "nubia_clone"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 5
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native CloneCameraAutoCompose(Landroid/graphics/Bitmap;)I
.end method

.method private static native CloneCameraCleanData()I
.end method

.method private static native CloneCameraComposeConfirmByte()[B
.end method

.method private static native CloneCameraEditGetMaskPicture(ILandroid/graphics/Bitmap;)I
.end method

.method private static native CloneCameraEditGetPicture(ILandroid/graphics/Bitmap;)I
.end method

.method private static native CloneCameraEditPreview(Landroid/graphics/Bitmap;)I
.end method

.method private static native CloneCameraErase(ILandroid/graphics/Bitmap;)I
.end method

.method private static native CloneCameraPaintContour(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method

.method private static native CloneCameraSaveRGBAData(IIIII[BILandroid/graphics/Bitmap;)I
.end method

.method public static bkp()I
    .registers 1

    .prologue
    .line 139
    invoke-static {}, Lcom/android/clone/CloneJni;->CloneCameraCleanData()I

    move-result v0

    .line 140
    return v0
.end method

.method public static bkq()[B
    .registers 1

    .prologue
    .line 126
    invoke-static {}, Lcom/android/clone/CloneJni;->CloneCameraComposeConfirmByte()[B

    move-result-object v0

    .line 127
    return-object v0
.end method

.method public static bkr(Landroid/graphics/Bitmap;)I
    .registers 2

    .prologue
    .line 49
    invoke-static {p0}, Lcom/android/clone/CloneJni;->CloneCameraAutoCompose(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 50
    return v0
.end method

.method public static bks(ILandroid/graphics/Bitmap;)I
    .registers 3

    .prologue
    .line 64
    invoke-static {p0, p1}, Lcom/android/clone/CloneJni;->CloneCameraEditGetPicture(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 65
    return v0
.end method

.method public static bkt(ILandroid/graphics/Bitmap;)I
    .registers 3

    .prologue
    .line 79
    invoke-static {p0, p1}, Lcom/android/clone/CloneJni;->CloneCameraEditGetMaskPicture(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 80
    return v0
.end method

.method public static bku(ILandroid/graphics/Bitmap;)I
    .registers 3

    .prologue
    .line 154
    invoke-static {p0, p1}, Lcom/android/clone/CloneJni;->CloneCameraErase(ILandroid/graphics/Bitmap;)I

    move-result v0

    .line 155
    return v0
.end method

.method public static bkv(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
    .registers 4

    .prologue
    .line 98
    invoke-static {p0, p1, p2}, Lcom/android/clone/CloneJni;->CloneCameraPaintContour(ILandroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 99
    return v0
.end method

.method public static bkw(Landroid/graphics/Bitmap;)I
    .registers 2

    .prologue
    .line 112
    invoke-static {p0}, Lcom/android/clone/CloneJni;->CloneCameraEditPreview(Landroid/graphics/Bitmap;)I

    move-result v0

    .line 113
    return v0
.end method

.method public static bkx(IIIII[BILandroid/graphics/Bitmap;)I
    .registers 9

    .prologue
    .line 34
    invoke-static/range {p0 .. p7}, Lcom/android/clone/CloneJni;->CloneCameraSaveRGBAData(IIIII[BILandroid/graphics/Bitmap;)I

    move-result v0

    .line 36
    return v0
.end method
