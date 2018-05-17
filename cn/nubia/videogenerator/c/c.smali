.class Lcn/nubia/videogenerator/c/c;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic bsr:Lcn/nubia/videogenerator/c/a;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/c/a;)V
    .registers 2

    .prologue
    .line 83
    iput-object p1, p0, Lcn/nubia/videogenerator/c/c;->bsr:Lcn/nubia/videogenerator/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/c/a;Lcn/nubia/videogenerator/c/c;)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/c/c;-><init>(Lcn/nubia/videogenerator/c/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcn/nubia/videogenerator/c/c;->bsr:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPj(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/c;

    move-result-object v0

    if-nez v0, :cond_11

    .line 90
    :goto_8
    iget-object v0, p0, Lcn/nubia/videogenerator/c/c;->bsr:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPk(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/e;

    move-result-object v0

    if-nez v0, :cond_1b

    .line 93
    :goto_10
    return-void

    .line 87
    :cond_11
    iget-object v0, p0, Lcn/nubia/videogenerator/c/c;->bsr:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPj(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->start()V

    goto :goto_8

    .line 91
    :cond_1b
    iget-object v0, p0, Lcn/nubia/videogenerator/c/c;->bsr:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPk(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/e;->bOd()V

    goto :goto_10
.end method
