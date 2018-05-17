.class public Lcom/fotonation/vfb/VfbEngineCtx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EYE_CIRCLES_REMOVAL_STRENGTH_BIT:I = 0x10

.field public static final EYE_ENLARGEMENT_STRENGTH_BIT:I = 0x8

.field public static final INIT_FLAG_BEAUTIFY_WHEN_NO_FACES:I = 0x10

.field public static final INIT_FLAG_LOW_POWER_MODE:I = 0x2

.field public static final INIT_FLAG_MIRROR_FRAME:I = 0x4

.field public static final INIT_FLAG_MODE_IMAGE_TO_TEXTURE:I = 0x20000

.field public static final INIT_FLAG_MODE_TEXTURE_TO_TEXTURE:I = 0x10000

.field public static final INIT_FLAG_STILL_MODE:I = 0x8

.field public static final INIT_FLAG_USE_ROLL_ANGLE:I = 0x1

.field public static final LIBRARY_TYPE_DEBUG:I = 0x2

.field public static final LIBRARY_TYPE_GET_GPU_BINARIES:I = 0x3

.field public static final LIBRARY_TYPE_RELEASE:I = 0x1

.field public static final ORIENTATION_MIRROR:I = 0x1

.field public static final ORIENTATION_NO_MIRROR:I = 0x0

.field public static final ORIENTATION_ROTATION_0_DEGREES:I = 0x2

.field public static final ORIENTATION_ROTATION_180_DEGREES:I = 0x4

.field public static final ORIENTATION_ROTATION_270_DEGREES:I = 0x5

.field public static final ORIENTATION_ROTATION_90_DEGREES:I = 0x3

.field public static final SLIMMING_STRENGTH_BIT:I = 0x4

.field public static final SMART_COLOR_STRENGTH_BIT:I = 0x40

.field public static final SMART_LIGHT_STRENGTH_BIT:I = 0x20

.field public static final SMOOTHING_STRENGTH_BIT:I = 0x1

.field public static final TONING_STRENGTH_BIT:I = 0x2


# instance fields
.field private mCtx:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string/jumbo v0, "FNVfbEngineLib"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 15
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static GetEmbeddedProgramsGpu()Ljava/lang/String;
    .registers 1

    .prologue
    .line 252
    invoke-static {}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvGetEmbeddedProgramsGpu()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetLibraryType()I
    .registers 1

    .prologue
    .line 280
    invoke-static {}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvGetLibraryType()I

    move-result v0

    return v0
.end method

.method public static GetVfbCpuVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 260
    invoke-static {}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvGetVfbCpuVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetVfbEngineVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 276
    invoke-static {}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvGetVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static GetVfbGpuVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 268
    invoke-static {}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvGetVfbGpuVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final native NtvCreate(IIIII)I
.end method

.method private final native NtvDestroy()V
.end method

.method private final native NtvDetectFaces(JIIII)I
.end method

.method private final native NtvDetectFacesInTexture(JIIII)I
.end method

.method private static final native NtvGetEmbeddedProgramsGpu()Ljava/lang/String;
.end method

.method private final native NtvGetFaceCount(J)I
.end method

.method private final native NtvGetFaces(JLcom/fotonation/vfb/VfbFaceArray;)I
.end method

.method private static final native NtvGetLibraryType()I
.end method

.method private static final native NtvGetVersion()Ljava/lang/String;
.end method

.method private static final native NtvGetVfbCpuVersion()Ljava/lang/String;
.end method

.method private static final native NtvGetVfbGpuVersion()Ljava/lang/String;
.end method

.method private final native NtvProcess(JIIIILcom/fotonation/vfb/VfbFaceArray;[FI)I
.end method

.method private final native NtvProcessTexture(JIIIILcom/fotonation/vfb/VfbFaceArray;[FI)I
.end method

.method private final native NtvSetConfiguration(JLcom/fotonation/vfb/VfbConfig;)V
.end method

.method private final native NtvSetPreviewSize(JII)I
.end method

.method private final native NtvSetShowFaceRectangles(JZZ)V
.end method

.method private final native NtvSetViewSize(JII)I
.end method


# virtual methods
.method public create(Lcom/fotonation/utils/Size;Lcom/fotonation/utils/Size;I)Z
    .registers 11

    .prologue
    const/4 v6, 0x0

    .line 144
    iget v1, p1, Lcom/fotonation/utils/Size;->Width:I

    iget v2, p1, Lcom/fotonation/utils/Size;->Height:I

    .line 145
    iget v3, p2, Lcom/fotonation/utils/Size;->Width:I

    iget v4, p2, Lcom/fotonation/utils/Size;->Height:I

    move-object v0, p0

    move v5, p3

    .line 143
    invoke-direct/range {v0 .. v5}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvCreate(IIIII)I

    move-result v0

    .line 147
    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_12
    return v0

    :cond_13
    move v0, v6

    goto :goto_12
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvDestroy()V

    .line 158
    return-void
.end method

.method public detectFacesInTexture(IIII)Z
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 165
    iget-wide v2, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvDetectFaces(JIIII)I

    move-result v1

    .line 166
    if-nez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public getFaces(Lcom/fotonation/vfb/VfbFaceArray;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 244
    iget-wide v2, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    invoke-direct {p0, v2, v3, p1}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvGetFaces(JLcom/fotonation/vfb/VfbFaceArray;)I

    move-result v1

    .line 245
    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method

.method public getFacesCnt()I
    .registers 3

    .prologue
    .line 240
    iget-wide v0, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    invoke-direct {p0, v0, v1}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvGetFaceCount(J)I

    move-result v0

    return v0
.end method

.method public processTexture(IIIILcom/fotonation/vfb/VfbFaceArray;[FI)Z
    .registers 19

    .prologue
    .line 198
    iget-wide v2, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v1 .. v10}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvProcess(JIIIILcom/fotonation/vfb/VfbFaceArray;[FI)I

    move-result v0

    .line 199
    if-nez v0, :cond_15

    const/4 v0, 0x1

    :goto_14
    return v0

    :cond_15
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public setConfiguration(Lcom/fotonation/vfb/VfbConfig;)V
    .registers 4

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    invoke-direct {p0, v0, v1, p1}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvSetConfiguration(JLcom/fotonation/vfb/VfbConfig;)V

    .line 151
    return-void
.end method

.method public setPreviewSize(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 227
    iget-wide v2, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvSetPreviewSize(JII)I

    move-result v1

    .line 229
    if-eqz v1, :cond_c

    .line 230
    invoke-direct {p0}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvDestroy()V

    .line 232
    :cond_c
    if-nez v1, :cond_f

    const/4 v0, 0x1

    :cond_f
    return v0
.end method

.method public setShowFaceRectangles(ZZ)V
    .registers 5

    .prologue
    .line 208
    iget-wide v0, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvSetShowFaceRectangles(JZZ)V

    .line 207
    return-void
.end method

.method public setViewSize(II)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 217
    iget-wide v2, p0, Lcom/fotonation/vfb/VfbEngineCtx;->mCtx:J

    invoke-direct {p0, v2, v3, p1, p2}, Lcom/fotonation/vfb/VfbEngineCtx;->NtvSetViewSize(JII)I

    move-result v1

    .line 218
    if-nez v1, :cond_a

    const/4 v0, 0x1

    :cond_a
    return v0
.end method
