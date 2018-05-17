.class final Lcom/android/funeffect/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/u;


# instance fields
.field final synthetic aTZ:Lcom/android/funeffect/a;


# direct methods
.method constructor <init>(Lcom/android/funeffect/a;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/funeffect/g;->aTZ:Lcom/android/funeffect/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lE()V
    .registers 1

    .prologue
    .line 98
    return-void
.end method

.method public lF()V
    .registers 7

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/funeffect/g;->aTZ:Lcom/android/funeffect/a;

    invoke-static {v0}, Lcom/android/funeffect/a;->ble(Lcom/android/funeffect/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 94
    :cond_9
    iget-object v0, p0, Lcom/android/funeffect/g;->aTZ:Lcom/android/funeffect/a;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/funeffect/a;->blg(Lcom/android/funeffect/a;ZJJ)V

    .line 92
    return-void
.end method

.method public lG()V
    .registers 7

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/funeffect/g;->aTZ:Lcom/android/funeffect/a;

    invoke-static {v0}, Lcom/android/funeffect/a;->ble(Lcom/android/funeffect/a;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 83
    :cond_9
    iget-object v0, p0, Lcom/android/funeffect/g;->aTZ:Lcom/android/funeffect/a;

    const-wide/16 v2, 0x64

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/funeffect/a;->blf(Lcom/android/funeffect/a;ZJJ)V

    .line 81
    return-void
.end method
