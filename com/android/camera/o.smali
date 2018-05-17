.class final Lcom/android/camera/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic apr:Lcom/android/camera/a;

.field final synthetic aps:I


# direct methods
.method constructor <init>(Lcom/android/camera/a;I)V
    .registers 3

    .prologue
    .line 488
    iput-object p1, p0, Lcom/android/camera/o;->apr:Lcom/android/camera/a;

    iput p2, p0, Lcom/android/camera/o;->aps:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/camera/o;->apr:Lcom/android/camera/a;

    invoke-static {v0}, Lcom/android/camera/a;->azZ(Lcom/android/camera/a;)Lcom/android/common/ui/CameraSelectButton;

    move-result-object v0

    iget v1, p0, Lcom/android/camera/o;->aps:I

    invoke-virtual {v0, v1}, Lcom/android/common/ui/CameraSelectButton;->setVisibility(I)V

    .line 490
    return-void
.end method
