.class final Lcom/android/multiexposure/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic ary:Lcom/android/multiexposure/o;


# direct methods
.method constructor <init>(Lcom/android/multiexposure/o;)V
    .registers 2

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/multiexposure/w;->ary:Lcom/android/multiexposure/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 163
    const-string/jumbo v0, "MultiExposureFragment"

    const-string/jumbo v1, "mSeekbarHandler onClick"

    invoke-static {v0, v1}, Lcom/a/a;->bvv(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/android/multiexposure/w;->ary:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDk(Lcom/android/multiexposure/o;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 165
    iget-object v0, p0, Lcom/android/multiexposure/w;->ary:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDx(Lcom/android/multiexposure/o;)V

    .line 162
    :goto_16
    return-void

    .line 167
    :cond_17
    iget-object v0, p0, Lcom/android/multiexposure/w;->ary:Lcom/android/multiexposure/o;

    invoke-static {v0}, Lcom/android/multiexposure/o;->aDA(Lcom/android/multiexposure/o;)V

    goto :goto_16
.end method
