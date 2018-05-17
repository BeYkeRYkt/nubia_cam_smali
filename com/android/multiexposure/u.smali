.class final Lcom/android/multiexposure/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic arv:Lcom/android/multiexposure/f;

.field final synthetic arw:[B


# direct methods
.method constructor <init>(Lcom/android/multiexposure/f;[B)V
    .registers 3

    .prologue
    .line 355
    iput-object p1, p0, Lcom/android/multiexposure/u;->arv:Lcom/android/multiexposure/f;

    iput-object p2, p0, Lcom/android/multiexposure/u;->arw:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/multiexposure/u;->arv:Lcom/android/multiexposure/f;

    iget-object v0, v0, Lcom/android/multiexposure/f;->aqy:Lcom/android/multiexposure/c;

    iget-object v1, p0, Lcom/android/multiexposure/u;->arw:[B

    invoke-virtual {v0, v1}, Lcom/android/multiexposure/c;->aBU([B)V

    .line 357
    return-void
.end method
