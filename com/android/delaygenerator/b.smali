.class Lcom/android/delaygenerator/b;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic apR:Lcom/android/delaygenerator/DelayRecorder;


# direct methods
.method private constructor <init>(Lcom/android/delaygenerator/DelayRecorder;)V
    .registers 2

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/delaygenerator/b;->apR:Lcom/android/delaygenerator/DelayRecorder;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/delaygenerator/DelayRecorder;Lcom/android/delaygenerator/b;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/delaygenerator/b;-><init>(Lcom/android/delaygenerator/DelayRecorder;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/delaygenerator/b;->apR:Lcom/android/delaygenerator/DelayRecorder;

    invoke-static {v0}, Lcom/android/delaygenerator/DelayRecorder;->-get0(Lcom/android/delaygenerator/DelayRecorder;)Lcom/android/delaygenerator/a;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-interface {v0, v1}, Lcom/android/delaygenerator/a;->aBK(I)V

    .line 66
    return-void
.end method
