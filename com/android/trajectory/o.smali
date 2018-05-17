.class final Lcom/android/trajectory/o;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic atd:Lcom/android/trajectory/a;

.field final synthetic ate:[I


# direct methods
.method constructor <init>(Lcom/android/trajectory/a;[I)V
    .registers 3

    .prologue
    .line 810
    iput-object p1, p0, Lcom/android/trajectory/o;->atd:Lcom/android/trajectory/a;

    iput-object p2, p0, Lcom/android/trajectory/o;->ate:[I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 812
    iget-object v0, p0, Lcom/android/trajectory/o;->atd:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aEV(Lcom/android/trajectory/a;)I

    move-result v0

    iget-object v1, p0, Lcom/android/trajectory/o;->atd:Lcom/android/trajectory/a;

    invoke-static {v1}, Lcom/android/trajectory/a;->aEE(Lcom/android/trajectory/a;)I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 814
    iget-object v1, p0, Lcom/android/trajectory/o;->ate:[I

    invoke-static {v1, v0}, Lcom/android/camera/Trajectory/NubiaTrajectory;->Compose([ILandroid/graphics/Bitmap;)I

    move-result v1

    .line 815
    iget-object v2, p0, Lcom/android/trajectory/o;->atd:Lcom/android/trajectory/a;

    invoke-static {v2}, Lcom/android/trajectory/a;->aES(Lcom/android/trajectory/a;)Lcom/android/camera/Trajectory/NubiaTrajectory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/camera/Trajectory/NubiaTrajectory;->ayv(Z)V

    .line 816
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 817
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 818
    iput v1, v2, Landroid/os/Message;->arg1:I

    .line 819
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 820
    iget-object v0, p0, Lcom/android/trajectory/o;->atd:Lcom/android/trajectory/a;

    invoke-static {v0}, Lcom/android/trajectory/a;->aED(Lcom/android/trajectory/a;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 811
    return-void
.end method
