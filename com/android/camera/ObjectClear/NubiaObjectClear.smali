.class public Lcom/android/camera/ObjectClear/NubiaObjectClear;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ank:Lcom/android/common/appService/W;

.field private anl:Lcom/android/camera/ObjectClear/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    const-string/jumbo v0, "ImageAlogrithm"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 13
    #disallowed odex opcode
    #return-void-no-barrier
    nop
.end method

.method public constructor <init>(Lcom/android/common/appService/W;Lcom/android/camera/ObjectClear/a;)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->ank:Lcom/android/common/appService/W;

    .line 17
    iput-object v0, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->anl:Lcom/android/camera/ObjectClear/a;

    .line 22
    iput-object p1, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->ank:Lcom/android/common/appService/W;

    .line 23
    iput-object p2, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->anl:Lcom/android/camera/ObjectClear/a;

    .line 21
    return-void
.end method

.method public static native Cancel()V
.end method

.method public static native Detect(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)I
.end method

.method public static native SavePicture([BIIII)I
.end method

.method public static native SelectLabel(IILandroid/graphics/Bitmap;)V
.end method


# virtual methods
.method public ayU()V
    .registers 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->anl:Lcom/android/camera/ObjectClear/a;

    invoke-interface {v0}, Lcom/android/camera/ObjectClear/a;->ayZ()V

    .line 65
    return-void
.end method

.method public ayV()V
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->anl:Lcom/android/camera/ObjectClear/a;

    invoke-interface {v0}, Lcom/android/camera/ObjectClear/a;->azc()V

    .line 37
    return-void
.end method

.method public ayW(Landroid/view/MotionEvent;II)V
    .registers 5

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->anl:Lcom/android/camera/ObjectClear/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/camera/ObjectClear/a;->aza(Landroid/view/MotionEvent;II)V

    .line 61
    return-void
.end method

.method public ayX(Landroid/hardware/Camera$Size;)V
    .registers 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->anl:Lcom/android/camera/ObjectClear/a;

    invoke-interface {v0, p1}, Lcom/android/camera/ObjectClear/a;->azb(Landroid/hardware/Camera$Size;)V

    .line 41
    return-void
.end method

.method public ayY(I)V
    .registers 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/camera/ObjectClear/NubiaObjectClear;->anl:Lcom/android/camera/ObjectClear/a;

    invoke-interface {v0, p1}, Lcom/android/camera/ObjectClear/a;->azd(I)V

    .line 57
    return-void
.end method
