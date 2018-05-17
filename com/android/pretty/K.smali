.class final Lcom/android/pretty/K;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/k;


# instance fields
.field final synthetic aFx:Lcom/android/pretty/u;


# direct methods
.method constructor <init>(Lcom/android/pretty/u;)V
    .registers 2

    .prologue
    .line 344
    iput-object p1, p0, Lcom/android/pretty/K;->aFx:Lcom/android/pretty/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aSU(III)V
    .registers 5

    .prologue
    .line 347
    iget-object v0, p0, Lcom/android/pretty/K;->aFx:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUh(Lcom/android/pretty/u;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 348
    iget-object v0, p0, Lcom/android/pretty/K;->aFx:Lcom/android/pretty/u;

    invoke-static {v0}, Lcom/android/pretty/u;->aUk(Lcom/android/pretty/u;)Lcom/android/pretty/k;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/pretty/k;->aSU(III)V

    .line 346
    :cond_11
    return-void
.end method
