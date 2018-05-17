.class Lcom/android/objectclear/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# instance fields
.field final synthetic aUk:Lcom/android/objectclear/c;


# direct methods
.method private constructor <init>(Lcom/android/objectclear/c;)V
    .registers 2

    .prologue
    .line 116
    iput-object p1, p0, Lcom/android/objectclear/f;->aUk:Lcom/android/objectclear/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/objectclear/c;Lcom/android/objectclear/f;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/objectclear/f;-><init>(Lcom/android/objectclear/c;)V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .registers 6

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/objectclear/f;->aUk:Lcom/android/objectclear/c;

    invoke-static {v0}, Lcom/android/objectclear/c;->blt(Lcom/android/objectclear/c;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 121
    return-void

    .line 123
    :cond_9
    new-instance v0, Lcom/android/objectclear/e;

    iget-object v1, p0, Lcom/android/objectclear/f;->aUk:Lcom/android/objectclear/c;

    iget-object v2, p0, Lcom/android/objectclear/f;->aUk:Lcom/android/objectclear/c;

    invoke-static {v2}, Lcom/android/objectclear/c;->blr(Lcom/android/objectclear/c;)I

    move-result v2

    invoke-direct {v0, v1, v2, p1}, Lcom/android/objectclear/e;-><init>(Lcom/android/objectclear/c;I[B)V

    invoke-virtual {v0}, Lcom/android/objectclear/e;->start()V

    .line 119
    return-void
.end method
