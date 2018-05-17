.class public Lcom/ucamera/ucam/jni/BurstProcessJni;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static TAG:Ljava/lang/String;

.field public static mCallBackJNI:Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 8
    const-string/jumbo v0, "BurstProcessJni"

    sput-object v0, Lcom/ucamera/ucam/jni/BurstProcessJni;->TAG:Ljava/lang/String;

    .line 32
    :try_start_5
    const-string/jumbo v0, "BurstProcessJni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_5 .. :try_end_b} :catch_c

    .line 7
    :goto_b
    #disallowed odex opcode
    #return-void-no-barrier
    nop

    .line 33
    :catch_c
    move-exception v0

    .line 34
    sget-object v0, Lcom/ucamera/ucam/jni/BurstProcessJni;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "BurstProcessJni library not found!"

    invoke-static {v0, v1}, Lcom/a/a;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static CMMCallback(IILjava/lang/String;)V
    .registers 4

    .prologue
    .line 21
    sget-object v0, Lcom/ucamera/ucam/jni/BurstProcessJni;->mCallBackJNI:Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;

    if-eqz v0, :cond_9

    .line 22
    sget-object v0, Lcom/ucamera/ucam/jni/BurstProcessJni;->mCallBackJNI:Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;

    invoke-interface {v0, p0, p1, p2}, Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;->updateJniStatus(IILjava/lang/String;)V

    .line 20
    :cond_9
    return-void
.end method

.method public static native addToCMM([BLjava/lang/String;I)I
.end method

.method public static native initCMM(Ljava/lang/String;Ljava/lang/String;IIIIIZZI)V
.end method

.method public static setBurstListener(Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;)V
    .registers 1

    .prologue
    .line 18
    sput-object p0, Lcom/ucamera/ucam/jni/BurstProcessJni;->mCallBackJNI:Lcom/ucamera/ucam/jni/BurstProcessJni$CallBackJNI;

    .line 17
    return-void
.end method

.method public static native stopCMM()V
.end method
