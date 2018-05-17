.class public Lcom/android/common/ui/NubiaScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# instance fields
.field private ti:Lcom/android/common/ui/z;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/NubiaScrollView;->ti:Lcom/android/common/ui/z;

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/NubiaScrollView;->ti:Lcom/android/common/ui/z;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/ui/NubiaScrollView;->ti:Lcom/android/common/ui/z;

    .line 22
    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .registers 6

    .prologue
    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 33
    iget-object v0, p0, Lcom/android/common/ui/NubiaScrollView;->ti:Lcom/android/common/ui/z;

    if-eqz v0, :cond_c

    .line 34
    iget-object v0, p0, Lcom/android/common/ui/NubiaScrollView;->ti:Lcom/android/common/ui/z;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/common/ui/z;->xT(IIII)V

    .line 31
    :cond_c
    return-void
.end method

.method public xS(Lcom/android/common/ui/z;)V
    .registers 2

    .prologue
    .line 27
    iput-object p1, p0, Lcom/android/common/ui/NubiaScrollView;->ti:Lcom/android/common/ui/z;

    .line 26
    return-void
.end method
