.class final Lcom/android/common/appService/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic nG:Lcom/android/common/appService/R;

.field final synthetic nH:Lcom/android/common/appService/S;

.field final synthetic nI:I

.field final synthetic nJ:I

.field final synthetic nK:I

.field final synthetic nL:I


# direct methods
.method constructor <init>(Lcom/android/common/appService/R;Lcom/android/common/appService/S;IIII)V
    .registers 7

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/common/appService/av;->nG:Lcom/android/common/appService/R;

    iput-object p2, p0, Lcom/android/common/appService/av;->nH:Lcom/android/common/appService/S;

    iput p3, p0, Lcom/android/common/appService/av;->nI:I

    iput p4, p0, Lcom/android/common/appService/av;->nJ:I

    iput p5, p0, Lcom/android/common/appService/av;->nK:I

    iput p6, p0, Lcom/android/common/appService/av;->nL:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/common/appService/av;->nG:Lcom/android/common/appService/R;

    invoke-static {v0}, Lcom/android/common/appService/R;->oG(Lcom/android/common/appService/R;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/common/appService/av;->nH:Lcom/android/common/appService/S;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 216
    iget-object v0, p0, Lcom/android/common/appService/av;->nH:Lcom/android/common/appService/S;

    iget v1, p0, Lcom/android/common/appService/av;->nI:I

    iget v2, p0, Lcom/android/common/appService/av;->nJ:I

    iget v3, p0, Lcom/android/common/appService/av;->nK:I

    iget v4, p0, Lcom/android/common/appService/av;->nL:I

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/common/appService/S;->bd(IIII)V

    .line 214
    :cond_1b
    return-void
.end method
