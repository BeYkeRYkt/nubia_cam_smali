.class public Lcom/android/common/c/n;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private gR:I

.field private gS:Lcom/android/common/ui/ZtemtSlidingDrawer;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/ZtemtSlidingDrawer;I)V
    .registers 3

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/common/c/n;->gS:Lcom/android/common/ui/ZtemtSlidingDrawer;

    .line 12
    iput p2, p0, Lcom/android/common/c/n;->gR:I

    .line 10
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 3

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/common/c/n;->gS:Lcom/android/common/ui/ZtemtSlidingDrawer;

    iget v1, p0, Lcom/android/common/c/n;->gR:I

    invoke-virtual {v0, v1}, Lcom/android/common/ui/ZtemtSlidingDrawer;->Ao(I)V

    .line 16
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 22
    const/4 v0, -0x1

    return v0
.end method
