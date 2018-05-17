.class public Lcom/loc/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/loc/I;->a:Z

    iput-boolean v0, p0, Lcom/loc/I;->b:Z

    return-void
.end method
