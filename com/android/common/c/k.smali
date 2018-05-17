.class public Lcom/android/common/c/k;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private gP:Lcom/android/common/h/n;


# direct methods
.method public constructor <init>(Lcom/android/common/h/n;)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/k;->gP:Lcom/android/common/h/n;

    .line 9
    iput-object p1, p0, Lcom/android/common/c/k;->gP:Lcom/android/common/h/n;

    .line 8
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/common/c/k;->gP:Lcom/android/common/h/n;

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/android/common/c/k;->gP:Lcom/android/common/h/n;

    invoke-virtual {v0}, Lcom/android/common/h/n;->aco()V

    .line 18
    :cond_9
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 14
    const/16 v0, 0x64

    return v0
.end method
