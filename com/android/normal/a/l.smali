.class final Lcom/android/normal/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/h;


# instance fields
.field final synthetic baz:Lcom/android/normal/a/i;


# direct methods
.method constructor <init>(Lcom/android/normal/a/i;)V
    .registers 2

    .prologue
    .line 367
    iput-object p1, p0, Lcom/android/normal/a/l;->baz:Lcom/android/normal/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public brq()V
    .registers 3

    .prologue
    .line 371
    invoke-static {}, Lcom/android/normal/a/b;->bqu()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "e audio start"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    iget-object v0, p0, Lcom/android/normal/a/l;->baz:Lcom/android/normal/a/i;

    invoke-static {v0}, Lcom/android/normal/a/i;->brf(Lcom/android/normal/a/i;)Lcn/nubia/videogenerator/a/c;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/videogenerator/a/c;->start()V

    .line 370
    return-void
.end method