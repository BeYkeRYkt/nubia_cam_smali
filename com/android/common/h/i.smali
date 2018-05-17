.class public Lcom/android/common/h/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/ui/u;


# instance fields
.field private Yl:Lcom/android/common/appService/W;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/W;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/h/i;->Yl:Lcom/android/common/appService/W;

    .line 11
    iput-object p1, p0, Lcom/android/common/h/i;->Yl:Lcom/android/common/appService/W;

    .line 10
    return-void
.end method


# virtual methods
.method public xf()V
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/common/h/i;->Yl:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->px()V

    .line 21
    return-void
.end method

.method public xg(Z)V
    .registers 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/common/h/i;->Yl:Lcom/android/common/appService/W;

    invoke-virtual {v0, p1}, Lcom/android/common/appService/W;->pL(Z)V

    .line 16
    return-void
.end method

.method public xh()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/common/h/i;->Yl:Lcom/android/common/appService/W;

    invoke-virtual {v0}, Lcom/android/common/appService/W;->rB()V

    .line 27
    return-void
.end method
