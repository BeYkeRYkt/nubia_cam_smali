.class public Lcom/android/multiexposure/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aBS(Lcom/android/multiexposure/t;)Lcom/android/common/c/a;
    .registers 2

    .prologue
    .line 8
    new-instance v0, Lcom/android/multiexposure/a/b;

    invoke-direct {v0, p0}, Lcom/android/multiexposure/a/b;-><init>(Lcom/android/multiexposure/t;)V

    return-object v0
.end method
