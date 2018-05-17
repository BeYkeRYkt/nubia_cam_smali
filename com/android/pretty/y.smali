.class final Lcom/android/pretty/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/k;


# instance fields
.field final synthetic aFe:Lcom/android/pretty/j;


# direct methods
.method constructor <init>(Lcom/android/pretty/j;)V
    .registers 2

    .prologue
    .line 131
    iput-object p1, p0, Lcom/android/pretty/y;->aFe:Lcom/android/pretty/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aSU(III)V
    .registers 5

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/pretty/y;->aFe:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSP(Lcom/android/pretty/j;)Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/android/pretty/y;->aFe:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSO(Lcom/android/pretty/j;)Lcom/android/common/g/c;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 135
    iget-object v0, p0, Lcom/android/pretty/y;->aFe:Lcom/android/pretty/j;

    invoke-static {v0}, Lcom/android/pretty/j;->aSO(Lcom/android/pretty/j;)Lcom/android/common/g/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/common/g/c;->aaK(III)V

    .line 133
    :cond_19
    return-void
.end method
