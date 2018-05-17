.class final Lcom/android/common/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic al:Lcom/android/common/a/a;


# direct methods
.method constructor <init>(Lcom/android/common/a/a;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/android/common/a/l;->al:Lcom/android/common/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ba(Lcom/android/common/a/b;Lcom/android/common/a/b;)I
    .registers 5

    .prologue
    .line 228
    invoke-interface {p1}, Lcom/android/common/a/b;->S()I

    move-result v0

    invoke-interface {p2}, Lcom/android/common/a/b;->S()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 229
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_c
    invoke-interface {p1}, Lcom/android/common/a/b;->S()I

    move-result v0

    invoke-interface {p2}, Lcom/android/common/a/b;->S()I

    move-result v1

    if-ge v0, v1, :cond_18

    .line 231
    const/4 v0, -0x1

    return v0

    .line 233
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 227
    check-cast p1, Lcom/android/common/a/b;

    check-cast p2, Lcom/android/common/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/android/common/a/l;->ba(Lcom/android/common/a/b;Lcom/android/common/a/b;)I

    move-result v0

    return v0
.end method
