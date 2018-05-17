.class public Lcom/fotonation/utils/Referenced;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected mRefCount:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/4 v0, 0x1

    iput v0, p0, Lcom/fotonation/utils/Referenced;->mRefCount:I

    .line 6
    return-void
.end method


# virtual methods
.method public AddRef()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/fotonation/utils/Referenced;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fotonation/utils/Referenced;->mRefCount:I

    return v0
.end method

.method public Release()I
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 27
    iget v0, p0, Lcom/fotonation/utils/Referenced;->mRefCount:I

    if-lez v0, :cond_c

    .line 28
    iget v0, p0, Lcom/fotonation/utils/Referenced;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/fotonation/utils/Referenced;->mRefCount:I

    return v0

    .line 30
    :cond_c
    return v1
.end method
