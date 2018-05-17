.class Lcn/nubia/videogenerator/a/j;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic bro:Lcn/nubia/videogenerator/a/d;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/a/d;)V
    .registers 2

    .prologue
    .line 265
    iput-object p1, p0, Lcn/nubia/videogenerator/a/j;->bro:Lcn/nubia/videogenerator/a/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/a/d;Lcn/nubia/videogenerator/a/j;)V
    .registers 3

    .prologue
    .line 265
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/a/j;-><init>(Lcn/nubia/videogenerator/a/d;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 267
    iget-object v0, p0, Lcn/nubia/videogenerator/a/j;->bro:Lcn/nubia/videogenerator/a/d;

    invoke-static {v0}, Lcn/nubia/videogenerator/a/d;->bNZ(Lcn/nubia/videogenerator/a/d;)V

    .line 268
    return-void
.end method
