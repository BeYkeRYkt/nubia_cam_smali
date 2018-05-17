.class public Lcom/android/common/gles/a;
.super Lcom/android/common/gles/c;
.source "SourceFile"


# instance fields
.field private Se:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 8
    invoke-direct {p0, p1}, Lcom/android/common/gles/c;-><init>(I)V

    .line 9
    iput p1, p0, Lcom/android/common/gles/a;->Sf:I

    .line 10
    iput p2, p0, Lcom/android/common/gles/a;->Se:I

    .line 11
    invoke-virtual {p0, p3, p4}, Lcom/android/common/gles/a;->RP(II)V

    .line 7
    return-void
.end method


# virtual methods
.method public RG()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/android/common/gles/a;->Se:I

    return v0
.end method

.method public RH()Z
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x1

    return v0
.end method
