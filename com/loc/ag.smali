.class public Lcom/loc/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private bfi:[Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/loc/ag;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/loc/cx;)V
    .registers 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/loc/ag;->c:I

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cx;->bGT(Lcom/loc/cx;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/ag;->g:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cx;->bGU(Lcom/loc/cx;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/ag;->i:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cx;->bGV(Lcom/loc/cx;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/loc/ag;->h:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cx;->bGW(Lcom/loc/cx;)Z

    move-result v2

    if-nez v2, :cond_5d

    :goto_22
    iput v0, p0, Lcom/loc/ag;->c:I

    invoke-static {p1}, Lcom/loc/cx;->bGX(Lcom/loc/cx;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->j:Ljava/lang/String;

    invoke-static {p1}, Lcom/loc/cx;->bGY(Lcom/loc/cx;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ag;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ag;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ag;->h:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/loc/ag;->byc([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/loc/ag;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->f:Ljava/lang/String;

    return-void

    :cond_5d
    move v0, v1

    goto :goto_22
.end method

.method synthetic constructor <init>(Lcom/loc/cx;Lcom/loc/bG;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/loc/ag;-><init>(Lcom/loc/cx;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "a1"

    invoke-static {p0}, Lcom/loc/bv;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/loc/n;->bvL(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3

    :try_start_0
    const-string/jumbo v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6} :catch_8

    move-result-object v0

    return-object v0

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private byc([Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    const/4 v5, 0x0

    if-eqz p1, :cond_11

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, p1

    const/4 v0, 0x0

    :goto_a
    if-lt v0, v2, :cond_12

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_11
    return-object v5

    :cond_12
    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_1e} :catch_21

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_21
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v5
.end method

.method public static f()Ljava/lang/String;
    .registers 1

    const-string/jumbo v0, "a6=1"

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/ag;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/loc/ag;->i:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/loc/ag;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/loc/ag;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->bBr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->i:Ljava/lang/String;

    goto :goto_8
.end method

.method public a(Z)V
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_6

    :goto_3
    iput v0, p0, Lcom/loc/ag;->c:I

    return-void

    :cond_6
    const/4 v0, 0x1

    goto :goto_3
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/ag;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/loc/ag;->g:Ljava/lang/String;

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/loc/ag;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/loc/ag;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->bBr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->g:Ljava/lang/String;

    goto :goto_8
.end method

.method public c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/ag;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    :cond_8
    :goto_8
    iget-object v0, p0, Lcom/loc/ag;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_24

    :goto_10
    iget-object v0, p0, Lcom/loc/ag;->j:Ljava/lang/String;

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/loc/ag;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/loc/ag;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->bBr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->j:Ljava/lang/String;

    goto :goto_8

    :cond_24
    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/loc/ag;->j:Ljava/lang/String;

    goto :goto_10
.end method

.method public d()Z
    .registers 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/loc/ag;->c:I

    if-eq v1, v0, :cond_6

    const/4 v0, 0x0

    :cond_6
    return v0
.end method

.method public e()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    if-nez v0, :cond_15

    :cond_4
    iget-object v0, p0, Lcom/loc/ag;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    :goto_c
    iget-object v0, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    array-length v0, v0

    if-eqz v0, :cond_4

    goto :goto_c

    :cond_1b
    iget-object v0, p0, Lcom/loc/ag;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/bv;->bBr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/loc/ag;->b(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/ag;->bfi:[Ljava/lang/String;

    goto :goto_c
.end method
