.class Lcom/loc/J;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Ljava/lang/String;

.field bed:Z

.field d:I


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/loc/J;->a:Z

    const-string/jumbo v0, "0"

    iput-object v0, p0, Lcom/loc/J;->b:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/loc/J;->bed:Z

    const/4 v0, 0x5

    iput v0, p0, Lcom/loc/J;->d:I

    return-void
.end method
