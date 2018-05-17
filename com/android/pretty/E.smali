.class final Lcom/android/pretty/E;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/k;


# instance fields
.field final synthetic aFl:Lcom/android/pretty/p;


# direct methods
.method constructor <init>(Lcom/android/pretty/p;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/pretty/E;->aFl:Lcom/android/pretty/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aSU(III)V
    .registers 5

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/pretty/E;->aFl:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTy(Lcom/android/pretty/p;)Lcom/android/pretty/k;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/android/pretty/E;->aFl:Lcom/android/pretty/p;

    invoke-static {v0}, Lcom/android/pretty/p;->aTy(Lcom/android/pretty/p;)Lcom/android/pretty/k;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/pretty/k;->aSU(III)V

    .line 85
    :cond_11
    return-void
.end method
