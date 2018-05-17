.class final Lcom/android/dng/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/a/j;


# instance fields
.field final synthetic aBq:Lcom/android/dng/z;

.field final synthetic aBr:Lcom/android/common/a/g;


# direct methods
.method constructor <init>(Lcom/android/dng/z;Lcom/android/common/a/g;)V
    .registers 3

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/dng/A;->aBq:Lcom/android/dng/z;

    iput-object p2, p0, Lcom/android/dng/A;->aBr:Lcom/android/common/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aU()V
    .registers 5

    .prologue
    const-wide/16 v2, 0x1f4

    .line 252
    const-string/jumbo v0, "DngFragment"

    const-string/jumbo v1, "Switch Camera Member, firstFrameAvailable"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/android/dng/A;->aBr:Lcom/android/common/a/g;

    invoke-virtual {v0}, Lcom/android/common/a/g;->aj()V

    .line 255
    iget-object v0, p0, Lcom/android/dng/A;->aBq:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-virtual {v0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0, v2, v3}, Lcom/android/common/ActivityBase;->att(J)V

    .line 256
    iget-object v0, p0, Lcom/android/dng/A;->aBq:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPS(Lcom/android/dng/j;)Lcom/android/common/camerastate/a;

    move-result-object v0

    sget-object v1, Lcom/android/common/camerastate/FunctionState;->afw:Lcom/android/common/camerastate/FunctionState;

    invoke-virtual {v0, v1}, Lcom/android/common/camerastate/a;->amL(Lcom/android/common/camerastate/FunctionState;)V

    .line 258
    iget-object v0, p0, Lcom/android/dng/A;->aBq:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-virtual {v0}, Lcom/android/dng/j;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/common/ActivityBase;

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/common/appService/b;->hQ()V

    .line 259
    iget-object v0, p0, Lcom/android/dng/A;->aBq:Lcom/android/dng/z;

    iget-object v0, v0, Lcom/android/dng/z;->aBp:Lcom/android/dng/j;

    invoke-static {v0}, Lcom/android/dng/j;->aPR(Lcom/android/dng/j;)Lcom/android/common/appService/W;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->qE(Z)V

    .line 251
    return-void
.end method
