.class public Lcom/loc/aM;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bgh:Lcom/loc/ba;

.field private bgi:Lcom/loc/q;


# direct methods
.method public constructor <init>(Lcom/loc/q;)V
    .registers 8

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/loc/aM;-><init>(Lcom/loc/q;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/loc/q;JJ)V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/loc/aM;->bgi:Lcom/loc/q;

    iget-object v1, p1, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    if-eqz v1, :cond_c

    iget-object v0, p1, Lcom/loc/q;->bdv:Ljava/net/Proxy;

    :cond_c
    new-instance v1, Lcom/loc/ba;

    iget-object v2, p0, Lcom/loc/aM;->bgi:Lcom/loc/q;

    iget v2, v2, Lcom/loc/q;->c:I

    iget-object v3, p0, Lcom/loc/aM;->bgi:Lcom/loc/q;

    iget v3, v3, Lcom/loc/q;->d:I

    invoke-direct {v1, v2, v3, v0}, Lcom/loc/ba;-><init>(IILjava/net/Proxy;)V

    iput-object v1, p0, Lcom/loc/aM;->bgh:Lcom/loc/ba;

    iget-object v0, p0, Lcom/loc/aM;->bgh:Lcom/loc/ba;

    invoke-virtual {v0, p4, p5}, Lcom/loc/ba;->bAA(J)V

    iget-object v0, p0, Lcom/loc/aM;->bgh:Lcom/loc/ba;

    invoke-virtual {v0, p2, p3}, Lcom/loc/ba;->a(J)V

    return-void
.end method


# virtual methods
.method public bzV(Lcom/loc/f;)V
    .registers 6

    iget-object v0, p0, Lcom/loc/aM;->bgh:Lcom/loc/ba;

    iget-object v1, p0, Lcom/loc/aM;->bgi:Lcom/loc/q;

    invoke-virtual {v1}, Lcom/loc/q;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/loc/aM;->bgi:Lcom/loc/q;

    invoke-virtual {v2}, Lcom/loc/q;->a()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/loc/aM;->bgi:Lcom/loc/q;

    invoke-virtual {v3}, Lcom/loc/q;->c()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/loc/ba;->bAB(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/loc/f;)V

    return-void
.end method
