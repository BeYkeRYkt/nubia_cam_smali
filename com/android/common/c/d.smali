.class public abstract Lcom/android/common/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/c/a;


# instance fields
.field private gD:Lcom/android/common/c/q;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/common/c/d;->gD:Lcom/android/common/c/q;

    .line 4
    return-void
.end method


# virtual methods
.method public ho()I
    .registers 2

    .prologue
    .line 16
    const/16 v0, 0x1f4

    return v0
.end method
