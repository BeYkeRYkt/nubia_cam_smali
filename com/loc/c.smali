.class Lcom/loc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loc/bk;


# instance fields
.field private bde:Lcom/loc/bn;

.field final synthetic bdf:Lcom/loc/aR;


# direct methods
.method constructor <init>(Lcom/loc/aR;Lcom/loc/bn;)V
    .registers 3

    iput-object p1, p0, Lcom/loc/c;->bdf:Lcom/loc/aR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/c;->bde:Lcom/loc/bn;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/loc/c;->bde:Lcom/loc/bn;

    iget-object v1, p0, Lcom/loc/c;->bdf:Lcom/loc/aR;

    invoke-virtual {v1}, Lcom/loc/aR;->b()I

    move-result v1

    invoke-static {v1}, Lcom/loc/D;->a(I)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/loc/bn;->bAX(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-void

    :catch_10
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_f
.end method
