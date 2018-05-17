.class Lcom/loc/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/loc/y;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/loc/y;->a:Ljava/lang/String;

    return-void
.end method
