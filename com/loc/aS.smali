.class Lcom/loc/aS;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loc/e;


# instance fields
.field final synthetic bgq:Lcom/loc/af;


# direct methods
.method constructor <init>(Lcom/loc/af;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/aS;->bgq:Lcom/loc/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/aS;->bgq:Lcom/loc/af;

    invoke-static {v0}, Lcom/loc/af;->bxQ(Lcom/loc/af;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "CollectorManager"

    const-string/jumbo v2, "onChange"

    invoke-static {v0, v1, v2}, Lcom/loc/bx;->bBD(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5
.end method
