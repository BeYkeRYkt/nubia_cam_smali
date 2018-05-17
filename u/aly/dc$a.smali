.class public Lu/aly/dc$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu/aly/dk;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 71
    iput-wide v0, p0, Lu/aly/dc$a;->a:J

    .line 72
    return-void
.end method


# virtual methods
.method public bSZ(Lu/aly/cV;)Lu/aly/dl;
    .registers 6

    .prologue
    .line 79
    new-instance v0, Lu/aly/H;

    iget-wide v2, p0, Lu/aly/dc$a;->a:J

    invoke-direct {v0, p1, v2, v3}, Lu/aly/H;-><init>(Lu/aly/cV;J)V

    return-object v0
.end method
