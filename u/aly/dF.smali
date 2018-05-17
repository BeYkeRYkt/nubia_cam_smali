.class public Lu/aly/dF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private bBH:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private bBI:Lu/aly/o;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    if-eq v0, p0, :cond_13

    .line 23
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lu/aly/dF;->bBH:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 24
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 25
    return-void

    .line 20
    :cond_13
    return-void
.end method

.method private a(Ljava/lang/Throwable;)V
    .registers 4

    .prologue
    .line 41
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    if-nez v0, :cond_b

    .line 44
    iget-object v0, p0, Lu/aly/dF;->bBI:Lu/aly/o;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lu/aly/o;->a(Ljava/lang/Throwable;)V

    .line 46
    :goto_a
    return-void

    .line 42
    :cond_b
    iget-object v0, p0, Lu/aly/dF;->bBI:Lu/aly/o;

    invoke-interface {v0, p1}, Lu/aly/o;->a(Ljava/lang/Throwable;)V

    goto :goto_a
.end method


# virtual methods
.method public cbR(Lu/aly/o;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lu/aly/dF;->bBI:Lu/aly/o;

    .line 29
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .registers 5

    .prologue
    .line 33
    invoke-direct {p0, p2}, Lu/aly/dF;->a(Ljava/lang/Throwable;)V

    .line 35
    iget-object v0, p0, Lu/aly/dF;->bBH:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-nez v0, :cond_8

    .line 38
    :cond_7
    :goto_7
    return-void

    .line 35
    :cond_8
    iget-object v0, p0, Lu/aly/dF;->bBH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    if-eq v0, v1, :cond_7

    .line 36
    iget-object v0, p0, Lu/aly/dF;->bBH:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_7
.end method
