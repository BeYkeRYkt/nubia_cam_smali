.class public Lcom/loc/bY;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "copy"

    iput-object v0, p0, Lcom/loc/bY;->f:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/bY;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/bY;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/bY;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/loc/bY;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/loc/bY;->e:Ljava/lang/String;

    return-void
.end method

.method static synthetic bDX(Lcom/loc/bY;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bY;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bDY(Lcom/loc/bY;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bY;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bDZ(Lcom/loc/bY;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bY;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bEa(Lcom/loc/bY;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bY;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bEb(Lcom/loc/bY;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bY;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bEc(Lcom/loc/bY;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bY;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/loc/bC;
    .registers 3

    new-instance v0, Lcom/loc/bC;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/loc/bC;-><init>(Lcom/loc/bY;Lcom/loc/z;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/loc/bY;
    .registers 2

    iput-object p1, p0, Lcom/loc/bY;->f:Ljava/lang/String;

    return-object p0
.end method
