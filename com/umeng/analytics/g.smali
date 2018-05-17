.class public abstract Lcom/umeng/analytics/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public run()V
    .registers 2

    .prologue
    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/umeng/analytics/g;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 13
    :cond_3
    :goto_3
    return-void

    .line 12
    :catch_4
    move-exception v0

    .line 10
    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method
