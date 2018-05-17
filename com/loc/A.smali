.class public final Lcom/loc/A;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final b:Ljava/lang/String;

.field private final bdR:[Ljava/io/InputStream;

.field private final bdS:[J

.field final synthetic bdT:Lcom/loc/cD;

.field private final c:J


# direct methods
.method private constructor <init>(Lcom/loc/cD;Ljava/lang/String;J[Ljava/io/InputStream;[J)V
    .registers 8

    iput-object p1, p0, Lcom/loc/A;->bdT:Lcom/loc/cD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/loc/A;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/loc/A;->c:J

    iput-object p5, p0, Lcom/loc/A;->bdR:[Ljava/io/InputStream;

    iput-object p6, p0, Lcom/loc/A;->bdS:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/loc/cD;Ljava/lang/String;J[Ljava/io/InputStream;[JLcom/loc/ax;)V
    .registers 9

    invoke-direct/range {p0 .. p6}, Lcom/loc/A;-><init>(Lcom/loc/cD;Ljava/lang/String;J[Ljava/io/InputStream;[J)V

    return-void
.end method


# virtual methods
.method public a(I)Ljava/io/InputStream;
    .registers 3

    iget-object v0, p0, Lcom/loc/A;->bdR:[Ljava/io/InputStream;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public close()V
    .registers 5

    iget-object v1, p0, Lcom/loc/A;->bdR:[Ljava/io/InputStream;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-lt v0, v2, :cond_7

    return-void

    :cond_7
    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/loc/G;->bwy(Ljava/io/Closeable;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method
