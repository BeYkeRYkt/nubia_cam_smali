.class public Lcom/android/a/b;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private apU:Lcom/android/a/d;


# direct methods
.method public constructor <init>(Lcom/android/a/d;)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/a/b;->apU:Lcom/android/a/d;

    .line 9
    iput-object p1, p0, Lcom/android/a/b;->apU:Lcom/android/a/d;

    .line 8
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/a/b;->apU:Lcom/android/a/d;

    if-eqz v0, :cond_9

    .line 20
    iget-object v0, p0, Lcom/android/a/b;->apU:Lcom/android/a/d;

    invoke-virtual {v0}, Lcom/android/a/d;->aBM()V

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
