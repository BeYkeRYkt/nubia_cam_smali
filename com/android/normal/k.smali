.class final Lcom/android/normal/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic bbk:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/normal/k;->bbk:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/normal/k;->bbk:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsj(Lcom/android/normal/b;)Lcom/android/common/camerastate/DeviceState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/DeviceState;->aeX:Lcom/android/common/camerastate/DeviceState;

    if-ne v0, v1, :cond_36

    .line 251
    iget-object v0, p0, Lcom/android/normal/k;->bbk:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsk(Lcom/android/normal/b;)Lcom/android/common/camerastate/FunctionState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afr:Lcom/android/common/camerastate/FunctionState;

    if-ne v0, v1, :cond_36

    .line 252
    iget-object v0, p0, Lcom/android/normal/k;->bbk:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsl(Lcom/android/normal/b;)Lcom/android/common/camerastate/UIState;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/UIState;->afk:Lcom/android/common/camerastate/UIState;

    if-ne v0, v1, :cond_36

    .line 253
    invoke-static {}, Lcom/android/common/c/e;->hp()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->hq()Z

    move-result v0

    .line 250
    if-eqz v0, :cond_36

    .line 254
    iget-object v0, p0, Lcom/android/normal/k;->bbk:Lcom/android/normal/b;

    invoke-static {v0}, Lcom/android/normal/b;->bsb(Lcom/android/normal/b;)Lcom/android/normal/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/normal/i;->bsA()V

    .line 255
    iget-object v0, p0, Lcom/android/normal/k;->bbk:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brw()V

    .line 249
    :cond_36
    return-void
.end method
