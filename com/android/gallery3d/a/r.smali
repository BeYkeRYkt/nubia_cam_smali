.class Lcom/android/gallery3d/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final avt:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;)V
    .registers 2

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/android/gallery3d/a/r;->avt:Landroid/net/Uri;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 4

    .prologue
    .line 43
    instance-of v0, p1, Lcom/android/gallery3d/a/h;

    if-nez v0, :cond_6

    .line 44
    const/4 v0, 0x0

    return v0

    .line 46
    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/a/r;->avt:Landroid/net/Uri;

    check-cast p1, Lcom/android/gallery3d/a/h;

    invoke-interface {p1}, Lcom/android/gallery3d/a/h;->aHH()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
