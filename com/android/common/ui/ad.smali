.class public Lcom/android/common/ui/ad;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field left:I

.field top:I

.field zF:I

.field zG:I

.field final synthetic zH:Lcom/android/common/ui/EffectPage;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/EffectPage;IIII)V
    .registers 6

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/common/ui/ad;->zH:Lcom/android/common/ui/EffectPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    iput p2, p0, Lcom/android/common/ui/ad;->left:I

    .line 645
    iput p3, p0, Lcom/android/common/ui/ad;->zG:I

    .line 646
    iput p4, p0, Lcom/android/common/ui/ad;->top:I

    .line 647
    iput p5, p0, Lcom/android/common/ui/ad;->zF:I

    .line 643
    return-void
.end method


# virtual methods
.method public El()I
    .registers 2

    .prologue
    .line 663
    iget v0, p0, Lcom/android/common/ui/ad;->zF:I

    return v0
.end method

.method public Em()I
    .registers 2

    .prologue
    .line 651
    iget v0, p0, Lcom/android/common/ui/ad;->left:I

    return v0
.end method

.method public En()I
    .registers 2

    .prologue
    .line 655
    iget v0, p0, Lcom/android/common/ui/ad;->zG:I

    return v0
.end method

.method public Eo()I
    .registers 2

    .prologue
    .line 659
    iget v0, p0, Lcom/android/common/ui/ad;->top:I

    return v0
.end method
