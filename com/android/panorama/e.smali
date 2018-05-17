.class Lcom/android/panorama/e;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic aPq:Lcom/android/panorama/d;


# direct methods
.method private constructor <init>(Lcom/android/panorama/d;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/panorama/e;->aPq:Lcom/android/panorama/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/panorama/d;Lcom/android/panorama/e;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/panorama/e;-><init>(Lcom/android/panorama/d;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/panorama/e;->aPq:Lcom/android/panorama/d;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/android/panorama/d;->bfO(Lcom/android/panorama/d;I)V

    .line 113
    return-void
.end method
