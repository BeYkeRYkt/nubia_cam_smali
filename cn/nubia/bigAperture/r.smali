.class public Lcn/nubia/bigAperture/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/b/g;


# instance fields
.field private boi:Lcn/nubia/bigAperture/d;


# direct methods
.method public constructor <init>(Lcn/nubia/bigAperture/d;)V
    .registers 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/nubia/bigAperture/r;->boi:Lcn/nubia/bigAperture/d;

    .line 10
    return-void
.end method


# virtual methods
.method public be(Z)V
    .registers 2

    .prologue
    .line 27
    return-void
.end method

.method public bg()Lcom/android/common/storagemanager/c;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcn/nubia/bigAperture/r;->boi:Lcn/nubia/bigAperture/d;

    invoke-virtual {v0}, Lcn/nubia/bigAperture/d;->bJc()V

    .line 17
    const/4 v0, 0x0

    return-object v0
.end method

.method public bh(Lcom/android/common/storagemanager/c;)V
    .registers 2

    .prologue
    .line 21
    return-void
.end method
