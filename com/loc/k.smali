.class Lcom/loc/k;
.super Lcom/loc/q;
.source "SourceFile"


# instance fields
.field private bdl:Lcom/loc/ch;


# direct methods
.method constructor <init>(Lcom/loc/ch;)V
    .registers 2

    invoke-direct {p0}, Lcom/loc/q;-><init>()V

    iput-object p1, p0, Lcom/loc/k;->bdl:Lcom/loc/ch;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/k;->bdl:Lcom/loc/ch;

    invoke-virtual {v0}, Lcom/loc/ch;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/util/Map;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
