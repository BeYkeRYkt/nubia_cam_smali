.class Lcom/android/camera/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/m;


# instance fields
.field final synthetic aoP:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2

    .prologue
    .line 1073
    iput-object p1, p0, Lcom/android/camera/f;->aoP:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/f;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public ka(I)V
    .registers 3

    .prologue
    .line 1075
    iget-object v0, p0, Lcom/android/camera/f;->aoP:Lcom/android/camera/Camera;

    invoke-static {v0, p1}, Lcom/android/camera/Camera;->aBq(Lcom/android/camera/Camera;I)V

    .line 1074
    return-void
.end method
