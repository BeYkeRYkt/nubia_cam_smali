.class public Lcom/android/objectclear/b;
.super Lcom/android/common/c/d;
.source "SourceFile"


# instance fields
.field private aUa:Lcom/android/objectclear/i;


# direct methods
.method public constructor <init>(Lcom/android/objectclear/i;)V
    .registers 3

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/android/common/c/d;-><init>()V

    .line 6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/objectclear/b;->aUa:Lcom/android/objectclear/i;

    .line 9
    iput-object p1, p0, Lcom/android/objectclear/b;->aUa:Lcom/android/objectclear/i;

    .line 8
    return-void
.end method


# virtual methods
.method public hn()V
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/android/objectclear/b;->aUa:Lcom/android/objectclear/i;

    invoke-virtual {v0}, Lcom/android/objectclear/i;->blD()V

    .line 12
    return-void
.end method

.method public ho()I
    .registers 2

    .prologue
    .line 22
    const/16 v0, 0x2710

    return v0
.end method
