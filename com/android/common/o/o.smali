.class public Lcom/android/common/o/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private adR:Landroid/view/View;

.field private adS:I


# direct methods
.method public constructor <init>(ILandroid/view/View;)V
    .registers 3

    .prologue
    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput p1, p0, Lcom/android/common/o/o;->adS:I

    .line 392
    iput-object p2, p0, Lcom/android/common/o/o;->adR:Landroid/view/View;

    .line 390
    return-void
.end method


# virtual methods
.method public alV()Landroid/view/View;
    .registers 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/common/o/o;->adR:Landroid/view/View;

    return-object v0
.end method

.method public alW()I
    .registers 2

    .prologue
    .line 396
    iget v0, p0, Lcom/android/common/o/o;->adS:I

    return v0
.end method
