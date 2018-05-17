.class final Lcom/android/common/ui/aB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/A;


# instance fields
.field final synthetic DB:Lcom/android/common/ui/y;


# direct methods
.method constructor <init>(Lcom/android/common/ui/y;)V
    .registers 2

    .prologue
    .line 95
    iput-object p1, p0, Lcom/android/common/ui/aB;->DB:Lcom/android/common/ui/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GJ(F)V
    .registers 3

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/common/ui/aB;->DB:Lcom/android/common/ui/y;

    invoke-static {v0}, Lcom/android/common/ui/y;->xK(Lcom/android/common/ui/y;)Lcom/android/common/B;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/B;->asb(F)V

    .line 97
    return-void
.end method
