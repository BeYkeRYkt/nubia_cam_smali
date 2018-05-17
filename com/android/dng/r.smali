.class final Lcom/android/dng/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/Q;


# instance fields
.field final synthetic aBg:Lcom/android/dng/c;


# direct methods
.method constructor <init>(Lcom/android/dng/c;)V
    .registers 2

    .prologue
    .line 74
    iput-object p1, p0, Lcom/android/dng/r;->aBg:Lcom/android/dng/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public BI(Ljava/lang/String;IZI)V
    .registers 9

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/dng/r;->aBg:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPk(Lcom/android/dng/c;)Lcom/android/dng/e;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 92
    iget-object v0, p0, Lcom/android/dng/r;->aBg:Lcom/android/dng/c;

    invoke-static {v0}, Lcom/android/dng/c;->aPk(Lcom/android/dng/c;)Lcom/android/dng/e;

    move-result-object v0

    const-string/jumbo v1, "pref_camera_interval_pro"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/dng/e;->aPu(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :cond_28
    return-void
.end method

.method public BJ()V
    .registers 1

    .prologue
    .line 83
    return-void
.end method

.method public BK()V
    .registers 1

    .prologue
    .line 77
    return-void
.end method
