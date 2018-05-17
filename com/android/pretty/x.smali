.class final Lcom/android/pretty/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/Y;


# instance fields
.field final synthetic aFd:Lcom/android/pretty/f;


# direct methods
.method constructor <init>(Lcom/android/pretty/f;)V
    .registers 2

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/pretty/x;->aFd:Lcom/android/pretty/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Dl()V
    .registers 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/android/pretty/x;->aFd:Lcom/android/pretty/f;

    invoke-static {v0}, Lcom/android/pretty/f;->aSe(Lcom/android/pretty/f;)Lcom/android/pretty/j;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 199
    iget-object v0, p0, Lcom/android/pretty/x;->aFd:Lcom/android/pretty/f;

    invoke-static {v0}, Lcom/android/pretty/f;->aSe(Lcom/android/pretty/f;)Lcom/android/pretty/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/pretty/j;->aSE()V

    .line 201
    :cond_11
    iget-object v0, p0, Lcom/android/pretty/x;->aFd:Lcom/android/pretty/f;

    invoke-static {v0}, Lcom/android/pretty/f;->aSd(Lcom/android/pretty/f;)Lcom/android/common/appService/W;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/android/common/appService/W;->pU(I)V

    .line 197
    return-void
.end method
