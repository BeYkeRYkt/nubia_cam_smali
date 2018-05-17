.class final Lcom/android/common/ui/aA;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/A;


# instance fields
.field final synthetic DA:Lcom/android/common/ui/y;


# direct methods
.method constructor <init>(Lcom/android/common/ui/y;)V
    .registers 2

    .prologue
    .line 87
    iput-object p1, p0, Lcom/android/common/ui/aA;->DA:Lcom/android/common/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GJ(F)V
    .registers 4

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/common/ui/aA;->DA:Lcom/android/common/ui/y;

    iget-object v1, p0, Lcom/android/common/ui/aA;->DA:Lcom/android/common/ui/y;

    invoke-static {v1}, Lcom/android/common/ui/y;->xJ(Lcom/android/common/ui/y;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/common/ui/y;->xG(FZ)V

    .line 89
    return-void
.end method
