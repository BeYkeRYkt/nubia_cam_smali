.class final Lcom/android/normal/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/normal/a/e;


# instance fields
.field final synthetic bbq:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 522
    iput-object p1, p0, Lcom/android/normal/p;->bbq:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bqP()V
    .registers 3

    .prologue
    .line 526
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "onLPCancel"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/android/normal/p;->bbq:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brU()V

    .line 525
    return-void
.end method
