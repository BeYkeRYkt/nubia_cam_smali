.class final Lcom/android/startrack/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/appService/L;


# instance fields
.field final synthetic aRE:Lcom/android/startrack/j;


# direct methods
.method constructor <init>(Lcom/android/startrack/j;)V
    .registers 2

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/startrack/m;->aRE:Lcom/android/startrack/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nV()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 541
    iget-object v0, p0, Lcom/android/startrack/m;->aRE:Lcom/android/startrack/j;

    iget-object v0, v0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    sget-object v1, Lcom/android/common/appService/StarFuncState;->kN:Lcom/android/common/appService/StarFuncState;

    invoke-static {v0, v1}, Lcom/android/startrack/h;->bio(Lcom/android/startrack/h;Lcom/android/common/appService/StarFuncState;)Lcom/android/common/appService/StarFuncState;

    .line 542
    iget-object v0, p0, Lcom/android/startrack/m;->aRE:Lcom/android/startrack/j;

    iget-object v0, v0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bim(Lcom/android/startrack/h;)Lcom/android/startrack/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/startrack/a;->bhp(Z)V

    .line 544
    iget-object v0, p0, Lcom/android/startrack/m;->aRE:Lcom/android/startrack/j;

    iget-object v0, v0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-virtual {v0}, Lcom/android/startrack/h;->aly()V

    .line 545
    iget-object v0, p0, Lcom/android/startrack/m;->aRE:Lcom/android/startrack/j;

    iget-object v0, v0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bir(Lcom/android/startrack/h;)V

    .line 546
    iget-object v0, p0, Lcom/android/startrack/m;->aRE:Lcom/android/startrack/j;

    iget-object v0, v0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->bik(Lcom/android/startrack/h;)Lcom/android/common/appService/W;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/common/appService/W;->lr:Z

    .line 547
    iget-object v0, p0, Lcom/android/startrack/m;->aRE:Lcom/android/startrack/j;

    iget-object v0, v0, Lcom/android/startrack/j;->aRC:Lcom/android/startrack/h;

    invoke-static {v0}, Lcom/android/startrack/h;->biw(Lcom/android/startrack/h;)V

    .line 540
    return-void
.end method
