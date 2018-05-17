.class final Lcom/android/pretty/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/u;


# instance fields
.field final synthetic aFf:Lcom/android/pretty/j;


# direct methods
.method constructor <init>(Lcom/android/pretty/j;)V
    .registers 2

    .prologue
    .line 154
    iput-object p1, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public lE()V
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSP(Lcom/android/pretty/j;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 178
    :cond_9
    iget-object v0, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSR(Lcom/android/pretty/j;)Lcom/android/pretty/t;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/pretty/t;->setVisibility(I)V

    .line 176
    return-void
.end method

.method public lF()V
    .registers 7

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSP(Lcom/android/pretty/j;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 172
    :cond_9
    iget-object v0, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0xc8

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/pretty/j;->aST(Lcom/android/pretty/j;ZJJ)V

    .line 170
    return-void
.end method

.method public lG()V
    .registers 7

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSP(Lcom/android/pretty/j;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 159
    :cond_9
    iget-object v0, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    const-wide/16 v2, 0x64

    const-wide/16 v4, -0x1

    const/4 v1, 0x1

    invoke-static/range {v0 .. v5}, Lcom/android/pretty/j;->aSS(Lcom/android/pretty/j;ZJJ)V

    .line 160
    iget-object v0, p0, Lcom/android/pretty/z;->aFf:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSR(Lcom/android/pretty/j;)Lcom/android/pretty/t;

    move-result-object v0

    const/16 v1, 0x8

    invoke-interface {v0, v1}, Lcom/android/pretty/t;->setVisibility(I)V

    .line 157
    return-void
.end method
