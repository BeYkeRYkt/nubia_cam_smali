.class final Lcom/android/electronicfno/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/af;


# instance fields
.field final synthetic aVY:Lcom/android/electronicfno/i;


# direct methods
.method constructor <init>(Lcom/android/electronicfno/i;)V
    .registers 2

    .prologue
    .line 823
    iput-object p1, p0, Lcom/android/electronicfno/q;->aVY:Lcom/android/electronicfno/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public EU()V
    .registers 3

    .prologue
    .line 826
    iget-object v0, p0, Lcom/android/electronicfno/q;->aVY:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnG(Lcom/android/electronicfno/i;)Lcom/android/common/ui/MultiFunctionImageView;

    move-result-object v0

    sget-object v1, Lcom/android/common/ui/MultiFunctionImageView$Function;->An:Lcom/android/common/ui/MultiFunctionImageView$Function;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/MultiFunctionImageView;->Ez(Lcom/android/common/ui/MultiFunctionImageView$Function;)V

    .line 827
    iget-object v0, p0, Lcom/android/electronicfno/q;->aVY:Lcom/android/electronicfno/i;

    invoke-static {v0}, Lcom/android/electronicfno/i;->bnJ(Lcom/android/electronicfno/i;)V

    .line 825
    return-void
.end method
