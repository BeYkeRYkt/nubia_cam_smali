.class public Lcn/nubia/bigAperture/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public bnj:I

.field public bnk:I

.field public left:I

.field public top:I


# direct methods
.method public constructor <init>(IIII)V
    .registers 5

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput p1, p0, Lcn/nubia/bigAperture/f;->left:I

    .line 8
    iput p2, p0, Lcn/nubia/bigAperture/f;->top:I

    .line 9
    iput p3, p0, Lcn/nubia/bigAperture/f;->bnj:I

    .line 10
    iput p4, p0, Lcn/nubia/bigAperture/f;->bnk:I

    .line 6
    return-void
.end method


# virtual methods
.method public bJq()I
    .registers 3

    .prologue
    .line 14
    iget v0, p0, Lcn/nubia/bigAperture/f;->bnj:I

    iget v1, p0, Lcn/nubia/bigAperture/f;->left:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bJr()I
    .registers 3

    .prologue
    .line 18
    iget v0, p0, Lcn/nubia/bigAperture/f;->bnk:I

    iget v1, p0, Lcn/nubia/bigAperture/f;->top:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method
