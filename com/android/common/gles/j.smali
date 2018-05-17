.class public Lcom/android/common/gles/j;
.super Lcom/android/common/gles/c;
.source "SourceFile"


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Lcom/android/common/gles/c;-><init>(I)V

    .line 12
    invoke-virtual {p0, p1, p2}, Lcom/android/common/gles/j;->RP(II)V

    .line 13
    iput v0, p0, Lcom/android/common/gles/j;->mState:I

    .line 10
    return-void
.end method


# virtual methods
.method public RG()I
    .registers 2

    .prologue
    .line 34
    const/16 v0, 0xde1

    return v0
.end method

.method public RH()Z
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public SK(Lcom/android/common/gles/e;)V
    .registers 4

    .prologue
    .line 17
    invoke-virtual {p1}, Lcom/android/common/gles/e;->Sr()Lcom/android/common/gles/d;

    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/android/common/gles/d;->RX()I

    move-result v0

    iput v0, p0, Lcom/android/common/gles/j;->Sf:I

    .line 19
    const/16 v0, 0x1908

    const/16 v1, 0x1401

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/common/gles/e;->Ss(Lcom/android/common/gles/c;II)V

    .line 20
    invoke-virtual {p1, p0}, Lcom/android/common/gles/e;->RZ(Lcom/android/common/gles/c;)V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/common/gles/j;->mState:I

    .line 22
    invoke-virtual {p0, p1}, Lcom/android/common/gles/j;->RR(Lcom/android/common/gles/e;)V

    .line 16
    return-void
.end method

.method public SL(II)V
    .registers 6

    .prologue
    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/android/common/gles/j;->RP(II)V

    .line 27
    iget v0, p0, Lcom/android/common/gles/j;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 28
    iget-object v0, p0, Lcom/android/common/gles/j;->Sg:Lcom/android/common/gles/e;

    const/16 v1, 0x1908

    const/16 v2, 0x1401

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/common/gles/e;->Ss(Lcom/android/common/gles/c;II)V

    .line 29
    iget-object v0, p0, Lcom/android/common/gles/j;->Sg:Lcom/android/common/gles/e;

    invoke-virtual {v0, p0}, Lcom/android/common/gles/e;->RZ(Lcom/android/common/gles/c;)V

    .line 25
    :cond_16
    return-void
.end method

.method public SM()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 46
    iget-object v0, p0, Lcom/android/common/gles/j;->Sg:Lcom/android/common/gles/e;

    invoke-virtual {v0}, Lcom/android/common/gles/e;->Sr()Lcom/android/common/gles/d;

    move-result-object v0

    .line 47
    new-array v1, v4, [I

    .line 48
    iget v2, p0, Lcom/android/common/gles/j;->Sf:I

    aput v2, v1, v3

    .line 49
    invoke-virtual {v0, v4, v1, v3}, Lcom/android/common/gles/d;->RY(I[II)V

    .line 45
    return-void
.end method
