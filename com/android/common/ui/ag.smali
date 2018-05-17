.class Lcom/android/common/ui/ag;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic As:Lcom/android/common/ui/MultiFunctionImageView;


# direct methods
.method private constructor <init>(Lcom/android/common/ui/MultiFunctionImageView;)V
    .registers 2

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/common/ui/ag;->As:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/common/ui/MultiFunctionImageView;Lcom/android/common/ui/ag;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/common/ui/ag;-><init>(Lcom/android/common/ui/MultiFunctionImageView;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .prologue
    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    .line 363
    :goto_5
    return-void

    .line 366
    :pswitch_6
    iget-object v0, p0, Lcom/android/common/ui/ag;->As:Lcom/android/common/ui/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/MultiFunctionImageView;->invalidate()V

    goto :goto_5

    .line 364
    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
