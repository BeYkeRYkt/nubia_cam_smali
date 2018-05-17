.class Lcom/loc/co;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loc/an;


# instance fields
.field final synthetic bkN:Lcom/loc/cd;


# direct methods
.method constructor <init>(Lcom/loc/cd;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/co;->bkN:Lcom/loc/cd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/loc/co;->bkN:Lcom/loc/cd;

    iput p1, v0, Lcom/loc/cd;->d:I

    return-void
.end method
