.class public Lu/aly/ag;
.super Lu/aly/av;
.source "SourceFile"

# interfaces
.implements Lu/aly/P;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 21
    invoke-direct {p0}, Lu/aly/av;-><init>()V

    .line 22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lu/aly/ag;->a(J)Lu/aly/av;

    .line 23
    sget-object v0, Lu/aly/aw;->bAf:Lu/aly/aw;

    invoke-virtual {p0, v0}, Lu/aly/ag;->cbU(Lu/aly/aw;)Lu/aly/av;

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 27
    invoke-direct {p0}, Lu/aly/ag;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lu/aly/ag;->a(Ljava/lang/String;)Lu/aly/av;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    .prologue
    .line 32
    invoke-direct {p0}, Lu/aly/ag;-><init>()V

    .line 33
    invoke-direct {p0, p1}, Lu/aly/ag;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/ag;->a(Ljava/lang/String;)Lu/aly/av;

    .line 34
    return-void
.end method

.method private a(Ljava/lang/Throwable;)Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_21

    .line 49
    :try_start_3
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 50
    new-instance v3, Ljava/io/PrintWriter;

    invoke-direct {v3, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 51
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 53
    :goto_14
    if-nez v0, :cond_22

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 59
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    .line 63
    :goto_20
    return-object v1

    .line 43
    :cond_21
    return-object v1

    .line 54
    :cond_22
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 55
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_28} :catch_2a

    move-result-object v0

    goto :goto_14

    .line 62
    :catch_2a
    move-exception v0

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method


# virtual methods
.method public a(Z)Lu/aly/ag;
    .registers 3

    .prologue
    .line 37
    if-nez p1, :cond_8

    sget-object v0, Lu/aly/aw;->bAg:Lu/aly/aw;

    :goto_4
    invoke-virtual {p0, v0}, Lu/aly/ag;->cbU(Lu/aly/aw;)Lu/aly/av;

    .line 38
    return-object p0

    .line 37
    :cond_8
    sget-object v0, Lu/aly/aw;->bAf:Lu/aly/aw;

    goto :goto_4
.end method

.method public bTF(Lu/aly/bp;Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1}, Lu/aly/bp;->bWB()I

    move-result v0

    if-gtz v0, :cond_e

    move-object v0, v1

    .line 78
    :cond_8
    :goto_8
    if-eqz v0, :cond_2f

    .line 84
    :goto_a
    invoke-virtual {v0, p0}, Lu/aly/be;->bXm(Lu/aly/av;)V

    .line 85
    return-void

    .line 70
    :cond_e
    invoke-virtual {p1}, Lu/aly/bp;->bWD()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    move-object v0, v1

    goto :goto_8

    :cond_1e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/be;

    .line 71
    invoke-virtual {v0}, Lu/aly/be;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_16

    .line 79
    :cond_2f
    new-instance v0, Lu/aly/be;

    invoke-direct {v0}, Lu/aly/be;-><init>()V

    .line 80
    invoke-virtual {v0, p2}, Lu/aly/be;->a(Ljava/lang/String;)Lu/aly/be;

    .line 81
    invoke-virtual {p1, v0}, Lu/aly/bp;->bWC(Lu/aly/be;)V

    goto :goto_a
.end method
