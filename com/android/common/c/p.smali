.class public Lcom/android/common/c/p;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private gU:Lcom/android/common/appService/t;

.field private gV:Z


# direct methods
.method public constructor <init>(Lcom/android/common/appService/t;Z)V
    .registers 4

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/p;->gU:Lcom/android/common/appService/t;

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/common/c/p;->gV:Z

    .line 10
    iput-object p1, p0, Lcom/android/common/c/p;->gU:Lcom/android/common/appService/t;

    .line 11
    iput-boolean p2, p0, Lcom/android/common/c/p;->gV:Z

    .line 9
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 3

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/common/c/p;->gU:Lcom/android/common/appService/t;

    iget-boolean v1, p0, Lcom/android/common/c/p;->gV:Z

    invoke-virtual {v0, v1}, Lcom/android/common/appService/t;->kW(Z)V

    .line 14
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 19
    const/16 v0, 0x64

    return v0
.end method
