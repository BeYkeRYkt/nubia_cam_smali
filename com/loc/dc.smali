.class Lcom/loc/dc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected a:S

.field protected b:I

.field protected c:Lcom/loc/dd;

.field protected d:Lcom/loc/db;

.field protected e:Lcom/loc/cr;

.field protected f:Lcom/loc/di;

.field protected g:Lcom/loc/dg;


# direct methods
.method constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v1, p0, Lcom/loc/dc;->a:S

    iput v1, p0, Lcom/loc/dc;->b:I

    iput-object v0, p0, Lcom/loc/dc;->c:Lcom/loc/dd;

    iput-object v0, p0, Lcom/loc/dc;->d:Lcom/loc/db;

    iput-object v0, p0, Lcom/loc/dc;->e:Lcom/loc/cr;

    iput-object v0, p0, Lcom/loc/dc;->f:Lcom/loc/di;

    iput-object v0, p0, Lcom/loc/dc;->g:Lcom/loc/dg;

    return-void
.end method
