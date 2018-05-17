.class final Lcom/android/normal/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/normal/a/d;


# instance fields
.field final synthetic bbp:Lcom/android/normal/b;


# direct methods
.method constructor <init>(Lcom/android/normal/b;)V
    .registers 2

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/normal/o;->bbp:Lcom/android/normal/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bqO()V
    .registers 3

    .prologue
    .line 518
    const-string/jumbo v0, "NormalFragment"

    const-string/jumbo v1, "onComplete"

    invoke-static {v0, v1}, Lcom/a/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 519
    iget-object v0, p0, Lcom/android/normal/o;->bbp:Lcom/android/normal/b;

    invoke-virtual {v0}, Lcom/android/normal/b;->brU()V

    .line 517
    return-void
.end method
