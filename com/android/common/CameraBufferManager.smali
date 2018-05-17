.class public Lcom/android/common/CameraBufferManager;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 7
    const-string/jumbo v0, "buffer_manager"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 4
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public native getBrightnessJpegData(II)[B
.end method

.method public native getData(I)[B
.end method

.method public native getNumStored()I
.end method

.method public native getRemainImages()I
.end method

.method public native getSlowShuttleBitmap(ILandroid/graphics/Bitmap;)V
.end method

.method public native getSlowShuttleData(III)[B
.end method

.method public native getSlowShuttlePreviewData(I)[I
.end method

.method public native initDataBuffer(JI)Z
.end method

.method public native initSlowShuttleBuffer(IIII)Z
.end method

.method public native putBrightnessJpegData(I[B)V
.end method

.method public native putData(I[B)Z
.end method

.method public native putSlowShuttleData(I[B)Z
.end method

.method public native releaseBrightnessBuffer()V
.end method

.method public native releaseBuffer()V
.end method

.method public native releaseSlowShuttleBuffer()V
.end method

.method public native setLumaThreshold(I)V
.end method

.method public native setOperatorMode(I)V
.end method

.method public native setSlowShuttleISO(II)V
.end method

.method public native setStopWorkFlag(Z)V
.end method
