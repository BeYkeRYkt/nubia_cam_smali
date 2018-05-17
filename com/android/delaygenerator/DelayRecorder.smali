.class public Lcom/android/delaygenerator/DelayRecorder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DRSTATE_COMPLETE:I = 0x1

.field public static final DRSTATE_DELETEHALF:I = 0x2

.field public static final DRSTATE_IDLE:I = 0x4

.field public static final DRSTATE_START:I = 0x3


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mHandler:Lcom/android/delaygenerator/b;

.field private mListener:Lcom/android/delaygenerator/a;

.field private mNativeContext:J


# direct methods
.method static synthetic -get0(Lcom/android/delaygenerator/DelayRecorder;)Lcom/android/delaygenerator/a;
    .registers 2

    iget-object v0, p0, Lcom/android/delaygenerator/DelayRecorder;->mListener:Lcom/android/delaygenerator/a;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-string/jumbo v0, "nubia_delay_recorder"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/delaygenerator/a;)V
    .registers 4

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/android/delaygenerator/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/delaygenerator/b;-><init>(Lcom/android/delaygenerator/DelayRecorder;Lcom/android/delaygenerator/b;)V

    iput-object v0, p0, Lcom/android/delaygenerator/DelayRecorder;->mHandler:Lcom/android/delaygenerator/b;

    .line 34
    iput-object p1, p0, Lcom/android/delaygenerator/DelayRecorder;->mListener:Lcom/android/delaygenerator/a;

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/delaygenerator/DelayRecorder;->_init(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method private native _init(Ljava/lang/Object;)V
.end method

.method private native _input(Landroid/graphics/Bitmap;)V
.end method

.method private native _input([BII)V
.end method

.method private native _release()V
.end method

.method private native _setDegrees(I)V
.end method

.method private native _start(Ljava/lang/String;)V
.end method

.method private native _stop()V
.end method

.method public static postEventFromNative(Ljava/lang/Object;III)V
    .registers 7

    .prologue
    .line 74
    const-string/jumbo v0, "DelayRecorder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "postEventFromNative what="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/delaygenerator/DelayRecorder;

    .line 76
    if-eqz v0, :cond_34

    .line 77
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 78
    iput p1, v1, Landroid/os/Message;->what:I

    .line 79
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 80
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 81
    iget-object v0, v0, Lcom/android/delaygenerator/DelayRecorder;->mHandler:Lcom/android/delaygenerator/b;

    invoke-virtual {v0, v1}, Lcom/android/delaygenerator/b;->sendMessage(Landroid/os/Message;)Z

    .line 73
    :cond_34
    return-void
.end method


# virtual methods
.method public input(Landroid/graphics/Bitmap;)V
    .registers 2

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/delaygenerator/DelayRecorder;->_input(Landroid/graphics/Bitmap;)V

    .line 48
    return-void
.end method

.method public input([BII)V
    .registers 4

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/delaygenerator/DelayRecorder;->_input([BII)V

    .line 52
    return-void
.end method

.method public release()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/delaygenerator/DelayRecorder;->_release()V

    .line 60
    return-void
.end method

.method public setDegrees(I)V
    .registers 2

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/delaygenerator/DelayRecorder;->_setDegrees(I)V

    .line 39
    return-void
.end method

.method public start(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/delaygenerator/DelayRecorder;->mFileName:Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/delaygenerator/DelayRecorder;->_start(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public stop()V
    .registers 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/delaygenerator/DelayRecorder;->_stop()V

    .line 56
    return-void
.end method
