.class public Lcom/android/common/p/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/common/p/c;


# instance fields
.field private afA:Landroid/app/Activity;

.field private afB:Landroid/os/Handler;

.field private afC:Lcom/android/common/p/b;

.field private afD:Ljava/util/ArrayList;

.field private afE:Lcom/android/common/p/c;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v1, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    .line 22
    iput-object v1, p0, Lcom/android/common/p/a;->afA:Landroid/app/Activity;

    .line 23
    iput-object v1, p0, Lcom/android/common/p/a;->afD:Ljava/util/ArrayList;

    .line 24
    iput-object v1, p0, Lcom/android/common/p/a;->afC:Lcom/android/common/p/b;

    .line 25
    iput-object v1, p0, Lcom/android/common/p/a;->afB:Landroid/os/Handler;

    .line 28
    iput-object p1, p0, Lcom/android/common/p/a;->afA:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/android/common/p/a;->afB:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/p/a;->afD:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Lcom/android/common/p/b;

    invoke-direct {v0, p0, v1}, Lcom/android/common/p/b;-><init>(Lcom/android/common/p/a;Lcom/android/common/p/b;)V

    iput-object v0, p0, Lcom/android/common/p/a;->afC:Lcom/android/common/p/b;

    .line 27
    return-void
.end method


# virtual methods
.method public amS(Lcom/android/common/p/d;)V
    .registers 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/common/p/a;->afD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 36
    iget-object v0, p0, Lcom/android/common/p/a;->afD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    :cond_d
    return-void
.end method

.method public amT()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    if-eqz v0, :cond_c

    .line 65
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    invoke-interface {v0}, Lcom/android/common/p/c;->amT()V

    .line 66
    iput-object v1, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    .line 63
    :cond_c
    return-void
.end method

.method public amU(Lcom/android/common/p/d;)V
    .registers 3

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/common/p/a;->afD:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 40
    return-void
.end method

.method public start()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 46
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    if-eqz v0, :cond_14

    .line 47
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    new-instance v1, Lcom/android/common/p/b;

    invoke-direct {v1, p0, v2}, Lcom/android/common/p/b;-><init>(Lcom/android/common/p/a;Lcom/android/common/p/b;)V

    invoke-interface {v0, v1}, Lcom/android/common/p/c;->amS(Lcom/android/common/p/d;)V

    .line 48
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    invoke-interface {v0}, Lcom/android/common/p/c;->start()V

    .line 45
    :cond_14
    return-void
.end method

.method public stop()V
    .registers 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    if-eqz v0, :cond_10

    .line 57
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    invoke-interface {v0}, Lcom/android/common/p/c;->stop()V

    .line 58
    iget-object v0, p0, Lcom/android/common/p/a;->afE:Lcom/android/common/p/c;

    iget-object v1, p0, Lcom/android/common/p/a;->afC:Lcom/android/common/p/b;

    invoke-interface {v0, v1}, Lcom/android/common/p/c;->amU(Lcom/android/common/p/d;)V

    .line 55
    :cond_10
    return-void
.end method
