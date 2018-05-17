.class public Lcom/android/common/ui/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field zI:I

.field zJ:Lcom/android/common/ui/ad;

.field zK:I

.field zL:I

.field zM:I

.field zN:I

.field zO:I

.field zP:D

.field final synthetic zQ:Lcom/android/common/ui/EffectPage;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/EffectPage;Lcom/android/common/ui/ad;IIIIIID)V
    .registers 12

    .prologue
    .line 677
    iput-object p1, p0, Lcom/android/common/ui/ae;->zQ:Lcom/android/common/ui/EffectPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p2, p0, Lcom/android/common/ui/ae;->zJ:Lcom/android/common/ui/ad;

    .line 681
    iput p3, p0, Lcom/android/common/ui/ae;->zN:I

    .line 682
    iput p4, p0, Lcom/android/common/ui/ae;->zO:I

    .line 683
    iput p5, p0, Lcom/android/common/ui/ae;->zM:I

    .line 684
    iput p6, p0, Lcom/android/common/ui/ae;->zL:I

    .line 685
    iput p7, p0, Lcom/android/common/ui/ae;->zK:I

    .line 686
    iput p8, p0, Lcom/android/common/ui/ae;->zI:I

    .line 687
    iput-wide p9, p0, Lcom/android/common/ui/ae;->zP:D

    .line 679
    return-void
.end method


# virtual methods
.method public Ep()I
    .registers 2

    .prologue
    .line 715
    iget v0, p0, Lcom/android/common/ui/ae;->zI:I

    return v0
.end method

.method public Eq()Lcom/android/common/ui/ad;
    .registers 2

    .prologue
    .line 691
    iget-object v0, p0, Lcom/android/common/ui/ae;->zJ:Lcom/android/common/ui/ad;

    return-object v0
.end method

.method public Er()I
    .registers 2

    .prologue
    .line 711
    iget v0, p0, Lcom/android/common/ui/ae;->zK:I

    return v0
.end method

.method public Es()I
    .registers 2

    .prologue
    .line 707
    iget v0, p0, Lcom/android/common/ui/ae;->zL:I

    return v0
.end method

.method public Et()I
    .registers 2

    .prologue
    .line 703
    iget v0, p0, Lcom/android/common/ui/ae;->zM:I

    return v0
.end method

.method public Eu()I
    .registers 2

    .prologue
    .line 695
    iget v0, p0, Lcom/android/common/ui/ae;->zN:I

    return v0
.end method

.method public Ev()I
    .registers 2

    .prologue
    .line 699
    iget v0, p0, Lcom/android/common/ui/ae;->zO:I

    return v0
.end method

.method public Ew()D
    .registers 3

    .prologue
    .line 719
    iget-wide v0, p0, Lcom/android/common/ui/ae;->zP:D

    return-wide v0
.end method
