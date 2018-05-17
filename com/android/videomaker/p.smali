.class public Lcom/android/videomaker/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private aMQ:I

.field private aMR:I


# direct methods
.method public constructor <init>(II)V
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput v0, p0, Lcom/android/videomaker/p;->aMR:I

    .line 12
    iput v0, p0, Lcom/android/videomaker/p;->aMQ:I

    .line 15
    iput p1, p0, Lcom/android/videomaker/p;->aMR:I

    .line 16
    iput p2, p0, Lcom/android/videomaker/p;->aMQ:I

    .line 14
    return-void
.end method


# virtual methods
.method public bds()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/android/videomaker/p;->aMQ:I

    return v0
.end method

.method public bdt()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/android/videomaker/p;->aMR:I

    return v0
.end method
