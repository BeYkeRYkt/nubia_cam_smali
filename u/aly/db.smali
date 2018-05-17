.class public final Lu/aly/db;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/v;


# static fields
.field private static bAj:Lu/aly/db;


# instance fields
.field private b:Landroid/content/Context;

.field private bAi:Lu/aly/v;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lu/aly/db;->b:Landroid/content/Context;

    .line 16
    new-instance v0, Lu/aly/X;

    iget-object v1, p0, Lu/aly/db;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/X;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/db;->bAi:Lu/aly/v;

    .line 17
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lu/aly/db;
    .registers 3

    .prologue
    const-class v1, Lu/aly/db;

    monitor-enter v1

    .line 20
    :try_start_3
    sget-object v0, Lu/aly/db;->bAj:Lu/aly/db;

    if-eqz v0, :cond_b

    .line 24
    :cond_7
    :goto_7
    sget-object v0, Lu/aly/db;->bAj:Lu/aly/db;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_15

    monitor-exit v1

    return-object v0

    .line 20
    :cond_b
    if-eqz p0, :cond_7

    .line 21
    :try_start_d
    new-instance v0, Lu/aly/db;

    invoke-direct {v0, p0}, Lu/aly/db;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/db;->bAj:Lu/aly/db;
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_15

    goto :goto_7

    :catchall_15
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic bZs(Lu/aly/db;)Lu/aly/v;
    .registers 2

    .prologue
    .line 8
    iget-object v0, p0, Lu/aly/db;->bAi:Lu/aly/v;

    return-object v0
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 44
    new-instance v0, Lu/aly/bJ;

    invoke-direct {v0, p0}, Lu/aly/bJ;-><init>(Lu/aly/db;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 49
    return-void
.end method

.method public b()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lu/aly/aJ;

    invoke-direct {v0, p0}, Lu/aly/aJ;-><init>(Lu/aly/db;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public bRG(Lu/aly/P;)V
    .registers 3

    .prologue
    .line 40
    iget-object v0, p0, Lu/aly/db;->bAi:Lu/aly/v;

    invoke-interface {v0, p1}, Lu/aly/v;->bRG(Lu/aly/P;)V

    .line 41
    return-void
.end method

.method public bRH(Lu/aly/P;)V
    .registers 3

    .prologue
    .line 32
    new-instance v0, Lu/aly/aV;

    invoke-direct {v0, p0, p1}, Lu/aly/aV;-><init>(Lu/aly/db;Lu/aly/P;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->b(Ljava/lang/Runnable;)V

    .line 37
    return-void
.end method

.method public c()V
    .registers 2

    .prologue
    .line 61
    new-instance v0, Lu/aly/N;

    invoke-direct {v0, p0}, Lu/aly/N;-><init>(Lu/aly/db;)V

    invoke-static {v0}, Lcom/umeng/analytics/f;->c(Ljava/lang/Runnable;)V

    .line 69
    return-void
.end method
