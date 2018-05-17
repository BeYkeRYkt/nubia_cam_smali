.class public Lcom/android/gallery3d/a/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private avr:Ljava/util/LinkedList;

.field private avs:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/a/q;->avs:Ljava/util/HashMap;

    .line 29
    return-void
.end method


# virtual methods
.method public aIA(ILcom/android/gallery3d/a/h;)V
    .registers 5

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avs:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/gallery3d/a/h;->aHH()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public aIt(Lcom/android/gallery3d/a/h;)V
    .registers 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 74
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avs:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/android/gallery3d/a/h;->aHH()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    return-void
.end method

.method public aIu()I
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method

.method public aIv(Ljava/util/Comparator;)V
    .registers 3

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 86
    return-void
.end method

.method public aIw(I)Lcom/android/gallery3d/a/h;
    .registers 3

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/h;

    return-object v0
.end method

.method public aIx(I)Lcom/android/gallery3d/a/h;
    .registers 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/a/h;

    .line 59
    iget-object v1, p0, Lcom/android/gallery3d/a/q;->avs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-object v0
.end method

.method public aIy(Landroid/net/Uri;)I
    .registers 4

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avs:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 97
    const/4 v0, -0x1

    return v0

    .line 99
    :cond_a
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/gallery3d/a/r;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/a/r;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public aIz(ILcom/android/gallery3d/a/h;)V
    .registers 5

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avr:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v0, p0, Lcom/android/gallery3d/a/q;->avs:Ljava/util/HashMap;

    invoke-interface {p2}, Lcom/android/gallery3d/a/h;->aHH()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method
