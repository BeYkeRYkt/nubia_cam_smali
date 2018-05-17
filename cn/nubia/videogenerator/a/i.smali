.class Lcn/nubia/videogenerator/a/i;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic brn:Lcn/nubia/videogenerator/a/c;


# direct methods
.method private constructor <init>(Lcn/nubia/videogenerator/a/c;)V
    .registers 2

    .prologue
    .line 326
    iput-object p1, p0, Lcn/nubia/videogenerator/a/i;->brn:Lcn/nubia/videogenerator/a/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/videogenerator/a/c;Lcn/nubia/videogenerator/a/i;)V
    .registers 3

    .prologue
    .line 326
    invoke-direct {p0, p1}, Lcn/nubia/videogenerator/a/i;-><init>(Lcn/nubia/videogenerator/a/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcn/nubia/videogenerator/a/i;->brn:Lcn/nubia/videogenerator/a/c;

    invoke-static {v0}, Lcn/nubia/videogenerator/a/c;->bNM(Lcn/nubia/videogenerator/a/c;)V

    .line 330
    return-void
.end method
