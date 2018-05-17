.class final Lcom/android/pretty/N;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/n;


# instance fields
.field final synthetic aFA:Lcom/android/pretty/u;


# direct methods
.method constructor <init>(Lcom/android/pretty/u;)V
    .registers 2

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/pretty/N;->aFA:Lcom/android/pretty/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aTl()Ljava/lang/String;
    .registers 3

    .prologue
    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/pretty/N;->aFA:Lcom/android/pretty/u;

    invoke-static {v1}, Lcom/android/pretty/u;->aUb(Lcom/android/pretty/u;)Lcom/android/pretty/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/pretty/v;->aUs()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aTm()Ljava/lang/String;
    .registers 3

    .prologue
    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/pretty/N;->aFA:Lcom/android/pretty/u;

    invoke-static {v1}, Lcom/android/pretty/u;->aUb(Lcom/android/pretty/u;)Lcom/android/pretty/v;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/pretty/v;->aUt()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public aTn(I)Ljava/lang/String;
    .registers 4

    .prologue
    .line 421
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/pretty/N;->aFA:Lcom/android/pretty/u;

    invoke-static {v1}, Lcom/android/pretty/u;->aUb(Lcom/android/pretty/u;)Lcom/android/pretty/v;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/pretty/v;->aUq(I)F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
