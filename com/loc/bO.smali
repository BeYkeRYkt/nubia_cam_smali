.class public Lcom/loc/bO;
.super Lcom/loc/q;
.source "SourceFile"


# instance fields
.field a:Ljava/util/Map;

.field b:Ljava/util/Map;

.field bhS:[B

.field f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/loc/q;-><init>()V

    iput-object v1, p0, Lcom/loc/bO;->a:Ljava/util/Map;

    iput-object v1, p0, Lcom/loc/bO;->b:Ljava/util/Map;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/bO;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/loc/bO;->bhS:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/loc/bO;->a:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bO;->f:Ljava/lang/String;

    return-void
.end method

.method public a([B)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bO;->bhS:[B

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bO;->f:Ljava/lang/String;

    return-object v0
.end method

.method public bCx(Ljava/util/Map;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bO;->a:Ljava/util/Map;

    return-void
.end method

.method public c()Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/loc/bO;->b:Ljava/util/Map;

    return-object v0
.end method

.method public d()[B
    .registers 2

    iget-object v0, p0, Lcom/loc/bO;->bhS:[B

    return-object v0
.end method
