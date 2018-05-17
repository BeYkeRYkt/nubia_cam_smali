.class final Lcom/android/pretty/H;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/pretty/m;


# instance fields
.field final synthetic aFo:Lcom/android/pretty/q;


# direct methods
.method constructor <init>(Lcom/android/pretty/q;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/android/pretty/H;->aFo:Lcom/android/pretty/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aTi(IIZ)V
    .registers 8

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/pretty/H;->aFo:Lcom/android/pretty/q;

    iget v0, v0, Lcom/android/pretty/q;->aEt:I

    if-ne v0, p2, :cond_10

    .line 55
    const-string/jumbo v0, "PrettyExpandableItem"

    const-string/jumbo v1, "onLevelChanged same level"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    return-void

    .line 58
    :cond_10
    iget-object v0, p0, Lcom/android/pretty/H;->aFo:Lcom/android/pretty/q;

    iput p2, v0, Lcom/android/pretty/q;->aEt:I

    .line 59
    iget-object v0, p0, Lcom/android/pretty/H;->aFo:Lcom/android/pretty/q;

    invoke-static {v0}, Lcom/android/pretty/q;->aTI(Lcom/android/pretty/q;)V

    .line 60
    iget-object v0, p0, Lcom/android/pretty/H;->aFo:Lcom/android/pretty/q;

    invoke-static {}, Lcom/android/pretty/q;->aTF()[I

    move-result-object v1

    aget v1, v1, p2

    invoke-static {}, Lcom/android/pretty/q;->aTG()[I

    move-result-object v2

    aget v2, v2, p2

    invoke-static {}, Lcom/android/pretty/q;->aTE()[I

    move-result-object v3

    aget v3, v3, p2

    invoke-static {v0, v1, v2, v3}, Lcom/android/pretty/q;->aTH(Lcom/android/pretty/q;III)V

    .line 53
    return-void
.end method

.method public aTj(IIZ)V
    .registers 4

    .prologue
    .line 49
    return-void
.end method

.method public aTk()V
    .registers 1

    .prologue
    .line 64
    return-void
.end method
