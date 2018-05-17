.class public Lcom/android/common/c/c;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private gC:Lcom/android/common/appService/t;


# direct methods
.method public constructor <init>(Lcom/android/common/appService/t;)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/c;->gC:Lcom/android/common/appService/t;

    .line 9
    iput-object p1, p0, Lcom/android/common/c/c;->gC:Lcom/android/common/appService/t;

    .line 8
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/common/c/c;->gC:Lcom/android/common/appService/t;

    invoke-virtual {v0}, Lcom/android/common/appService/t;->kL()V

    .line 12
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, -0x1

    return v0
.end method
