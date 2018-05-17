.class final Lcom/android/gallery3d/a/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/gallery3d/a/n;


# instance fields
.field final synthetic avw:Lcom/android/gallery3d/a/j;

.field final synthetic avx:I


# direct methods
.method constructor <init>(Lcom/android/gallery3d/a/j;I)V
    .registers 3

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/gallery3d/a/t;->avw:Lcom/android/gallery3d/a/j;

    iput p2, p0, Lcom/android/gallery3d/a/t;->avx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aIn(I)Z
    .registers 3

    .prologue
    .line 239
    const/4 v0, 0x0

    return v0
.end method

.method public aIo(I)Z
    .registers 3

    .prologue
    .line 244
    iget v0, p0, Lcom/android/gallery3d/a/t;->avx:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
