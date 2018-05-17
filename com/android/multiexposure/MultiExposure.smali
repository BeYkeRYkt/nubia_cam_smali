.class public Lcom/android/multiexposure/MultiExposure;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aqz:Lcom/android/multiexposure/i;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-string/jumbo v0, "multi_exposure"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 3
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/multiexposure/MultiExposure;->aqz:Lcom/android/multiexposure/i;

    .line 3
    return-void
.end method


# virtual methods
.method public callFromNative(I)V
    .registers 3

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/multiexposure/MultiExposure;->aqz:Lcom/android/multiexposure/i;

    if-nez v0, :cond_5

    .line 27
    return-void

    .line 29
    :cond_5
    iget-object v0, p0, Lcom/android/multiexposure/MultiExposure;->aqz:Lcom/android/multiexposure/i;

    invoke-interface {v0, p1}, Lcom/android/multiexposure/i;->aCq(I)V

    .line 25
    return-void
.end method

.method public native getFinalData()[B
.end method

.method public native putData([BII)V
.end method

.method public native release()V
.end method

.method public native setParameter(I)V
.end method

.method public native setType(I)V
.end method
