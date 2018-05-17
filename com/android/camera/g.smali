.class Lcom/android/camera/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/b/b;


# instance fields
.field final synthetic aoQ:Lcom/android/camera/Camera;


# direct methods
.method private constructor <init>(Lcom/android/camera/Camera;)V
    .registers 2

    .prologue
    .line 1216
    iput-object p1, p0, Lcom/android/camera/g;->aoQ:Lcom/android/camera/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/Camera;Lcom/android/camera/g;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/camera/g;-><init>(Lcom/android/camera/Camera;)V

    return-void
.end method


# virtual methods
.method public aBx()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 1219
    iget-object v0, p0, Lcom/android/camera/g;->aoQ:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBs(Lcom/android/camera/Camera;)V

    .line 1220
    iget-object v0, p0, Lcom/android/camera/g;->aoQ:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Camera;->aBh(Lcom/android/camera/Camera;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pQ()Lcom/android/common/appService/H;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/appService/H;->mM(Z)Z

    .line 1221
    iget-object v0, p0, Lcom/android/camera/g;->aoQ:Lcom/android/camera/Camera;

    invoke-virtual {v0, v1}, Lcom/android/camera/Camera;->ath(I)V

    .line 1222
    iget-object v0, p0, Lcom/android/camera/g;->aoQ:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->asE()V

    .line 1223
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hs()V

    .line 1218
    return-void
.end method
