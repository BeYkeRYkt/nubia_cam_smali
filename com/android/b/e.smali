.class final Lcom/android/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/independentFocusExposure/n;


# instance fields
.field final synthetic aBB:Lcom/android/b/a;


# direct methods
.method constructor <init>(Lcom/android/b/a;)V
    .registers 2

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/b/e;->aBB:Lcom/android/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fI()V
    .registers 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/b/e;->aBB:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQw(Lcom/android/b/a;)Lcom/android/common/ui/BigApertureSettingUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/BigApertureSettingUI;->AK(Z)V

    .line 56
    iget-object v0, p0, Lcom/android/b/e;->aBB:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->ph()Lcom/android/common/ActivityBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/ActivityBase;->asj()Lcom/android/common/appService/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/common/appService/b;->hM(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/b/e;->aBB:Lcom/android/b/a;

    invoke-static {v0}, Lcom/android/b/a;->aQv(Lcom/android/b/a;)Lcom/android/common/appService/W;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/appService/W;->pr()Lcom/android/common/independentFocusExposure/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/independentFocusExposure/i;->dY()V

    .line 54
    return-void
.end method
