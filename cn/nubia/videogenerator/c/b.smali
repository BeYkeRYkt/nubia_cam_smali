.class Lcn/nubia/videogenerator/c/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic bsq:Lcn/nubia/videogenerator/c/a;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/c/a;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcn/nubia/videogenerator/c/b;->bsq:Lcn/nubia/videogenerator/c/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/c/a;Lcn/nubia/videogenerator/c/b;)V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/c/b;-><init>(Lcn/nubia/videogenerator/c/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b;->bsq:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPl(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/c;

    move-result-object v0

    if-nez v0, :cond_19

    .line 102
    :goto_8
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b;->bsq:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPm(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/d;

    move-result-object v0

    if-nez v0, :cond_23

    .line 105
    :goto_10
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b;->bsq:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPn(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/local/a;

    move-result-object v0

    if-nez v0, :cond_2d

    .line 108
    :goto_18
    return-void

    .line 100
    :cond_19
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b;->bsq:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPl(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->start()V

    goto :goto_8

    .line 103
    :cond_23
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b;->bsq:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPm(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/d;->start()V

    goto :goto_10

    .line 106
    :cond_2d
    iget-object v0, p0, Lcn/nubia/videogenerator/c/b;->bsq:Lcn/nubia/videogenerator/c/a;

    invoke-static {v0}, Lcn/nubia/videogenerator/c/a;->bPn(Lcn/nubia/videogenerator/c/a;)Lcn/nubia/videogenerator/local/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/local/a;->start()V

    goto :goto_18
.end method
