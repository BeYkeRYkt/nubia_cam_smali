.class public Lcom/loc/cx;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loc/cx;->d:Z

    const-string/jumbo v0, "standard"

    iput-object v0, p0, Lcom/loc/cx;->e:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/cx;->f:[Ljava/lang/String;

    iput-object p2, p0, Lcom/loc/cx;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/cx;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/cx;->b:Ljava/lang/String;

    return-void
.end method

.method static synthetic bGT(Lcom/loc/cx;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/cx;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bGU(Lcom/loc/cx;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/cx;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bGV(Lcom/loc/cx;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/cx;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bGW(Lcom/loc/cx;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/loc/cx;->d:Z

    return v0
.end method

.method static synthetic bGX(Lcom/loc/cx;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/cx;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic bGY(Lcom/loc/cx;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/cx;->f:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/loc/ag;
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/loc/cx;->f:[Ljava/lang/String;

    if-eqz v0, :cond_b

    new-instance v0, Lcom/loc/ag;

    invoke-direct {v0, p0, v1}, Lcom/loc/ag;-><init>(Lcom/loc/cx;Lcom/loc/bG;)V

    return-object v0

    :cond_b
    new-instance v0, Lcom/loc/i;

    const-string/jumbo v1, "sdk packages is null"

    invoke-direct {v0, v1}, Lcom/loc/i;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bGS([Ljava/lang/String;)Lcom/loc/cx;
    .registers 3

    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/loc/cx;->f:[Ljava/lang/String;

    return-object p0
.end method
