.class Lcom/loc/T;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic beo:Lcom/loc/p;


# direct methods
.method constructor <init>(Lcom/loc/p;)V
    .registers 2

    iput-object p1, p0, Lcom/loc/T;->beo:Lcom/loc/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bwQ(Lcom/loc/au;Lcom/loc/au;)I
    .registers 5

    invoke-virtual {p2}, Lcom/loc/au;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/loc/au;->b()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    check-cast p1, Lcom/loc/au;

    check-cast p2, Lcom/loc/au;

    invoke-virtual {p0, p1, p2}, Lcom/loc/T;->bwQ(Lcom/loc/au;Lcom/loc/au;)I

    move-result v0

    return v0
.end method
