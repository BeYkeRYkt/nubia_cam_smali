.class public Lcom/loc/av;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :goto_3
    iput v0, p0, Lcom/loc/av;->a:I

    return-void

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public a()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/loc/av;->a:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public b()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/loc/av;->b:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public bzh(Z)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :goto_3
    iput v0, p0, Lcom/loc/av;->b:I

    return-void

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public bzi(Z)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :goto_3
    iput v0, p0, Lcom/loc/av;->c:I

    return-void

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public c()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/loc/av;->c:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method
