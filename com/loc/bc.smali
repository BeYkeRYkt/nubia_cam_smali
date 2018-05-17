.class public Lcom/loc/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bgG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

.field final synthetic bgH:Lcom/loc/bj;

.field private c:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/loc/bj;)V
    .registers 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/loc/bc;->bgH:Lcom/loc/bj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/bc;->bgG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    iput-object v0, p0, Lcom/loc/bc;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lcom/autonavi/aps/amapapi/model/AmapLoc;
    .registers 2

    iget-object v0, p0, Lcom/loc/bc;->bgG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "##"

    const-string/jumbo v1, "#"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/bc;->c:Ljava/lang/String;

    :goto_12
    return-void

    :cond_13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loc/bc;->c:Ljava/lang/String;

    goto :goto_12
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/loc/bc;->c:Ljava/lang/String;

    return-object v0
.end method

.method public bAH(Lcom/autonavi/aps/amapapi/model/AmapLoc;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/bc;->bgG:Lcom/autonavi/aps/amapapi/model/AmapLoc;

    return-void
.end method
