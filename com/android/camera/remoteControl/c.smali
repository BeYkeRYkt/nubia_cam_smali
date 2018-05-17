.class Lcom/android/camera/remoteControl/c;
.super Lcom/android/camera/remoteControl/b;
.source "SourceFile"


# instance fields
.field private amN:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/camera/remoteControl/b;-><init>(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method private ayr()V
    .registers 3

    .prologue
    .line 24
    const-string/jumbo v0, "UpdateCameraFamilyAction"

    const-string/jumbo v1, " updateCameraFamilyUserData "

    invoke-static {v0, v1}, Lcom/a/a;->bvt(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/android/camera/cameraFamily/e;->axu()Lcom/android/camera/cameraFamily/e;

    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/android/camera/remoteControl/c;->amN:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/camera/cameraFamily/e;->axx(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method ayp(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/camera/remoteControl/c;->amN:Landroid/content/Context;

    .line 20
    invoke-direct {p0}, Lcom/android/camera/remoteControl/c;->ayr()V

    .line 18
    return-void
.end method
